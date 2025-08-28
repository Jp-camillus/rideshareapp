import 'dart:io';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/screen/auth/signup/review_picture_screen.dart';
import 'package:rideshareapp/screen/kyc/driver_licenceidready.dart';

class LicenseScan extends StatefulWidget {
  const LicenseScan({super.key});

  @override
  State<LicenseScan> createState() => _LicenseScanState();
}

class _LicenseScanState extends State<LicenseScan> {
  bool captured = true;
  CameraController? _controller;
  List<CameraDescription>? _cameras;
  int _selectedCameraIdx = 0; // start with back camera
  String imagepath = '';

  @override
  void initState() {
    super.initState();
    _initCameras();
  }

  Future<void> _initCameras() async {
    try {
      _cameras = await availableCameras();

      if (_cameras != null && _cameras!.isNotEmpty) {
        _onNewCameraSelected(_cameras![_selectedCameraIdx]);
      }
    } catch (e) {
      debugPrint("Error loading cameras: $e");
    }
  }

  Future<void> _onNewCameraSelected(CameraDescription cameraDescription) async {
    final previousController = _controller;
    // dispose previous
    if (previousController != null) {
      await previousController.dispose();
    }

    final CameraController cameraController = CameraController(
      cameraDescription,
      ResolutionPreset.high,
      enableAudio: false,
    );

    _controller = cameraController;

    try {
      await cameraController.initialize();
    } on CameraException catch (e) {
      debugPrint('Camera init error $e');
      return;
    }

    if (mounted) {
      setState(() {});
    }
  }

  void _onSwitchCamera() {
    if (_cameras == null || _cameras!.length < 2) {
      debugPrint("No secondary camera found");
      return;
    }

    _selectedCameraIdx = (_selectedCameraIdx + 1) % _cameras!.length;
    _onNewCameraSelected(_cameras![_selectedCameraIdx]);
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_controller == null || !_controller!.value.isInitialized) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(child: CameraPreview(_controller!)),

          /// Top bar
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black45,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  const Text(
                    "Help",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),

          /// Face guide
          Align(
            alignment: Alignment.center,
            child: Container(
              height: h * 0.32,
              width: w * 0.8,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 3),
              ),
              child: captured
                  ? null
                  : Center(
                      child: Container(
                        height: h * 0.28,
                        width: w * 0.7,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: FileImage(File(imagepath)),
                          ),
                        ),
                        child: Center(
                          child: Image(image: AssetImage(Appimage.check)),
                        ),
                      ),
                    ),
            ),
          ),

          /// Instructions
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 140),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    "Place it Properly",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Place your ID on a flat surface, then\ntake a clear photo from above",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
          ),

          /// Bottom buttons
          captured
              ? Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(image: AssetImage(Appimage.gallary)),
                        const SizedBox(width: 50),

                        /// Capture
                        GestureDetector(
                          onTap: () async {
                            try {
                              final image = await _controller!.takePicture();
                              setState(() {
                                captured = !captured;
                                imagepath = image.path;
                              });

                              if (!mounted) return;
                            } catch (e) {
                              debugPrint("Error taking picture: $e");
                            }
                          },
                          child: Image(image: AssetImage(Appimage.capture)),
                        ),

                        const SizedBox(width: 50),

                        /// Switch camera
                        GestureDetector(
                          onTap: _onSwitchCamera,
                          child: Image(image: AssetImage(Appimage.bulb)),
                        ),
                      ],
                    ),
                  ),
                )
              : Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              captured = !captured;
                            });
                          },
                          child: const Image(
                            image: AssetImage(Appimage.cameracancel),
                          ),
                        ),
                        const SizedBox(width: 50),

                        const SizedBox(width: 50),

                        /// Switch camera
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DriverLicenceidready(imagePath: imagepath),
                              ),
                            );
                          },
                          child: Image(image: AssetImage(Appimage.idgood)),
                        ),
                      ],
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}

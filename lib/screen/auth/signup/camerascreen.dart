import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:rideshareapp/screen/auth/signup/review_picture_screen.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController? _controller;
  List<CameraDescription>? _cameras;
  int _selectedCameraIdx = 0; // start with back camera

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
              height: 300,
              width: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white, width: 3),
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
                    "Center your face",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Point your face right at the box\nthen take a photo",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
          ),

          /// Bottom buttons
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.photo, color: Colors.white, size: 32),
                  const SizedBox(width: 50),

                  /// Capture
                  GestureDetector(
                    onTap: () async {
                      try {
                        final image = await _controller!.takePicture();
                        Navigator.pop(context, image.path);

                        if (!mounted) return;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ReviewPictureScreen(imagePath: image.path),
                          ),
                        );
                      } catch (e) {
                        debugPrint("Error taking picture: $e");
                      }
                    },
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 6),
                        color: Colors.white,
                      ),
                    ),
                  ),

                  const SizedBox(width: 50),

                  /// Switch camera
                  GestureDetector(
                    onTap: _onSwitchCamera,
                    child: const Icon(
                      Icons.switch_camera,
                      color: Colors.white,
                      size: 32,
                    ),
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

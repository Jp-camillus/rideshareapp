import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/constant/appimage.dart';
import 'package:rideshareapp/theme/app_theme.dart';
import 'package:rideshareapp/widget/custombuttom.dart';
import 'package:rideshareapp/widget/customtextfield.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Addbankdetails extends StatefulWidget {
  const Addbankdetails({Key? key}) : super(key: key);

  @override
  State<Addbankdetails> createState() => _AddbankdetailsState();
}

class _AddbankdetailsState extends State<Addbankdetails> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _accountname = TextEditingController();
  final TextEditingController _banknumber = TextEditingController();
  final TextEditingController bankname = TextEditingController();

  bool rememberCard = false;

  bool get _isFormValid {
    return _accountname.text.isNotEmpty &&
        _banknumber.text.isNotEmpty &&
        bankname.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: _formKey,
            onChanged: () => setState(() {}),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: CircleAvatar(
                        backgroundColor: AppColors.cardLight,
                        child: Icon(
                          Icons.arrow_back,
                          color: Appcolor.primarrylight,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    // spacer so title sits left below (we mirror screenshot where title is left aligned)
                    const Spacer(),
                    Text('Cancel', style: TextStyle(color: AppColors.error)),
                    // _notificationButton(hasDot: true, onTap: () {}),
                  ],
                ),

                Spacewidgetheight(space: 30),

                // Title (left aligned)
                Row(
                  children: [
                    Text(
                      'Add New Payment Method',
                      style: AppThemes.bodySmall.copyWith(
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                Row(
                  children: [
                    const Text(
                      'Enter your bank account details you want to link',
                      style: TextStyle(
                        fontSize: 15,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),

                Container(
                  width: 392.32421875,
                  height: 489.5971374511719,
                  decoration: BoxDecoration(
                    color: AppColors.textWhite,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),

                        // Card Number
                        const Text(
                          'Bank Name',
                          style: TextStyle(
                            fontSize: 15,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        Spacewidgetheight(space: 10),

                        Container(
                          height: 46.05763626098633,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: TextFormField(
                            controller: bankname,

                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.account_balance_outlined,
                                size: 20,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.borderLight,
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              contentPadding: EdgeInsets.all(10),
                              hint: Text(
                                'Bank Name',
                                style: TextStyle(
                                  color: AppColors.textSecondary,
                                ),
                              ),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.borderLight,
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              fillColor: Color.fromRGBO(243, 244, 246, 1),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),

                        const Text(
                          'Account Number',
                          style: TextStyle(
                            fontSize: 15,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        Spacewidgetheight(space: 10),

                        Container(
                          height: 46.05763626098633,
                          // width: 353.6704406738281,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: TextFormField(
                            controller: _banknumber,
                            decoration: InputDecoration(
                              prefixIcon: const Image(
                                image: AssetImage(Appimage.no),
                              ),
                              // hintText: 'Full Name',
                              hint: Text(
                                'Account Number',
                                style: TextStyle(
                                  color: AppColors.textSecondary,
                                ),
                              ),
                              fillColor: Color.fromRGBO(243, 244, 246, 1),

                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.borderLight,
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              filled: true,

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),

                        const Text(
                          'Account Name',
                          style: TextStyle(
                            fontSize: 15,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        Spacewidgetheight(space: 10),

                        Container(
                          height: 46.05763626098633,
                          // width: 353.6704406738281,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: TextFormField(
                            controller: _accountname,
                            decoration: InputDecoration(
                              prefixIcon: const Image(
                                image: AssetImage(Appimage.person),
                              ),
                              // hintText: 'Full Name',
                              hint: Text(
                                'Account Name',
                                style: TextStyle(
                                  color: AppColors.textSecondary,
                                ),
                              ),
                              fillColor: Color.fromRGBO(243, 244, 246, 1),

                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.borderLight,
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              filled: true,

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),

                        const SizedBox(height: 30),
                        Divider(
                          color: Colors.grey,
                          thickness: 0.21,
                          height: 0.1,
                        ),
                        const SizedBox(height: 30),

                        // Save button
                        Center(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                gradient:
                                    _isFormValid
                                        ? AppColors.buttongradient
                                        : LinearGradient(
                                          colors: [Colors.grey, Colors.grey],
                                        ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 45,
                              alignment: Alignment.center,
                              width: 271,
                              child: Text(
                                'Save',
                                style: TextStyle(
                                  color: AppColors.textWhite,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

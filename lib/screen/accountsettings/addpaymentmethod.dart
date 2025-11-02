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

class AddPaymentMethodScreen extends StatefulWidget {
  const AddPaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<AddPaymentMethodScreen> createState() => _AddPaymentMethodScreenState();
}

class _AddPaymentMethodScreenState extends State<AddPaymentMethodScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _cardHolderController = TextEditingController();
  final TextEditingController _expiryController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();

  bool rememberCard = false;

  bool get _isFormValid {
    return _cardNumberController.text.isNotEmpty &&
        _cardHolderController.text.isNotEmpty &&
        _expiryController.text.isNotEmpty &&
        _cvvController.text.isNotEmpty;
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
                      'Enter your card details to pay',
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
                          'Card Number',
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
                            controller: _cardNumberController,
                            keyboardType: TextInputType.number,

                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.borderLight,
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              contentPadding: EdgeInsets.all(10),
                              hint: Text(
                                '0000 0000 0000 0000',
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
                              suffixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Image(image: AssetImage(Appimage.bankcard)),
                                  Spacewidgetwidth(space: 10),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),

                        // Card Holder Name
                        // Customtextfield(iwantfronticon: iwantfronticon, iwantbothicon: iwantbothicon, tittle: tittle, prefixicon: prefixicon, suffixicon: suffixicon, obscure: obscure)
                        const Text(
                          'Card Holder Name',
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
                            controller: _cardHolderController,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.person_outline),
                              // hintText: 'Full Name',
                              hint: Text(
                                'Full Name',
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

                        // Expiry and CVV Row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Valid Till',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                                Spacewidgetheight(space: 10),
                                Container(
                                  height: 46.05763626098633,
                                  width: w * 0.39,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                      color: Colors.grey.shade300,
                                    ),
                                  ),
                                  child: TextFormField(
                                    controller: _expiryController,
                                    keyboardType: TextInputType.datetime,
                                    decoration: InputDecoration(
                                      fillColor: Color.fromRGBO(
                                        243,
                                        244,
                                        246,
                                        1,
                                      ),

                                      prefixIcon: Image(
                                        image: AssetImage(Appimage.mastercard),
                                      ),
                                      hint: Text(
                                        'MM/YY',
                                        style: TextStyle(
                                          color: AppColors.textSecondary,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: AppColors.borderLight,
                                        ),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      filled: true,

                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: AppColors.borderLight,
                                        ),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'CVV',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                                Spacewidgetheight(space: 10),

                                Container(
                                  height: 46.05763626098633,
                                  width: w * 0.39,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                      color: Colors.grey.shade300,
                                    ),
                                  ),
                                  child: TextFormField(
                                    controller: _cvvController,
                                    keyboardType: TextInputType.number,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Color.fromRGBO(
                                        243,
                                        244,
                                        246,
                                        1,
                                      ),

                                      prefixIcon: Image(
                                        image: AssetImage(Appimage.mastercard),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: AppColors.borderLight,
                                        ),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      hint: Text(
                                        '123',
                                        style: TextStyle(
                                          color: AppColors.textSecondary,
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(16),
                                        borderSide: BorderSide(
                                          color: AppColors.borderLight,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),

                        // Remember switch
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Remember this card next time',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                              ),
                            ),
                            Switch(
                              value: rememberCard,
                              activeTrackColor: AppColors.colorBlue,
                              activeColor: AppColors.textWhite,
                              onChanged:
                                  (value) =>
                                      setState(() => rememberCard = value),
                            ),
                          ],
                        ),
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

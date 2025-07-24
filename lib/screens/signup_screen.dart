import 'package:auth_iti/custom/custom_text.dart';
import 'package:auth_iti/custom/custom_text_field.dart';
import 'package:auth_iti/screens/otp_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  static const String routeName = "login_screen";
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: FractionallySizedBox(
              heightFactor: 0.7,
              widthFactor: 1.0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF007E9F),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'اهلا بك من فضلك قم بعمل حساب خاص بك',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 25),
                      CustomTextField(hintWord: 'البريد الالكتروني',preIconData: Icons.email,),
                      const SizedBox(height: 15),
                      CustomTextField(hintWord: 'رقم الهاتف',preIconData: Icons.person_outline,),
                      const SizedBox(height: 15),
                      CustomTextField(hintWord: 'كلمة المرور', preIconData: Icons.lock_outline,
                        suffIconData: Icons.visibility_outlined,isObsecured: true,),
                      const SizedBox(height: 10),
                      CustomTextField(hintWord: ' تأكيد كلمة المرور', preIconData: Icons.lock_outline,
                        suffIconData: Icons.visibility_outlined,isObsecured: true,),


                      const SizedBox(height: 25),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 3,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, OtpScreen.routeName);
                          },
                          child: const Text(
                            'تسجيل الدخول',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          CustomText(text: "   لديك حساب ؟  قم بعمل تسجيل دخول ", color: Colors.white,),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

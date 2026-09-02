import 'package:clinic_go/core/widgets/glass_background.dart';
import 'package:clinic_go/core/widgets/glass_glow_button.dart';
import 'package:clinic_go/core/widgets/myCustomFormField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController userController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController ageController = TextEditingController();

  TextEditingController genderController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController cityController = TextEditingController();


  bool obsecureText = true;

  @override
  Widget build(BuildContext context) {

    return myGlassBackground(
      context: context,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 70.h,),
              Center(
                child: Text(
                  'SIGN UP',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ),
              SizedBox(height: 100.h,),
              Center(
                child: Column(children: [
                  /////////////////////////////////// NAME
                  CustomTextField(
                      controller: userController,
                      labelText: 'Name',
                      hintText: 'Enter Your Name',
                      suffixIcon: Icon(Icons.person)),
                  SizedBox(height: 15.h),
                  /////////////////////////////////// EMAIL
                  CustomTextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      labelText: 'Email',
                      hintText: 'Enter Your Email',
                      suffixIcon: Icon(Icons.email_rounded),
                  ),
                  SizedBox(height: 15.h),
                  /////////////////////////////////// PASSWORD
                  CustomTextField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      labelText:  'Password',
                      hintText: 'Enter Your Password',
                      obscureText: obsecureText,
                      suffixIcon: GestureDetector(
                        onTap: (){
                          setState(() {
                          obsecureText = !obsecureText;
                          });
                        },
                        child: Icon(
                          obsecureText? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                  ),
                  SizedBox(height: 15.h),
                  /////////////////////////////////// AGE & GENDER
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 143.w,
                        child: CustomTextField(
                            controller: ageController,
                            labelText: 'Age',
                            hintText: 'Age',
                        ),
                      ),
                      SizedBox(width: 15.w),
                      Container(
                        width: 143.w,
                        child: CustomTextField(
                            controller: genderController,
                            labelText: 'Gender',
                            hintText: 'Gender',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  /////////////////////////////////// PHONE
                  CustomTextField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      labelText: 'Phone',
                      hintText: 'Enter Your Phone Number',
                      suffixIcon: Icon(Icons.phone),
                  ),
                  SizedBox(height: 15.h),
                  /////////////////////////////////// CITY
                  CustomTextField(
                      controller: cityController,
                      labelText: 'City',
                      hintText: 'Enter Your City',
                  ),
                  SizedBox(height: 30.h),
                  /////////////////////////////////// SIGN UP
                  GlassGlowButton(text: 'SIGN UP', onPressed: (){})
                ],),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

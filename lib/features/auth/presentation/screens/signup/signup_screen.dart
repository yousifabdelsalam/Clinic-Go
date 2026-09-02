import 'package:clinic_go/core/widgets/glass_background.dart';
import 'package:clinic_go/core/widgets/glass_glow_button.dart';
import 'package:clinic_go/core/widgets/myCustomFormField.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  TextEditingController userController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return myGlassBackground(
      context: context,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 70,),
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
              SizedBox(height: 100,),
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
                        width: 143,
                        child: TextFormField(
                          controller: ageController,
                          decoration: InputDecoration(
                            labelText: 'Age',
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: 'Enter Your Age',
                            hintStyle: const TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 1.5,
                              ),
                            ),

                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Colors.blueAccent, // Active border color
                                width: 2.5, // Slightly thicker when active
                              ),
                            ),

                            // 3. Error state border (when validation fails)
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 1.5,
                              ),
                            ),

                            // 4. Focused Error state border (active typing while error is shown)
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 2.5,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        width: 143,
                        child: TextFormField(
                          controller: genderController,
                          decoration: InputDecoration(
                            labelText: 'Gender',
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: 'Enter Your Gender',
                            hintStyle: const TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 1.5,
                              ),
                            ),

                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Colors.blueAccent, // Active border color
                                width: 2.5, // Slightly thicker when active
                              ),
                            ),

                            // 3. Error state border (when validation fails)
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 1.5,
                              ),
                            ),

                            // 4. Focused Error state border (active typing while error is shown)
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 2.5,
                              ),
                            ),
                          ),
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

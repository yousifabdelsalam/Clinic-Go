import 'package:clinic_go/core/widgets/glass_background.dart';
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
                  CustomTextField(controller: userController, labelText: 'Name'),
                  SizedBox(height: 15),
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.white),
                        hintText: 'Enter Your Email',
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
                  SizedBox(height: 15),
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.white),
                        hintText: 'Enter Your Password',
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
                  SizedBox(height: 15),
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
                  SizedBox(height: 15),
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: phoneController,
                      decoration: InputDecoration(
                        labelText: 'Phone',
                        labelStyle: TextStyle(color: Colors.white),
                        hintText: 'Enter Your Phone',
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
                  SizedBox(height: 15),
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: cityController,
                      decoration: InputDecoration(
                        labelText: 'City',
                        labelStyle: TextStyle(color: Colors.white),
                        hintText: 'Enter Your City',
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
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: const Size(250, 50),
                      backgroundColor: Colors.blueAccent,
                    ),
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

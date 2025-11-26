import 'package:ajs_stock2/screen/login_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _namaController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 240, 213, 1.0),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50),
                alignment: Alignment.center,
                //fungsi pilih foto
                child: Image.asset(
                  'assets/logo CV AJS.jpg',
                  width: 200,
                  height: 200,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Register",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Righteous',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(padding: const EdgeInsets.all(5.0),
                        child: TextFormField(
                          controller: _namaController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.black),
                            ),
                            labelText: 'Username',
                            labelStyle: TextStyle(color: Colors.black),
                            hintText: 'Buat username akun anda',
                             hintStyle: TextStyle(color: Colors.black),
                             focusedBorder: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.black),
                             ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _namaController.clear();
                                });
                              }, 
                            icon: 
                            const Icon(Icons.cancel_outlined),
                            color: Colors.black,
                            ),
                          ),
                      ),
                      ),
                      Padding(padding: const EdgeInsets.all(5.0),
                        child: TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.black),
                            ),
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.black),
                            hintText: 'Masukkan email untuk login akun anda',
                             hintStyle: TextStyle(color: Colors.black),
                             focusedBorder: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.black),
                             ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _emailController.clear();
                                });
                              }, 
                            icon: 
                            const Icon(Icons.cancel_outlined),
                            color: Colors.black,
                            ),
                          ),
                      ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TextFormField(
                          controller: _passwordController,
                         obscureText: !_isPasswordVisible,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                             borderSide: BorderSide(color: Colors.black),
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.black),
                            hintText: 'Buat password akun anda',
                            hintStyle: TextStyle(color: Colors.black),
                            suffixIcon: IconButton(
                              icon: Icon(_isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  _isPasswordVisible = !_isPasswordVisible;
                                });
                              },
                              color: Colors.black,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            )
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(
                                text: 'Sudah punya akun? ',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Righteous',
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Login',
                                    style: const TextStyle(
                                      fontFamily: 'Righteous',
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,    
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                       Navigator.of(context).pushReplacement(MaterialPageRoute(builder :(context) => LoginScreen(),
                                       ),
                                       );
                                      },
                                  ),
                                ],
                              ),
                              ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ),
              ),
              const SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  ElevatedButton(
                    onPressed: () {
                     
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(193, 18, 31, 1.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),

                      ),
                     fixedSize: Size(225, 40),
                    ),
                    child: Text('Register', style: TextStyle(
                      fontFamily: 'Righteous',
                      color: Colors.white, ),
                    ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
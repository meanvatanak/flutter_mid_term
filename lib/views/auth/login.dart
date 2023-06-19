import 'package:flutter/material.dart';

import '../../utilities/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  late final GlobalKey<FormState> _formKey;

  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: blackColor,
          ),
        ),
      ),
      body: Form(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                // height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                // height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Sign in with your email and \npassword",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomTextField(
                  controller: _emailController,
                  hintText: 'Email',
                  labelText: 'Enter Your Email',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomTextField(
                  controller: _passwordController,
                  hintText: 'Password',
                  labelText: 'Enter Your Password',
                  prefixIcon: Icon(Icons.password),
                  isPassword: true,
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // final route = MaterialPageRoute(
                      //   builder: (context) => Homepage(
                      //     email: _emailController.text,
                      //     password: _passwordController.text,
                      //   ),
                      // );
                      Navigator.pushNamed(context, '/main_page');
                    },
                    icon: Icon(Icons.login),
                    label: Text('Login'),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 18,
                    color: darkGreyColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    this.controller,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.isPassword = false,
  }) : super(key: key);

  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final Icon? prefixIcon;
  final bool isPassword;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _hidePassword;

  @override
  void initState() {
    super.initState();
    _hidePassword = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      // obscureText: widget.isPassword ? true : false,
      obscureText: _hidePassword,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: widget.labelText,
        hintText: widget.labelText,
        // prefixIcon: Icon(Icons.password),
        prefixIcon: widget.prefixIcon,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
            width: 2.0,
          ),
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _hidePassword = !_hidePassword;
                  });
                },
                icon: Icon(
                  _hidePassword ? Icons.visibility : Icons.visibility_off,
                ),
              )
            : null,
      ),
    );
  }
}

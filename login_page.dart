import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();
bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _page(),
    );
  }
  Widget _page(){
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sigmart",
            style: TextStyle(
              fontSize: 35,
            ),),
            const SizedBox(height: 30,),
            _inputField("Username", usernameController),
            const SizedBox(height: 20,),
            _inputField("Password", passwordController, isPassword: true),
            const SizedBox(height: 20,),
            _loginButton(),
          ],
        ),
      ),
    );
  }

  Widget _inputField(String hintText, TextEditingController controller, 
  {isPassword = false}){
    var border =OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide: const BorderSide(color : Colors.black)
    );
    return TextField(
      style: const TextStyle(color: Colors.black),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black),
        enabledBorder: border,
        focusedBorder: border,
        suffixIcon: isPassword
            ? IconButton(
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
              )
            : null,
      ),
      obscureText: isPassword ? !_isPasswordVisible : false,
    );
  }

  Widget _loginButton(){
    return ElevatedButton(
      onPressed: () {
        String username = usernameController.text;
        String password = passwordController.text;

        if (username == "Indra" && password == "152209") {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Username atau Password salah")),
        );
      }
      },
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor : Colors.black,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 15)
        ),
      child: const SizedBox(
        width: double.infinity,
        child: Text("Sign In",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
        ),
        )),
      );
  }
}
import 'package:flutter/material.dart';

import '../BottomNavigation/BottomNavBar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(18.0),
        margin: EdgeInsets.only(top:20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                "Log In Form",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 18,
              ),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(),
                  ),
                  labelText: "Email",
                ),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value!)) {
                    return 'Please enter valid email (must contain @ & .com)';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 18,
              ),
              TextFormField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter User Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(),
                    ),
                    labelText: "Password",
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                            .hasMatch(value!)) {
                      return 'Please enter valid Password (must contain atleast one upper & lowwer case, digit, & special characters & atleast 8 char long)';
                    }
                    return null;
                  }),
              SizedBox(
                height: 18,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Loading....')),
                      );
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavScreen(),
                        ),
                      );

                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Please enter all fields correctly')),
                      );
                    }
                  },
                  child: Text('Log In')),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Create an account?'),
                  TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => FormScreen(),
                        //   ),
                        // );
                      },
                      child: Text('Swipe Right for Sign Up'))
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}















// import 'package:flutter/material.dart';
//
// import '../GridViewBuilder/calculator.dart';
// import '../GridViewBuilder/prac.dart';
// import 'form.dart';
//
//
// class LoginScreen extends StatefulWidget {
//    const LoginScreen({Key? key}) : super(key: key);
//
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Log In Form"),
//         ),
//         body: Padding(
//
//           padding: const EdgeInsets.all(8.0),
//           child: Form(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//              children: [
//
//              ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

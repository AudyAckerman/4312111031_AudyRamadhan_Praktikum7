import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// TOAST
// void main() {runApp(const MyApp());}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: testtoast(),
//     );
//   }
// }

// class testtoast extends StatefulWidget {
//   const testtoast({super.key});

//   @override
//   State<testtoast> createState() => _testtoastState();
// }

// class _testtoastState extends State<testtoast> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Toast"),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           ElevatedButton(
//             onPressed: () {
//               Fluttertoast.showToast(
//                 msg: "THE toast message",
//                 toastLength: Toast.LENGTH_SHORT,
//                 timeInSecForIosWeb: 1,
//                 backgroundColor: Colors.black,
//                 textColor: Colors.white,
//                 fontSize: 16.0,
//               );
//             },
//             child: const Text(
//               'Show Toast Message',
//               style: TextStyle(fontSize: 24),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// SNACKBAR
// void main() => runApp(const SnackBarDemo());

// class SnackBarDemo extends StatelessWidget {
//   const SnackBarDemo({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'SnackBar Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('SnackBar Demo'),
//         ),
//         body: const SnackBarPage(),
//       ),
//     );
//   }
// }

// class SnackBarPage extends StatelessWidget {
//   const SnackBarPage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         onPressed: () {
//           final snackBar = SnackBar(
//             content: const Text('Yay! A SnackBar!'),
//             action: SnackBarAction(
//               label: 'Undo',
//               onPressed: () {},
//             ),
//           );
//           ScaffoldMessenger.of(context).showSnackBar(snackBar);
//         },
//         child: const Text('Show SnackBar'),
//       ),
//     );
//   }
// }

// ALERT
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: Text("Tutorial Membuat Alert")),
//         body: LoginPage(),
//       ),
//     );
//   }
// }

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   TextEditingController _emailController = TextEditingController();
//   TextEditingController _passwordController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextFormField(
//               controller: _emailController,
//               maxLines: 1,
//               keyboardType: TextInputType.emailAddress,
//               decoration: InputDecoration(
//                 labelText: "Email",
//                 hintText: "Masukkan Email",
//                 prefixIcon: Icon(Icons.mail),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             TextFormField(
//               controller: _passwordController,
//               maxLines: 1,
//               keyboardType: TextInputType.visiblePassword,
//               decoration: InputDecoration(
//                 labelText: "Password",
//                 hintText: "Masukkan Password",
//                 prefixIcon: Icon(Icons.lock),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//               ),
//             ),
//             SizedBox(height: 25),
//             ElevatedButton(
//                 onPressed: () => submit(
//                     context, _emailController.text, _passwordController.text),
//                 child: Text("Login"))
//           ],
//         ),
//       ),
//     );
//   }
// }

// void submit(BuildContext context, String email, String password) {
//   if (email.isEmpty || password.isEmpty) {
//     final snackBar = SnackBar(
//       duration: const Duration(seconds: 5),
//       content: Text("Email dan password harus diisi"),
//       backgroundColor: Colors.red,
//     );
//     ScaffoldMessenger.of(context).showSnackBar(snackBar);
//     return;
//   }
//   AlertDialog alert = AlertDialog(
//     title: Text("Login Berhasil"),
//     content: Container(
//       child: Text("Selamat Anda Berhasil login"),
//     ),
//     actions: [
//       TextButton(
//         child: Text('Ok'),
//         onPressed: () => Navigator.of(context).pop(),
//       ),
//     ],
//   );
//   showDialog(context: context, builder: (context) => alert);
//   return;
// }

// RETRIEVE DATA
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Retrieve Text Input',
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});
  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final myController = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Retrieve Text Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: myController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text(myController.text),
              );
            },
          );
        },
        tooltip: 'Show me the value!',
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HelloScreen extends StatelessWidget {
  const HelloScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(onPressed: (){
            FirebaseAuth.instance.signOut();
          }, icon: const Icon(Icons.login_outlined,color: Colors.white,))
        ],
        title: const Text("Hello Screen"),
      ),
    );
  }
}

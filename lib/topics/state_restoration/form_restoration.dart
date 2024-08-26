import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:senior/topics/encrypt/decrypt/encrypt.dart';
import 'package:senior/topics/mixins/mix.dart';

const platform = MethodChannel('com.kay.senior');


class PageWithRestoration extends StatefulWidget {
  const PageWithRestoration({
    super.key,
  });

  @override
  State<PageWithRestoration> createState() => _PageWithRestorationState();
}

class _PageWithRestorationState extends State<PageWithRestoration>
    with RestorationMixin {
  final RestorableTextEditingController _name =
      RestorableTextEditingController();

  final RestorableTextEditingController _email =
      RestorableTextEditingController();

  final RestorableTextEditingController _phone =
      RestorableTextEditingController();

  final RestorableTextEditingController _password =
      RestorableTextEditingController();
      
Future<void> _getBatteryLevel() async {
  try {
    final int result = await platform.invokeMethod('getBatteryLevel');
    print('Battery level: $result%.');
  } on PlatformException catch (e) {
    print("Failed to get battery level: '${e.message}'.");
  }
}
            Animal animal = Animal(name: 'bired');

          final  double _count = 0;
          double get counter => _count;

  @override
  Widget build(BuildContext context) {
    log('THIS IS A LOG!!!!!!');
    // Generate a key
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("With Restoration Page"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              OutlinedButton.icon(onPressed: (){
           
          animal.canReallyFly();
          animal.canJump();
         
              }, label: const Icon(Icons.abc)),
              const Text(
                'Register Screen',
                
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _name.value,
                decoration: const InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  OutlinedButton(onPressed: (){
                EncryptData.encrypter("Kelvin1234");
                  }, child: const Text("Encrpt")),
                OutlinedButton(onPressed: (){
                 EncryptData.decrypter("Kelvin1234");

                  }, child: const Text("Decrpt")),
                
                ],
              ),
              TextField(
                controller: _email.value,
                decoration: const InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _phone.value,
                decoration: const InputDecoration(
                  hintText: "Phone",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _password.value,
                decoration: const InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  String? get restorationId => "restore_text_field";

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_name, 'name');
    registerForRestoration(_email, 'email');
    registerForRestoration(_phone, 'phone');
    registerForRestoration(_password, 'password');
  }
}
import 'package:flutter/material.dart';
import 'package:myapp/pages/learn_flutter.dart';

class HomePage extends StatefulWidget {
  // ignore: use_super_parameters
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _homeState createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const learnFlutter();
                },
              ),
            );
          },
          child: const Text('Learn Flutter')),
    );
  }
}

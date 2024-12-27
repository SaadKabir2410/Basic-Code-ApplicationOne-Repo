import 'package:flutter/material.dart';

const int itemCount = 20;

class ProfilePage extends StatefulWidget {
  // ignore: use_super_parameters
  const ProfilePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("item ${(index + 1)}"),
            leading: const Icon(Icons.person),
            trailing: const Icon(Icons.select_all),
            onTap: () {
              debugPrint("item ${(index + 1)} selected");
            },
          );
        });
  }
}

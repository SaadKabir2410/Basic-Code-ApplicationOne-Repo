import 'package:flutter/material.dart';

// ignore: camel_case_types
class learnFlutter extends StatefulWidget {
  // ignore: use_super_parameters
  const learnFlutter({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _learnFlutterState createState() => _learnFlutterState();
}

// ignore: camel_case_types
class _learnFlutterState extends State<learnFlutter> {
  get image => null;
  bool isSwitched = false;
  bool? isCheckBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),

        actions: [
          IconButton(onPressed:(){
            debugPrint("Action");},
        icon:const Icon(Icons.info_outlined),
          )
        ],
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/download.jpeg"),
            const SizedBox(height: 10),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  "This is Color widget",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: isSwitched
                      ? const Color.fromARGB(255, 8, 51, 86)
                      : Colors.green),
              onPressed: () {
                debugPrint("elevated button");
              },
              child: const Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint("Outlined button");
              },
              child: const Text("Outlined Button"),
            ),
            TextButton(
              onPressed: () {
                debugPrint("Text button");
              },
              child: const Text("Text Button"),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("This is the row");
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text("Row Widget"),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
            Switch(
                value: isSwitched,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitched = newBool;
                  });
                }),
            Checkbox(
                value: isCheckBox,
                onChanged: (bool? newBool) {
                  setState(() {
                    isCheckBox = newBool;
                  });
                }),
            Image.network(
                "https://media.nature.com/lw767/magazine-assets/d41586-024-03075-0/d41586-024-03075-0_27692010.jpg")
          ],
        ),
      ),
    );
  }
  
  
}

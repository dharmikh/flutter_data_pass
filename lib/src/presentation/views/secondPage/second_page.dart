import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/src/constant/strings.dart';
import 'package:my_flutter_app/src/controller/homeController/home_controller.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

HomeController homeController = Get.put(HomeController());
TextEditingController secondPage = TextEditingController();

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringData.secondPage),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: secondPage,
            ),
          ),
          InkWell(
            onTap: () {
              // Pass the entered data back to the first page
              Navigator.pop(context, secondPage.text);
            },
            child: Text(StringData.move1),
          )
        ],
      ),
    );
  }
}

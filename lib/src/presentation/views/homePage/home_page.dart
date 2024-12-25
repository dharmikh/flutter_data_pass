import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/src/constant/strings.dart';
import 'package:my_flutter_app/src/controller/homeController/home_controller.dart';
import 'package:my_flutter_app/src/presentation/views/secondPage/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    TextEditingController firstPage = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(StringData.firstPage),
      ),
      body: GetBuilder<HomeController>(
        builder: (controller) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: firstPage,
                ),
              ),
              InkWell(
                onTap: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(),
                    ),
                  );

                  // If a result is returned, update the first page's TextFormField
                  if (result != null) {
                    firstPage.text = result;
                  }
                },
                //Text(StringData.move),
              )
              // ElevatedButton(
              //     onPressed: () {
              //       controller.displayData();
              //     },
              //     child: Text(StringData.showData)),
              // Text(
              //   controller.displayText,
              //   style: TextStyle(fontSize: 20),
              // ),
            ],
          );
        },
      ),
    );
  }
}

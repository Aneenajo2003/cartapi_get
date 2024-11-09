import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'apiservice.dart';
import 'cartcntrl.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
   Home({super.key});
  Apiservice apiservice = Apiservice();

  @override
  Widget build(BuildContext context) {
    final Cartcntrl c = Get.put(Cartcntrl());
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        centerTitle: true,
      ),
      body:  Obx(() {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,

          ),
          itemCount: c.plist.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Cart id: ${c.plist[index].id}"),
                  Text("Userid: ${c.plist[index].userId}"),
                ],
              ),
            );
          },
        );
      }),
    );
  }
}



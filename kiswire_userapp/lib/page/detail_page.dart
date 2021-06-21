import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var id = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Kiswire 회원상세보기"),
      ),
      body: Center(
        child: Text("Detail Page $id"),
      ),
    );
  }
}

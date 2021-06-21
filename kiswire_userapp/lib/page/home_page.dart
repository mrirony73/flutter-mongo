import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kiswire_userapp/controller/user_controller.dart';
import 'package:kiswire_userapp/domain/user/user.dart';

import 'detail_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final UserController u = Get.put(UserController());

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kiswire 회원정보"),
      ),
      body: FutureBuilder<List<User>>(
        future: u.findAll(), //findall을 호출하여 기다린다.
        builder: (context, snapshot) {
          // snapshot => findall의 응답 값
          if (snapshot.hasData) {
            return ListView.separated(
              itemCount: snapshot.data!.length,
              separatorBuilder: (context, index) => Divider(),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${snapshot.data![index].id}"),
                  subtitle: Text("${snapshot.data![index].plcR0001Timestamp}"),
                  selected: index == _selectedIndex,
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                    print("클릭됨 ${snapshot.data![index].id}");
                    Get.to(() => DetailPage(),
                        arguments: snapshot.data![index].id);
                  },
                  //leading: Icon(Icons.person),
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

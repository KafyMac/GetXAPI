import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapi/api_details_list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JSON API fetching using GET-X'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  Get.to(() => APIDetailListScreen());
                },
                child: Text("Fetch Data"),
              )
            ]),
      ),
    );
  }
}

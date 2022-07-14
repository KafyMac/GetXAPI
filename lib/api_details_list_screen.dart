import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:getxapi/data_controller.dart';
import 'package:get/get.dart';

class APIDetailListScreen extends StatefulWidget {
  const APIDetailListScreen({Key? key}) : super(key: key);

  @override
  State<APIDetailListScreen> createState() => _APIDetailListScreenState();
}

DataController dataController = Get.put(DataController());

class _APIDetailListScreenState extends State<APIDetailListScreen> {
  @override
  void initState() {
    print("calling init");
    dataController.getUserInformationFromApi().then((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => dataController.isDataLoading.value
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemBuilder: (ctx, i) {
                String title = '';

                try {
                  title = dataController.user_list![i].title;
                } catch (e) {
                  title = '';
                }

                return ListTile(
                  title: Text(title),
                );
              },
              itemCount: dataController.user_list?.length ?? 0,
            )),
    );
  }
}


// class TodoScreen extends GetView<DataController> {
//   const TodoScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {

//    return  Scaffold(
//       body: Obx(() => dataController.isDataLoading.value
//           ? Center(
//               child: CircularProgressIndicator(),
//             )
//           : ListView.builder(
//               itemBuilder: (ctx, i) {
//                 String title = '';

//                 try {
//                   title = dataController.user_list![i].title;
//                 } catch (e) {
//                   title = '';
//                 }

//                 return ListTile(
//                   title: Text(title),
//                 );
//               },
//               itemCount: dataController.user_list?.length ?? 0,
//             )),
//     );
//   }
    
//   }

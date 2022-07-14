import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import './user_model_list.dart';

class DataController extends GetxController {
//   getUserInformationFromApi() async {
//     http.get(Uri.tryParse('https://jsonplaceholder.typicode.com/todos'));
//   }
// }

// Future<http.Response>

  List<Model>? user_list;
  var isDataLoading = false.obs;

  getUserInformationFromApi() async {
    try {
      isDataLoading(true);
      http.Response response = await http
          .get(Uri.tryParse('https://jsonplaceholder.typicode.com/todos')!);

      print(response.body);
      if (response.statusCode == 200) {
        user_list = modelFromJson(response.body);
      } else {
        print('Error processing');
      }
    } catch (e) {
      print("Error while getting the data $e");
    } finally {
      isDataLoading(false);
    }
  }
}

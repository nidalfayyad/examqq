import 'dart:html';

import 'package:dio/dio.dart';
import 'package:nidalfayyad/model/usermodel.dart';

abstract class userimp {
  Dio req = Dio();
  late Response res;
  String url1 = "https://freetestapi.com/api/v1/products";
  Future<List<UserModel>> getuser();
}

class usrser extends userimp {
  Future<List<UserModel>> getuser() async {
    //print("getquiz befor dio");
    Dio req = Dio();
    Response res = await req.get(url1);
    List<UserModel> quastions = List.generate(
      res.data.length,
      (index) => UserModel.fromMap(res.data[index]),
    );
    // print("getquiz after function get reqest");
    //print(quastions);
    return quastions;
  }
}

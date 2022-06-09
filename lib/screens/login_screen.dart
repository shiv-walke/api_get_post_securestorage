import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:new_listview_api/model/login_response.dart';
import 'package:new_listview_api/service/secure_storage_data.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  late LoginResponse _loginResponse = LoginResponse();

  SecureStorageData _secureStorageData = SecureStorageData();

  Future<void> login (String username, password) async{
    try{
      Response response = await http.post(Uri.parse("https://entieapi.knackbe.in/api/Auth/login"),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
      body: jsonEncode({
        'username' : username,
        'password' : password,
        'isMobile' : true
      }));
      if (response.statusCode == 200){
        print("login successful");
        _loginResponse = LoginResponse.fromJson(jsonDecode(response.body));
        print(_loginResponse.data?.fullName);
        _secureStorageData.setFullName(_loginResponse.data?.fullName);
        _secureStorageData.setMobileNumber(_loginResponse.data?.mobileNumber);
        _secureStorageData.setToken(_loginResponse.data?.token);
        _secureStorageData.setUserId(_loginResponse.data?.userId);
        _secureStorageData.setScubscriptionCompleted(_loginResponse.data?.isScubscriptionComplete);
        String? fn =await _secureStorageData.getFullName();
        String? mn =await _secureStorageData.getMobileNumber();
        int? ui =await _secureStorageData.getUserId();
        bool? sc =await _secureStorageData.getScubscriptionCompleted();
        print("fullName.secure: $fn");
        print("fullName.secure: $mn");
        print("fullName.secure: $ui");
        print("fullName.secure: $sc");
        print("${_loginResponse.toJson()}");
      }else{
        print("Login failed: ${response.statusCode}");
      }
    }catch(e){
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Api"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: usernameController,
              decoration: const InputDecoration(
                hintText: "Username",
              ),
            ),
            const SizedBox(height: 20,),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                hintText: "Password",
              ),
            ),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                login(usernameController.text.toString(), passwordController.text.toString());
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: const Center(child: Text("Log In",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),
              )
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:getting_api_local_datatask1/models/User_model.dart';
import 'package:getting_api_local_datatask1/services/User_service.dart';
import 'package:getting_api_local_datatask1/views/Data_Employee.dart';

class FetchData extends StatefulWidget {
  const FetchData({super.key, required String title});

  @override
  State<FetchData> createState() => _FetchDataState();
}

class _FetchDataState extends State<FetchData> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Data Employee",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.06,
                color: Colors.white),
          ),
        ),
        body: Center(
          child: SizedBox(
            height: screenHeight * 0.07,
            width: screenWidth * 0.9,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DataEmployee()));
                },
                child: Text(
                  "Fetch employee data",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth * 0.06),
                )),
          ),
        ));
  }
}

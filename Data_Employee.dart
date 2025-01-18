import 'package:flutter/material.dart';
import 'package:getting_api_local_datatask1/models/User_model.dart';
import 'package:getting_api_local_datatask1/services/User_service.dart';

class DataEmployee extends StatefulWidget {
  const DataEmployee({super.key});

  @override
  State<DataEmployee> createState() => _DataEmployeeState();
}

class _DataEmployeeState extends State<DataEmployee> {
  List<User> users = [];
  bool leading = true;
  getMyUser() async {
    users = await UserService().getUser();
    leading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getMyUser();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Data Employee"),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text("Name : ${users[index].name}"),
              subtitle: Text("Username : ${users[index].username}"),
            ),
          );
        },
      ),
    );
  }
}

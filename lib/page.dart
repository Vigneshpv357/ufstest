import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'firstpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLoggedIn = false;
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(

            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[Colors.blue.shade100,Colors.blue.shade50])),
            ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  _isLoggedIn = !_isLoggedIn;
                });
                // Implement your login/logout logic here (optional)
              },
              child: Text(
                _isLoggedIn ? 'Logout' : 'Login',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
          leading:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20),),
              child: IconButton(onPressed: (){},icon: Icon(Icons.widgets_outlined),),
            ),
          ),
          backgroundColor:  Colors.blue.shade100,
          bottom: const TabBar(
            indicatorColor: Color(0xFFE5AA17),
            tabs: [
              Tab(icon: Icon(Icons.person),text: "Training",),
              Tab(icon: Icon(Icons.analytics),text: "Inspection"),
              Tab(icon: Icon(Icons.settings),text: "Calibration"),
            ],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.blue[50]),
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child:  TabBarView(
            children: [
              FirstPage(),
              Icon(Icons.analytics),
              Icon(Icons.settings),
            ],
          ),
        ),
      ),
    );
  }
}

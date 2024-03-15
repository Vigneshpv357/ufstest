import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({super.key});

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 350,
        decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Column(

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/8.png",height: 60,),
                ),
                SizedBox(height: 25),
                Expanded(
                  child: Row(
                  
                    children: [
                  
                      Text('"',style: TextStyle(color: Colors.amber,fontSize: 80),),
                      SizedBox(height: 40,width: 30,),
                      Container(
                        height: 50,
                        width: 2,
                        decoration: BoxDecoration(color: Colors.black),
                      )
                  
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/9.png"),
                  Expanded(child: Text("Contrary to popular belief, Lorem \nIpsum is not simply random text. It \nhas roots in a piece of classical \nLatin literature from 45 BC")),
                  Text("Jerin Thomas"),
                  Text("CEO & CO-FOUNDER OF ARABTEC")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

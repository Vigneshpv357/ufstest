import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ufstest/custumer.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: 200,
                    decoration: BoxDecoration(color: Color(0xFFC9CBFF),borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Total Training \nAttended"),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(color: Colors.purple[200],borderRadius: BorderRadius.circular(20),
                          ),
                          child:Center(child: Text("10")),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: 200,
                    decoration: BoxDecoration(color: Colors.purple[100],borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Upcoming Trainings"),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(color: Colors.purple[200],borderRadius: BorderRadius.circular(15),
                          ),
                          child:Center(child: Text("5")),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Explore our",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Color(0xFF294C73)
            ),),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Various",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Color(0xFF294C73)),),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'training',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 1
                      ..color = Color(0xFF294C73),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Featured Training",style: TextStyle(color: Color(0xFF294C73),fontWeight: FontWeight.bold,fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25)),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/first.png",height: 250,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/first.png",height: 250,),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: LinearProgressIndicator(
              color: Colors.amber,
              value: 10.0,
              semanticsLabel: 'Linear progress indicator',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Accreditation",style: TextStyle(color: Color(0xFF294C73),fontWeight: FontWeight.bold,fontSize: 18)),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      child: Image.asset("assets/third.png",height: 100,fit: BoxFit.fill,)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/4.png",height: 100,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/third.png",height: 100,),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(" See what our customer says",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CustomerScreen(),
                CustomerScreen(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Our Clients",style: TextStyle(color: Color(0xFF294C73),fontWeight: FontWeight.bold,fontSize: 18)),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/7.png",height: 100,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/7.png",height: 100,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/7.png",height: 100,),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

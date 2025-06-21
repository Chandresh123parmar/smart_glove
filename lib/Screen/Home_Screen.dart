import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.white));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: Text('Smart Glove'),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_vert))
         ]
      ),

      body:Column(
        children: [

          Padding(
            padding: EdgeInsets.all(15),
            child: Image.asset('assets/Images/Thumb.jpg',
            height: mq.height * .4),
          ),
          SizedBox(height: 20,),

          Container(
            margin: EdgeInsets.all(10),
            height: mq.height * .30,
            width: mq.width,
            color: Colors.white,
            child: Column(
              spacing: 2,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Fingers',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                      Text('Force',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
                SizedBox(height: 15,),

                // five fingers
                Padding(
                  padding: EdgeInsets.only(left: 55),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    spacing: 140,
                    children: [
                      Text('Thumb :',style: TextStyle(fontWeight: FontWeight.w500),),

                      Text('0')
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 55),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    spacing: 100,
                    children: [
                      Text('Index Finger :',style: TextStyle(fontWeight: FontWeight.w500),),

                      Text('0')
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 55),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    spacing: 90,
                    children: [
                      Text('Middle Finger :',style: TextStyle(fontWeight: FontWeight.w500)),
                      Text('0')
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 55),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    spacing: 107,
                    children: [
                      Text('Ring Finger :',style: TextStyle(fontWeight: FontWeight.w500)),
                      Text('0')
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 55),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    spacing: 102,
                    children: [
                      Text('Little Finger :',style: TextStyle(fontWeight: FontWeight.w500)),
                      Text('0')
                    ],
                  ),
                ),

              ],
            ),
          )
        ],
      )
    );
  }
}

import 'package:flutter/material.dart';



// ignore: use_key_in_widget_constructors
class Home extends  StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController scrollController = ScrollController();
  bool showbtn = false;

  @override
  void initState() {
    scrollController.addListener(() { //listener 
      showbtn = true;
      print(scrollController.offset); 
      //.offset is double value
      /* Outputs --------
          I/flutter (26854): 32.349831321022975
          I/flutter (26854): 33.07679332386385
          I/flutter (26854): 33.80375532670473
          I/flutter (26854): 34.530717329545666
          I/flutter (26854): 35.2576793323866
          I/flutter (26854): 35.62113813920479
          I/flutter (26854): 35.984641335227536
          I/flutter (26854): 36.34810014204572
          I/flutter (26854): 36.71160333806847
          I/flutter (26854): 37.07506214488666
          I/flutter (26854): 37.80202414772759
          I/flutter (26854): 38.16552734375034
      */ 

      setState(() {
         //update state 
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
            title: const Text("Get Scroll Position in Flutter"),
            backgroundColor: Colors.redAccent
         ),
         floatingActionButton: Card(
            child: showbtn? 
                   Text("Scroll Position: ${scrollController.offset}",
                        style: const TextStyle(fontSize: 20),)
                   :const Text("")
         ),
         body: SingleChildScrollView( 
                  controller: scrollController,
                  child:Container(
                    height: 1000,
                    width: 500,
                
              )
          )
    );
  } 
}
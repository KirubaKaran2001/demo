import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text(
                'Headline',
                style: TextStyle(fontSize: 18),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  controller: controller,
                  itemCount: 50,
                  itemBuilder: (BuildContext context, int index) => Card(
                    child: Center(
                      child: Text('Dummy Card Text $index'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 200,
            left: 10,
            child: IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                setState(() {
                  controller.animateTo(360,
                      duration: const Duration(seconds: 1),
                      curve: Curves.linear);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class FoodWaste extends StatefulWidget {
  const FoodWaste({Key? key}) : super(key: key);

  @override
  _FoodWaste createState() => _FoodWaste();
}

class _FoodWaste extends State<FoodWaste> {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      appBar: AppBar(
        title: const
        Text(
          'Food Waste',
          style: TextStyle(
            color: Colors.green,
            fontSize: 27,
            fontWeight: FontWeight.bold,
            fontFamily: 'itim'
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent.withOpacity(0),
        elevation: 0,
      ),
      body:
        Cartoon1()
    );
  }
}

class Cartoon1 extends StatelessWidget {
  const Cartoon1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 50),
        Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 480,
                width: 390,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(13)),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 3,
                          color: Colors.black.withOpacity(0.3),
                          offset: Offset(1,1)
                      )],
                    image: DecorationImage(
                        image: AssetImage('assets/cartoon/foowaste(test).jpeg'),
                        fit: BoxFit.fill
                    )
                ),
              )
            ]),
        Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          Row(children: [
            Expanded(flex: 4, child: Container(color: Colors.transparent.withOpacity(0))),
            Expanded(flex: 1,
                child: Ink(
                  decoration: const ShapeDecoration(
                    color: Colors.blueAccent,
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_right,size: 30),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cartoon2())
                      );
                    },
                  ),
                )
            ),
          ])
        ])
      ],
    );
  }
}

class Cartoon2 extends StatelessWidget {
  const Cartoon2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 50),
        Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 480,
                width: 390,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(13)),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 3,
                          color: Colors.black.withOpacity(0.3),
                          offset: Offset(1,1)
                      )],
                    image: DecorationImage(
                        image: AssetImage('assets/cartoon/foowaste(test).jpeg'),
                        fit: BoxFit.fill
                    )
                ),
              )
            ]),
        Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              Row(children: [
                Expanded(flex: 1,
                    child: Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.redAccent,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_left,size: 30),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    )
                ),
                Expanded(flex: 3, child: Container(color: Colors.transparent.withOpacity(0))),
                Expanded(flex: 1,
                    child: Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.blueAccent,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_right,size: 30),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    )
                ),
              ])
            ])
      ],
    );
  }
}
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width   = 50.0;
  double _height  = 50.0;
  Color _color    = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _changeColor,
        child: Icon(Icons.color_lens),
      ),
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color
          ),
        ),
      ),
    );
  }

  void _changeColor(){
    final random = Random();
    setState(() {
      _color = Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255), 
        random.nextInt(255),
        1
      );  
      _width  = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble(); 
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }

}
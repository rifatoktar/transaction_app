import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: InkWell(
        onTap: () {
          setState(() {
            _value = !_value;
          });
        },
        child: Container(
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: _value
                ? const Icon(
                    Icons.check,
                    size: 30.0,
                    color: Colors.white,
                  )
                : const Icon(
                    Icons.check_box_outline_blank,
                    size: 30.0,
                    color: Colors.blue,
                  ),
          ),
        ),
      )),
    );
  }
}

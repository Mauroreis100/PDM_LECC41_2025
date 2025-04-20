import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: OverflowDetector(
          child: Column(
            children: [
              Container(
                height: 100,
                color: Colors.red,
                child: const Center(child: Text('Container 1')),
              ),
              Container(
                height: 200,
                color: Colors.green,
                child: const Center(child: Text('Container 2')),
              ),
              Container(
                height: 300,
                color: Colors.blue,
                child: const Center(child: Text('Container 3')),
              ),
              Container(
                height: 400,
                color: Colors.yellow,
                child: const Center(child: Text('Container 4')),
              ),
              Container(
                height: 500,
                color: Colors.orange,
                child: const Center(child: Text('Container 5')),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}


class OverflowDetector extends StatelessWidget {
  final Widget child;
  final Function(bool)? onOverflow;

  const OverflowDetector({
    required this.child,
    this.onOverflow,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
              minWidth: constraints.maxWidth,
            ),
            child: IntrinsicHeight(
              child: child,
            ),
          ),
        );
      },
    );
  }
}
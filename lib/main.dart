import 'package:flutter/material.dart';

void main() {
  runApp(Ocasion());
}

class Ocasion extends StatelessWidget {
  const Ocasion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 60, 0, 0),
            child: Text(
              ' Choose the Events!',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Events'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              DemoWidget(text: 'Marriage'),
              SizedBox(
                height: 10,
              ),
              DemoWidget(text: 'Anniversary'),
              SizedBox(
                height: 10,
              ),
              DemoWidget(text: 'Birthday'),
            ],
          ),
        ),
      ),
    );
  }
}

class DemoWidget extends StatelessWidget {
  // const DemoWidget({required this.text});
  const DemoWidget({
    required this.text,
  });

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 8,
            ),
            child: Column(
              children: [
                Image.asset('image/firstpage.jpg'),
                Text(
                  text!,
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 12.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 8,
            ),
            child: Column(
              children: [
                Image.asset('image/firstpage.jpg'),
                Text(
                  text!,
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 12.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

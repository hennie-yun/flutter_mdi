import 'package:flutter/material.dart';
import 'package:flutter_project/page/main/mdiController.dart';
import 'package:flutter_project/page/main/mdiManager.dart';

void main() {
  runApp(MyApp());
}

class SampleApp extends StatelessWidget {
  const SampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
 
  }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MDI Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late MdiController mdiController;

  @override
  void initState() {
    super.initState();

    mdiController = MdiController(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.orange,
            onPressed: () {
              mdiController?.addWindow();
            },
            child: Icon(Icons.add), // 버튼에 아이콘 추가
          ),
          SizedBox(height: 16), // 버튼 사이에 간격 추가
          FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () {
              mdiController?.favstock();
            },
            child: Icon(Icons.edit),
          ),
          SizedBox(height: 16), // 버튼 사이에 간격 추가
          FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              mdiController?.currentprice();
            },
            child: Icon(Icons.plus_one),
          ),
        ],
      ),
      body: MdiManager(
        mdiController: mdiController,
      ),
    );
  }
}
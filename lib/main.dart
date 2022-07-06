import 'package:flutter/material.dart';
// alt + enter = to wrap with something

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Youtube Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Row(
          children: [
            Text('Youtube'),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/youtube.jpg',
                width: 20,
                // alignment: ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/magnifying_glass.jpg',
                width: 20,
                // alignment: ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/menu.jpg',
                width: 20,
                // alignment: ,
              ),
            ),
          ],
        ),

      ),
      body: Center(
          child: Row(

            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    // Image.network('https://drive.google.com/drive/folders/1a_QKfuCMyyoSGie6e5EQzAY-pvP_ARKy',
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/tving.jpg',
                        width: 200,
                        // height: 100,
                        //fit: BoxFit.cover, //정해진 사이즈 안에 맞춰 사진을 넣을 때
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/piano.jpg',
                        width: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/war.jpg',
                        width: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/chosun.jpg',
                        width: 200,
                      ),
                    ),
                  ],

                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text('깊은 감동을 선사했던 서울체크인의 피날레!'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text('TVING'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text('기분 좋은 하루의 시작! 햇살같은 피아노 곡'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text('마인드 피아노'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text('우크라 재건회의 "972조 원 필요"'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text('KBS News'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text('"조선 최고 기와", 갯벌이 지켜낸 보물'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text('JTBC News'),
                    ),
                  ],
                ),
              ),
            ],
          ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

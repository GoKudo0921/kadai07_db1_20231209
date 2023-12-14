import 'package:flutter/material.dart';
import 'package:flutter_demo_app/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> titleList = ['Amazon','楽天','Yahoo!'];
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation:100,
        title: const Text('パスワードリスト',
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            decoration:TextDecoration.underline,
            fontStyle:FontStyle.italic,
        ),),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: titleList.length,
          itemBuilder: (BuildContext, index){
            return Column(
              children: [
                ListTile(
                leading: Icon(Icons.vpn_key),
                title: Text(titleList[index]),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    NextPage(titleList[index])));
                  },
              ),
              const Divider(),
            ],
            );
            },
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          titleList.add('Google');
          setState(() {
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      drawer: const Drawer(
        child: SafeArea(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '・Test',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  '・Test',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  '・Test',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  '・Test',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                )
              ],
            )
        ),
      ),
      endDrawer: const Drawer(
        child: SafeArea(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '・Test',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  '・Test',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  '・Test',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  '・Test',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                )
              ],
            )
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label:'追加'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.dangerous_outlined),
              label:'削除'
          ),
        ],
          currentIndex:selectedindex,
          onTap: (index){
            selectedindex = index;
            setState(() {
          });
        },
      ),
    );
  }
}
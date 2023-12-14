import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  final String title;
  const NextPage(this.title,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column( //縦に並べる
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row( //横に並べる
              children: [
                SizedBox(
                  width: 30,
                  child: Text('ID'),
                ),
                Text('：　ここにIDが表示される'),
              ],
            ),
            // 余白を入れる
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                  child: Text('PW'),
                ),
                Text('：　ここにPWが表示される'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

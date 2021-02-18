import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: 'Berita Hari Ini'),
                Tab(text: 'Pertandingan Terbaru')
              ],),
            backgroundColor: Colors.grey,
          title: Text('MyApp')
          ),
          body: TabBarView(
            children: [
              Center(child: Text('Berita Baru')),
              Center(child: Text('Pertandingan Baru'))
            ],)
        ),
      )
    );
  }
}
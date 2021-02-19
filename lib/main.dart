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
            backgroundColor: Colors.grey,
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: 'Berita Hari Ini'),
                Tab(text: 'Hasil Pertandingan')
              ],),
          title: Text('MyApp')
          ),
          body: TabBarView(
            children: [
              ListView(
                children: <Widget>[
                   Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                  Image(
                    image: NetworkImage('https://ichef.bbci.co.uk/onesport/cps/624/cpsprodpb/13848/production/_117044997_gettyimages-1302682326.jpg'),
                  ),
                  Text('Sevilla Sudah Lama Tak Kebobolan, Dortmund Datang dan Merusaknya',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "18 Februari 2021",
                        style: TextStyle(height: 2),
                      ),
                    )
                  ),
                  Text(
                    '\nGawang Sevilla lama tidak bobol. Tapi, Borussia Dortmund' 
                    'kemudian datang dan merusak catatan apik itu, tidak cuma satu tapi tiga gol!...',
                    style: TextStyle(color: Colors.black)
                  ),
                ButtonBar(
                  children: [
                    FlatButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('Read More...'),
                    ),
                  ],
                ),
              ],
            ),
          ),
           Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                   ListTile(
                      leading: Image.network("https://cdn1-production-images-kly.akamaized.net/n6rzM54tZUVas_jksuAWeiD862A=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3378641/original/068325200_1613514381-Barcelona_Vs_Paris_Saint-Germain_21_08.JPG", fit: BoxFit.fill),
                     title: const Text('Barcelona Wajib Buka Mata, Dikalahkan Mbappe Bukti Jajaran Skuat Sudah Tua',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                   ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "17 Februari 2021",
                        style: TextStyle(height: 2),
                      ),
                    )
                  ),
                  Text(
                    '\nKylian Mbappe benar-benar sangar. Selain tiga kali' 
                    'membobol gawang Barcelona, ia pun menegaskan tak mempan diintimidasi lawan...',
                    style: TextStyle(color: Colors.black)
                  ),
                ButtonBar(
                  children: [
                    FlatButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('Read More...'),
                    ),
                  ],
                ),
              ],
            ),
          ),
                ],
                ),
                Column(
                  children: <Widget>[
                     Image(
                    image: AssetImage('assets/1.jpg'),
                  ),
                  Image(
                    image: AssetImage('assets/2.jpg'),
                  ),
                  Image(
                    image: AssetImage('assets/3.jpg'),
                  ),
                  Image(
                    image: AssetImage('assets/4.jpg'),
                  ),
                  ],
                )
            ],),
        ),
      )
    );
  }
}
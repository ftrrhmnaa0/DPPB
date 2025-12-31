import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override  
  Widget build(BuildContext context) {

    Color color = Theme.of(context).primaryColor; 
    Widget buttonSection = Row( 
    mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
    children: [ 
      _buildButtonColumn(color, Icons.call, 'CALL'), 
      _buildButtonColumn(color, Icons.near_me, 'ROUTE'), 
      _buildButtonColumn(color, Icons.share, 'SHARE'), 
    ], 
    ); 

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Gunung merupakan salah satu destinasi wisata alam '
        'yang menawarkan keindahan panorama dan udara sejuk. '
        'Lokasi ini cocok untuk wisata keluarga maupun pendakian ringan. '
        '\n\nNama: Aziz\nNIM: 707012400007',
        softWrap: true,
      ),
    );


    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Buah Batu, Bandung, Indonesia',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

    
    return MaterialApp(
      title: 'Flutter layout: Aziz - 707012400007',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/gunung.jpg',
              width: 640,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

}

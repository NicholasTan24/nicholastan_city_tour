import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget{
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('City Tour'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              children: [
                SizedBox(height: 16),
                SingleChildScrollView(
                    child: Row(
                      children: [
                        ClipRRect(
                            child: Image.network(
                              height: 300,
                                width: 150,
                                'https://picsum.photos/id/162/300/200'
                                    'https://picsum.photos/id/164/300/200'
                                    'https://picsum.photos/id/174/300/200'

                            ),
                        ),
                        Column(children: [
                          Text("Explore the charm of our city's hidden gems and embark on a journey to discover the rich cultural heritage, breathtaking landscapes, and unique experiences that await you. From historic landmarks to vibrant markets and serene natural wonders, our city offers a tapestry of experiences that will captivate your senses. Join us in exploring the beauty of our city and create memories that will last a lifetime. Come and visit our city's treasures today.",
                              textAlign: TextAlign.justify)
                        ],)
                      ],
                    )
                )
              ],
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
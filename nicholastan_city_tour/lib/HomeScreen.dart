import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('City Tour'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          'https://picsum.photos/id/162/300/200',
                          fit: BoxFit.cover,
                          height: 300,
                          width: 150,
                          )),
                  SizedBox(width: 8),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          'https://picsum.photos/id/164/300/200',
                          fit: BoxFit.cover,
                          height: 300,
                          width: 150)),
                  SizedBox(width: 8),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          'https://picsum.photos/id/174/300/200',
                          fit: BoxFit.cover,
                          height: 300,
                          width: 150)),
                ]),
              ),
              SizedBox(height: 10),
              Text('Explore, Enjoy, Experience',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text("Explore the charm of our city's hidden gems and embark on a journey to discover the rich cultural heritage, breathtaking landscapes, and unique experiences that await you. From historic landmarks to vibrant markets and serene natural wonders, our city offers a tapestry of experiences that will captivate your senses. Join us in exploring the beauty of our city and create memories that will last a lifetime. Come and visit our city's treasures today.",
              textAlign: TextAlign.justify),
              SizedBox(height: 10),
              Image.network('https://picsum.photos/id/162/200/300',
                fit: BoxFit.cover, width: double.infinity, height: 250),
              SizedBox(height: 10),
              Text('Blue body of water'),
            ],
          ),
        ),
      ),
    );
  }
}

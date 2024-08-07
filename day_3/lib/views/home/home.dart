// ignore_for_file: must_be_immutable

import 'package:day_3/views/constants/pets/pet1.dart';
import 'package:day_3/views/constants/pets/pet2.dart';
import 'package:day_3/views/constants/pets/pet3.dart';
import 'package:day_3/views/constants/pets/pet4.dart';
import 'package:day_3/views/constants/utils/Images.dart';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({
    super.key,
  });
  List<PetList> largescroll = [
    PetList(
        label: 'Name:',
        type: 'Cat',
        name: 'Jimmy',
        backgroundImage: AssetImage(ImageAssets.cat1)),
    PetList(
        label: 'Name:',
        type: 'Dog',
        name: 'LALA',
        backgroundImage: AssetImage(ImageAssets.dog1)),
    PetList(
        label: 'Name:',
        type: 'Fish',
        name: 'Lorry',
        backgroundImage: AssetImage(ImageAssets.fish1)),
  ];
  final routes = [
    const Pet1(),
    const Pet2(),
    const Pet3(),
    const Pet4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        title: const Text(
          "My Lovely Pet",
          style: TextStyle(
              // shadows: [
              //   Shadow(color: Colors.black),
              //   Shadow(color: Colors.black)
              // ],
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis),
        ),
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
        ),
      ),
      body: ListView.builder(
          itemCount: largescroll.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Column(
                    children: [
                      Container(
                        height: 300,
                        // width: 300,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            image: DecorationImage(
                              image: largescroll[index].backgroundImage,
                              fit: BoxFit.cover,
                            )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            largescroll[index].type,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis),
                          ),
                          Text(
                            largescroll[index].label,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis),
                          ),
                          Text(
                            largescroll[index].name,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis),
                          ),
                        ],
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.greenAccent),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(20)),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => routes[index]),
                            );
                          },
                          child: const Text(
                            'View More Detials',
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ))
                    ],
                  ))),
            );
          }),
    );
  }
}

class PetList {
  String type;
  String label;
  String name;
  ImageProvider backgroundImage;

  PetList({
    required this.backgroundImage,
    required this.type,
    required this.label,
    required this.name,
  });
}

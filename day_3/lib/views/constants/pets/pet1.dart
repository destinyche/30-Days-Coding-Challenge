import 'package:day_3/views/constants/utils/Images.dart';
import 'package:flutter/material.dart';

class Pet1 extends StatelessWidget {
  const Pet1({super.key});

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
      body: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Center(
              child: Column(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(ImageAssets.cat2),
                  fit: BoxFit.cover,
                )),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Pet Name:",
                    style: TextStyle(fontSize: 25),
                  ),
                  Text("Jimmy",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Pet Infomation",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Domestic cats may be called 'house cats' when kept as indoor pets. They are one of the most popular pets in the world. Humans keep them for hunting mice and rats, and as friends.",
                  style: TextStyle(
                    fontSize: 23,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "What do you think about Jimmy",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      FloatingActionButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.thumb_up,
                          color: Colors.green,
                        ),
                      ),
                      const Text(
                        "Like",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      FloatingActionButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.thumb_down,
                          color: Colors.red,
                        ),
                      ),
                      const Text(
                        "Dislike",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ))),
    );
  }
}

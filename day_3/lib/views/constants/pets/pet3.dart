import 'package:day_3/views/constants/utils/Images.dart';
import 'package:flutter/material.dart';

class Pet3 extends StatelessWidget {
  const Pet3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  image: AssetImage(ImageAssets.fish2),
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
                  Text("Lorry",
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
                  " Fish are great pets because they don't need training, playtime, or grooming. There are certain types of fish that can be trained, like Koi",
                  style: TextStyle(
                    fontSize: 23,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "What do you think about Lorry",
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

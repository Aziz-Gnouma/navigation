import 'package:flutter/material.dart';
import 'dog_detail.dart';
import 'dog_list.dart';
import 'dog_model.dart';
import 'owner.dart';

void main() {
  Owner owner = Owner(
    name: "Spikey Sanju",
    occupation: "Developer & Pet Lover",
    image: "/owner.jpg",
  );

  runApp(MyApp(owner: owner));
}

class MyApp extends StatelessWidget {
  final Owner owner;

  MyApp({required this.owner});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dog List'),
        ),
        body: DogList(
          dogs: [
            Dog(
              id: 0,
              name: 'Hachiko',
              weight: 3.5,
              gender: 'Male',
              color: 'Brown',
              distance: 12.9,
              location: '389m away',
              imageUrl: '/orange_dog.png',
              description: 'Lorem Ipsum is simply dummy text...',
              owner: owner,
            ),
            Dog(
              id: 1,
              name: 'Skooby Doo',
              weight: 3.5,
              gender: 'Male',
              color: 'Gold',
              distance: 12.4,
              location: '412m away',
              imageUrl: '/blue_dog.png',
              description:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'
                  's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',
              owner: owner,
            ),
            Dog(
              id: 2,
              name: 'Miss Agnes',
              weight: 3.5,
              gender: 'Female',
              color: 'White',
              distance: 9.6,
              location: '879m away',
              imageUrl: '/red_dog.png',
              description:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'
                  's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',
              owner: owner,
            ),
            Dog(
              id: 3,
              name: 'Cyrus',
              weight: 3.5,
              gender: 'Male',
              color: 'Black',
              distance: 8.2,
              location: '672m away',
              imageUrl: '/yellow_dog.png',
              description:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'
                  's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',
              owner: owner,
            ),
            Dog(
              id: 4,
              name: 'Shelby',
              weight: 3.5,
              gender: 'Female',
              color: 'Choco',
              distance: 14.9,
              location: '982m away',
              imageUrl: '/white_dog.png',
              description:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'
                  's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',
              owner: owner,
            ),
            // Add more dogs as needed
          ],
        ),
      ),
    );
  }
}

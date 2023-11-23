import 'package:flutter/material.dart';
import 'dog_detail.dart';
import 'dog_model.dart';

class DogList extends StatelessWidget {
  final List<Dog> dogs;

  DogList({required this.dogs});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dogs.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: ListTile(
            contentPadding: EdgeInsets.all(10),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/${dogs[index].imageUrl}'),
            ),
            title: Text(dogs[index].name),
            subtitle: Text('Gender: ${dogs[index].gender}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DogDetail(dog: dogs[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

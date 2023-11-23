import 'package:flutter/material.dart';
import 'dog_model.dart';

class DogDetail extends StatelessWidget {
  final Dog dog;

  DogDetail({required this.dog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dog.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Card(
              elevation: 5,
              child: Image.asset(
                'assets/${dog.imageUrl}', // Update with the actual image path
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            ListTile(
              title: Text('Gender'),
              subtitle: Text(dog.gender),
            ),
            ListTile(
              title: Text('Color'),
              subtitle: Text(dog.color),
            ),
            ListTile(
              title: Text('Weight'),
              subtitle: Text('${dog.weight} kg'),
            ),
            ListTile(
              title: Text('Distance'),
              subtitle: Text(dog.distance.toString()),
            ),
            ListTile(
              title: Text('Location'),
              subtitle: Text(dog.location),
            ),
            ListTile(
              title: Text('Description'),
              subtitle: Text(dog.description),
            ),
          ],
        ),
      ),
    );
  }
}

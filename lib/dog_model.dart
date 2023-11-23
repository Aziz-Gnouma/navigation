// dog_model.dart
import 'owner.dart';

class Dog {
  final int id;
  final String name;
  final double weight;
  final String gender;
  final String color;
  final double distance;
  final String location;
  final String imageUrl;
  final String description;
  final Owner owner; // Make sure to import the Owner class

  Dog({
    required this.id,
    required this.name,
    required this.weight,
    required this.gender,
    required this.color,
    required this.distance,
    required this.location,
    required this.imageUrl,
    required this.description,
    required this.owner,
  });
}

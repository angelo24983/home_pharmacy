import 'package:cloud_firestore/cloud_firestore.dart';

class Drug {
  final String id;
  final String name;

  Drug(
    this.id,
    this.name,
  );

  factory Drug.fromFirestore(DocumentSnapshot snapshot) {
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    return Drug(
      data['id'],
      data['name'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'id': id,
      'name': name,
    };
  }
}

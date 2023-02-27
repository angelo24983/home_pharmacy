import 'package:cloud_firestore/cloud_firestore.dart';

class Drug {
  final String? id;
  final String name;

  Drug(this.name, [this.id]);

  factory Drug.fromFirestore(DocumentSnapshot snapshot) {
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    return Drug(
      data['name'],
      snapshot.id,
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'name': name,
    };
  }
}

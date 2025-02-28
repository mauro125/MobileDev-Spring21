import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  // collection reference

  final String authID;
  DatabaseService({this.authID});

  final CollectionReference userDataCollection =
      FirebaseFirestore.instance.collection('user_info');

  Future updateUserData(String email, String firstname, String lastname,
      String exposureID) async {
    return await userDataCollection.doc(authID).set({
      'email': email,
      'first_name': firstname,
      'lastname': lastname,
      'exposure_id': exposureID,
    });
  }
}

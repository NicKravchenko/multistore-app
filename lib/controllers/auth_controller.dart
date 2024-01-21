import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';

class AuthController {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<String> registerUsers(String email, String fullName, String password, String phoneNumber) async {
    String res = 'Something went wrong';
    try {
      if (email.isNotEmpty && fullName.isNotEmpty && password.isNotEmpty && phoneNumber.isNotEmpty) {
        // create an user
        UserCredential cred = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
        // load user to Firestore
        await _firebaseFirestore.collection('buyers').doc(cred.user!.uid).set({
          'email': email,
          'fullName': fullName,
          'phoneNumber': phoneNumber,
          'buyerId': cred.user!.uid,
          'adress': ''
        });

        res = 'sucess';
      } else {
        res = 'Please complete all fields';
      }
    } catch (e) {
      res = e.toString();
    }

    return res;
  }

  Future<bool> loginUsers(String email, String password) async {
    String res = 'Something went wrong';

    try {
      if(email.isNotEmpty && password.isNotEmpty) {
        UserCredential cred = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
        return true;
      } else {
        return false;

      }
    } catch (e) {
      return false;
    }

  }

  pickImage (ImageSource image) async {
    final ImagePicker imagePicker = ImagePicker();
    var file = await imagePicker.pickImage(source: image);

    if (file != null) {
      return await file.readAsBytes();
    } else {
      print('No image selected');
    }
  }


}
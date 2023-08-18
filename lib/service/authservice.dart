import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pet/model/user_model.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pet/view/home_screen.dart';

class AuthService {



  static signUp(
    String userName,
    String country,
    String email,
    String mobNo,
    String pass
  ) async {
    try{
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email, 
        password: pass
      ) as UserCredential;
      if( userCredential != null ){ 
      String uid = userCredential.user!.uid;
      print("//////////////////////////////////////////////////////////");
      print(uid);

      UserModel newuser = UserModel(
        uid: uid,
        nameName: userName,
        email: email,
        country: country,
        mobNo: mobNo,
      );
      await FirebaseFirestore.instance.collection("user").doc(uid).set(newuser.toMap())
      .then((value) {
  
      }
      );
      }
    } on FirebaseAuthException catch (e) {
      if(e.code == 'weak-password'){
        // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("weak password")));
      } else if (e.code == 'email-already-in-use'){
        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("email already in use")));
      }
    } catch (e) {
      print(e);
    }
  }


  static login(
    String email,
    String pass
  ) async {
    try{
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email, 
        password: pass
      ) as UserCredential;
      if( userCredential != null ){ 
      String uid = userCredential.user!.uid;
      print("/////////////////////////// you are signed in///////////////////////////////");
      print(uid);
      }
    } on FirebaseAuthException catch (e) {
      if(e.code == 'weak-password'){
        // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("weak password")));
      } else if (e.code == 'email-already-in-use'){
        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("email already in use")));
      }
    } catch (e) {
      print(e);
    }
  }




  ///////////////////////////////////////////////////   google login using firebase
  // static googleLogin() async {
  //   try{
  //       //trigger the authentication
  //       final GoogleSignInAccount? googleUser = await GoogleSignIn(
  //         scopes: <String>["email"]).signIn();
  //       //obtain theauth credential
  //       final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

  //       // create credential 
  //       final credential = await GoogleAuthProvider.credential(
  //         idToken: googleAuth.idToken,
  //         accessToken: googleAuth.accessToken
  //       );
  //       var result = FirebaseAuth.instance.signInWithCredential(credential);
  //       print("//////////////////////////////////////////////////////////////");
  //       print(googleUser.displayName); 
  //       print(googleUser.email);
  //       print(googleUser.photoUrl);   
  //   } on FirebaseAuthException catch (e) {
  //     print(e);
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  static googleLogin() async {
      GoogleSignIn _googleSignIn = GoogleSignIn();
    try{
      
      var result = await _googleSignIn.signIn();
      print(result);
    } catch (e) {
      print(e);
    }
  }


   static facebookLogin() async {
  
    try{
      
      
      print("facebook login");
    } catch (e) {
      print(e);
    }
  }



  static signOut(){
    FirebaseAuth.instance.signOut();
  }


  static getUserData() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    DocumentSnapshot postdata = await firestore.collection('user').doc('MphPHP790ZaaXnMPLDJk7n8PLFr2').get();
    if(postdata.exists){
      UserModel userData = UserModel.fromMap(postdata.data() as Map<String, dynamic>);
      print(userData.posts!.length);
      mpc = List.from(userData.posts as Iterable) ;
      userData = userData;
    }
  }

}
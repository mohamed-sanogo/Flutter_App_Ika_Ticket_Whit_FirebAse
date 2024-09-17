import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ika_ticket/pages/liste-ticket_page.dart';
import 'package:ika_ticket/pages/ticket-list_page.dart';

class AuthService{  
  Future<void> login({
    required email,
    required password,
    required BuildContext context,
  }) async{
    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email : email,
        password : password,
      );

      await Future.delayed(const Duration(seconds: 1)); 
      Navigator.pushReplacement( 
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => TicketListScreen(),
        )
      );

    } on FirebaseAuthException catch(e){
      String message = '';
      if(e.code == 'weak-password'){
        message = 'The password providedis too weak.';
      }else if (e.code== 'email-alery-use'){
        message = 'An account already exists whits that email.';
      }
      Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.SNACKBAR,
        backgroundColor: Colors.black54,
        textColor: Colors.white,
        fontSize: 14.0
      );
    }
     catch (e){}
  }


  Future<void> Connexion({
    required email,
    required password,
    required BuildContext context,
  }) async{
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email : email,
        password : password,
      );

      await Future.delayed(const Duration(seconds: 1)); 
      Navigator.pushReplacement( 
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => const ListeTicket(),
        )
      );

    } on FirebaseAuthException catch(e){
      String message = '';
      if(e.code == 'user-not-found'){
        message = 'No user fund with this email.';
      }else if (e.code== 'wrong-password'){
        message = 'wrong password provided for that user.';
      }
      Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.SNACKBAR,
        backgroundColor: Colors.black54,
        textColor: Colors.white,
        fontSize: 14.0
      );
    }
     catch (e){}
  }

}
 
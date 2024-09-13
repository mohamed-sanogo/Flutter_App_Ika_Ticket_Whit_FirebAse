import 'package:flutter/material.dart';
import 'package:ika_ticket/composant/button_comp.dart';
import 'package:ika_ticket/composant/color_comp.dart';
import 'package:ika_ticket/composant/desing_comp.dart';
import 'package:ika_ticket/composant/input_comp.dart'; 

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: 
      Stack(
        children: [
          // L'angle supérieur gauche
          TopLeftShape(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Le texte de bienvenue
                const Text(
                  "Bienvenue!",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textColor,
                  ),
                ),
                const SizedBox(height: 20),
                // Champ pour l'email
                InputField(hintText: 'Entre votre email'),
                // Champ pour le mot de passe
                InputField(hintText: 'Entre password', isPassword: true),
                const SizedBox(height: 30),
                // Bouton de connexion
                PrimaryButton(
                  buttonText: 'Connexion',
                  onPressed: () {
                    // Action lors de la connexion
                  },
                ),
              ],
            ),
          ),
        ],
      
      ),
    );
  }
}

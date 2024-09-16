// import 'package:flutter/material.dart';
// import 'package:ika_ticket/composant/button_comp.dart';
// import 'package:ika_ticket/composant/color_comp.dart';
// import 'package:ika_ticket/composant/desing_comp.dart';
// import 'package:ika_ticket/composant/input_comp.dart';
// import 'package:ika_ticket/services/auth_service.dart'; 

// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.backgroundColor,
//       body: 
//       Stack(
//         children: [
//           // L'angle supérieur gauche
//           TopLeftShape(),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Le texte de bienvenue
//                 const Text(
//                   "Bienvenue!",
//                   style: TextStyle(
//                     fontSize: 28,
//                     fontWeight: FontWeight.bold,
//                     color: AppColors.textColor,
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 // Champ pour l'email
//                 InputField(hintText: 'Entre votre email'),
//                 // Champ pour le mot de passe
//                 InputField(hintText: 'Entre password', isPassword: true),
//                 const SizedBox(height: 30),
//                 // Bouton de connexion
//                 PrimaryButton(
//                   buttonText: 'Connexion',
//                   onPressed: () async {
//                    await AuthService().login(
//                       email: , 
//                       password: password
//                       );
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
      
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:ika_ticket/composant/input_comp.dart';
import 'package:ika_ticket/services/auth_service.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Création des contrôleurs pour l'email et le mot de passe
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // Libère les ressources des contrôleurs lorsque l'écran est détruit
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Champ pour l'email
            InputField(
              hintText: 'Entrez votre email',
              controller: _emailController,
            ),
            // Champ pour le mot de passe
            InputField(
              hintText: 'Entrez votre mot de passe',
              isPassword: true,
              controller: _passwordController,
            ),
            const SizedBox(height: 30),
            // Bouton de connexion
            PrimaryButton(
              buttonText: 'Connexion',
              onPressed: () async {
                // Récupérer les valeurs des champs
                final email = _emailController.text;
                final password = _passwordController.text;

                // Appel à l'authentification
                await  AuthService().Connexion(
                  email: email,
                  password: password,
                  context: context
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  PrimaryButton({required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(buttonText),
    );
  }
}
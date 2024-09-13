import 'package:flutter/material.dart';
import 'package:ika_ticket/composant/color_comp.dart';

class TicketCard extends StatelessWidget {
  final String userName;
  final String userEmail;
  final String question;
  final String response;
  final String likes;
  final String chats;

  TicketCard({
    required this.userName,
    required this.userEmail,
    required this.question,
    required this.response,
    required this.likes,
    required this.chats,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Détails de l'utilisateur
            Row(
              children: [
                const CircleAvatar(
                  backgroundColor: AppColors.primaryColor,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      userEmail,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Question posée
            Text(question, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            // Réponse
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(response),
            ),
            const SizedBox(height: 10),
            // Likes et chats
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('$likes Likes'),
                Text('$chats Chats'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

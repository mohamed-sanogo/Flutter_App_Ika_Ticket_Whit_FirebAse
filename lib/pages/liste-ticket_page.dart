import 'package:flutter/material.dart';
import 'package:ika_ticket/composant/card_ticket_comp.dart';
import 'package:ika_ticket/composant/color_comp.dart'; 
class TicketListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [ 
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.headerColor,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Listes Des Tickets Traiter',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                SearchBar(),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: [
                  // Exemple de ticket 1
                  TicketCard(
                    userName: 'Admin',
                    userEmail: 'admin@gmail.com',
                    question: 'Bonjour, C’est quoi Spring Boot ?',
                    response:
                        'Java Spring Boot (Spring Boot) est un outil qui accélère et facilite le développement d’applications Web et de microservices avec Java Spring Framework.',
                    likes: '11K',
                    chats: '4',
                  ),
                  // Exemple de ticket 2
                  TicketCard(
                    userName: 'Oumou Touré',
                    userEmail: 'oumou.toure@gmail.com',
                    question: 'Bonjour, erreur connection db spring.',
                    response:
                        'Pour mieux comprendre, suivez le lien : https://docs.spring.io/spring-framework/reference/data-access/jdbc/connections.html',
                    likes: '5K',
                    chats: '2',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

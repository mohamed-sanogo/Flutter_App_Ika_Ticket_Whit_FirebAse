import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ika_ticket/composant/button_comp.dart';
import 'package:ika_ticket/composant/input_comp.dart';
import 'package:ika_ticket/services/liste-ticket_service.dart';
import 'package:random_string/random_string.dart';

class FormAddTicket extends StatefulWidget {
  const FormAddTicket({super.key});

  @override
  State<FormAddTicket> createState() => _FormAddTicketState();
}

class _FormAddTicketState extends State<FormAddTicket> {
  final TextEditingController _nomController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text(
              "Ajout ",
              style : TextStyle(
                color : Colors.blue, 
                fontSize: 24.0,
                fontWeight: FontWeight.bold
              )
          ),
            Text(
              "Tickets",
              style : TextStyle(
                color : Colors.orange, 
                fontSize: 24.0,
                fontWeight: FontWeight.bold
              )
          ),
        ],),
      ),
      
      body: Container (
        margin: const EdgeInsets.only(left: 20.0, top: 30.0),
        child: Column(
          children: [
            InputField(hintText: "Name", controller: _nomController),
            InputField(hintText: "Age", controller: _ageController),
            InputField(hintText: "Location", controller: _locationController),

            PrimaryButton(buttonText: "Add", 
            onPressed: () async{
              String Id = randomAlphaNumeric(10); 
              Map<String, dynamic> ticketInfoMap = {
                "Nom": _nomController.text,
                "Age": _ageController.text,
                "Id": Id,
                "Location": _locationController.text
              };
              await DataBaseMethods().createTicket(ticketInfoMap, Id).then((value) {
                Fluttertoast.showToast(
                  msg: "Ticket créer avec success",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0
                  );
              });
            })
          ],
        ),
      ),
    );
  }
}
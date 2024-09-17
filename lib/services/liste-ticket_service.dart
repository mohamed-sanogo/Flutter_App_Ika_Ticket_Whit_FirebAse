import 'package:cloud_firestore/cloud_firestore.dart';

class DataBaseMethods{
  Future createTicket(
    Map<String, dynamic> ticketInfoMap, String id) async {
      return await FirebaseFirestore.instance
      .collection("Ticket")
      .doc(id)
      .set(ticketInfoMap);
  }
  
  Future<Stream<QuerySnapshot>> getAllTickets() async {
    return await FirebaseFirestore.instance.collection("Ticket").snapshots();
  }

  Future updateTicket(String id, Map<String, dynamic> updateinfoTicket) async{
    return await FirebaseFirestore.instance.collection("Ticket").doc(id).update(updateinfoTicket);
  }

  Future deleteTicket(String id) async{
    return await FirebaseFirestore.instance.collection("Ticket").doc(id);
  }
}
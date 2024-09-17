import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ika_ticket/composant/button_comp.dart'; 
import 'package:ika_ticket/composant/form-add-ticket_page.dart';
import 'package:ika_ticket/composant/input_comp.dart';
import 'package:ika_ticket/services/liste-ticket_service.dart'; 

class ListeTicket extends StatefulWidget {
  const ListeTicket({super.key});

  @override
  State<ListeTicket> createState() => _ListeTicketState();
}

class _ListeTicketState extends State<ListeTicket> {

    final TextEditingController _editNomController = TextEditingController();
  final TextEditingController _editAgeController = TextEditingController();
  final TextEditingController _editLocationController = TextEditingController();

  Stream? TicketStream;
  getontheload() async{
    TicketStream = await DataBaseMethods().getAllTickets();
    setState(() {
      
    });
  }
  @override
  void initState() {
    getontheload();
    super.initState();
  }

  Widget allTicket(){ 
    return StreamBuilder(
      stream: TicketStream,
      builder: (context, AsyncSnapshot snapshot){
        return snapshot.hasData
          ? ListView.builder(
            itemCount: snapshot.data.docs.length,
            itemBuilder: (context, index) {
              DocumentSnapshot ds = snapshot.data.docs[index];
              return  Container(
                margin: const EdgeInsets.only(bottom: 20.0),
                child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text ("Name : "+ds["Nom"], style: TextStyle(color: Colors.blue,fontSize: 20.0,fontWeight: FontWeight.bold)),
                          Spacer(),
                          GestureDetector(
                            onTap: (){
                              _editNomController.text=ds["Nom"];
                              _editAgeController.text=ds["Age"];
                              _editLocationController.text=ds["Location"];
                              EditTicket(ds["Id"]);
                            },
                            child: const Icon(Icons.edit, color: Colors.orange)),
                            const SizedBox(width: 5.0),
                            GestureDetector(
                              onTap: ()async{
                                await DataBaseMethods().deleteTicket(ds["Id"]);
                              },
                              child: const Icon(Icons.delete, color: Colors.red)),
                        ],
                      ),
                      Text ("Age : "+ds["Age"],style: TextStyle(color: Colors.orange,fontSize: 20.0,fontWeight: FontWeight.bold)),
                      Text ("Location : "+ds["Location"],style: TextStyle(color: Colors.orange,fontSize: 20.0,fontWeight: FontWeight.bold)),
                    ],
                  )
                ),
                            ),
              );
          
            }) 
          : Container();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>{
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context)=> const FormAddTicket()))
        },
        child: const Icon(Icons.add),
        ),
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text(
              "Liste ",
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
      
      body: Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
        child: Column(
          children: [
            Expanded(child: allTicket()),
          ],
        ),
      ),
    );

  }
    Future EditTicket(String id) =>showDialog(context: context, builder: (context) => AlertDialog(
      content: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              GestureDetector(
                onTap: () => {
                  Navigator.pop(context)
                },
                child: Icon(Icons.cancel)),
                const SizedBox(width: 60.0),
                const Text(
                    "Modifier ",
                    style : TextStyle(
                      color : Colors.blue, 
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                    )
                ),
                const Text(
                  "Tickets",
                  style : TextStyle(
                    color : Colors.orange, 
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  )
                ),
            ]),
            const SizedBox(height: 20.0),
            InputField(hintText: "Name", controller: _editNomController),
            InputField(hintText: "Age", controller: _editAgeController),
            InputField(hintText: "Location", controller: _editLocationController), 
            PrimaryButton(buttonText: "Modifer", 
              onPressed: () async{ 
                Map<String, dynamic>updateinfoTicket={
                  "Nom": _editNomController.text,
                  "Age": _editAgeController.text,
                  "Id": id,
                  "Location": _editLocationController.text,
                };
                await DataBaseMethods().updateTicket(id, updateinfoTicket).then((value){
                  Navigator.pop(context);
                });
              })
          ],
        ),
      ),
    ));
}
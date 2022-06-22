import 'package:flutter/material.dart';
import 'package:trabalhoeletivaii/models/evento_model.dart';
import 'package:trabalhoeletivaii/screens/eventos/perfil_evento.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Eventos"),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.black38,
      body: ListView.builder(
        itemCount: eventos.length,
        itemBuilder: (context, index) {
          return _eventoCard(context, index);
        },
      ),
    );
  }

  Widget _eventoCard(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (_) => PerfilEvento(evento: eventos[index])
            ),
          );
          },
      child: Padding(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: eventos[index].id,
              child: Container(
                width: double.infinity,
                height: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(30)
                    ),
                    image: DecorationImage(
                        image: AssetImage(eventos[index].imageUrl),
                        fit: BoxFit.cover
                    )
                ),

              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(12, 12, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    eventos[index].nome,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: Colors.green,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(12, 12, 20, 0),
              child: Text(
                eventos[index].descricao,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),


            )
          ],
        ),
      ),
    );
  }
}


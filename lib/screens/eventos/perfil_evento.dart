import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../models/evento_model.dart';
import 'package:cool_alert/cool_alert.dart';


class PerfilEvento extends StatelessWidget {
  final Evento? evento;
  PerfilEvento({this.evento});


  Widget _cartaoInoEvento(String dia, String mes, String ano) {
    return Container(
      margin: EdgeInsets.all(2),
      width: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            "Data: ",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.green),
          ),
          Text(
            dia,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Text(
            '/',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            mes,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Text(
            '/',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Text(
            ano,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  Widget _cartaoHorarioEvento(String hora, String minuto) {
    return Container(
      margin: EdgeInsets.all(2),
      width: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            "Horário: ",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.green),
          ),
          Text(
            hora,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Text(
            ':',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Text(
            minuto,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  Widget _cartaoPrecoEvento(String preco) {
    return Container(
      margin: EdgeInsets.all(2),
      width: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Preço: R\$ ",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w600, color: Colors.red),
          ),
          Text(
            preco,
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w600, color: Colors.red),
          ),
          Text(
            ",00",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w600, color: Colors.red),
          ),
        ],
      ),
    );
  }

  Widget _cartaoLocalEvento(String local) {
    return Container(
      margin: EdgeInsets.all(2),
      width: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Local: ",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.green),
          ),
          Expanded(
              child:
              Text(
                local,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              )
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Hero(
                  tag: evento!.id,
                  child: Container(
                    width: double.infinity,
                    height: 350,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(evento!.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 10),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    evento!.nome,
                    style: TextStyle(
                      color: Colors.green,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                      child:
                      Text(
                        evento!.descricao,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      )
                  )
                ],
              ),
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  _cartaoInoEvento(addZero(evento!.dia.toString()),addZero(evento!.mes.toString()), evento!.ano.toString()),
                  _cartaoLocalEvento(evento!.local),
                  _cartaoHorarioEvento(evento!.hora.toString(), addZero(evento!.minuto.toString())),
                  _cartaoPrecoEvento(evento!.preco.toString()),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          CoolAlert.show(
            context: context,
            title: "Faça Login!",
            type: CoolAlertType.warning,
            text: "Você deve fazer login para realizar a compra de ingressos no app.",
            confirmBtnColor: Colors.red,
          );

        },
        child: Icon(Icons.shopping_cart),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  String addZero( String numberToString){
    if(numberToString.length < 2) {
      return ("0" + numberToString);
    } else {
      return (numberToString);
    }

  }







}



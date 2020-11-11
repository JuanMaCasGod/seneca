
import 'package:flutter/material.dart';

class InicialPage extends StatelessWidget {
   
  @override
  Widget build(BuildContext context) {
    final tamano =MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        primary: true,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              
              _fondo(tamano),
              _titulo(),
              _tarjeta(tamano),
              _opciones(tamano),
            ],
          ),
        ),
        bottomNavigationBar: _botonera(tamano, context),
      ),
    );
    
  }

  Widget _fondo(double tamano){
   
    return Container(
      padding: EdgeInsets.symmetric(horizontal: double.infinity, vertical: tamano*0.1),
      color: Color.fromRGBO(0, 76, 141, 5),
    );
  }

  Widget _titulo(){
    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(top: 10),
      child: Text('iSéneca', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 44),)
    );
  }
  Widget _tarjeta(double tamano){
    return Container(
     
      padding: EdgeInsets.only(top: tamano*0.1, left: tamano*0.03, right: tamano*0.03),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        elevation: 5,
        child:Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: tamano*0.013, horizontal: tamano*0.023),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Chia Díaz, Margarita", style: TextStyle(fontWeight: FontWeight.bold),),
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.arrow_drop_down, color: Colors.black,),
                        Icon(Icons.group, color: Colors.black)
                      ]
                    )
                  )
                ],
              )
            ),
            Container(
               padding: EdgeInsets.symmetric(horizontal: tamano*0.023,vertical: tamano*0.01),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('I.E.S. Llanes \nPerfil Dirección', style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold))
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: tamano*0.02, vertical: tamano*0.01),
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5))
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.alarm, color: Colors.white),
                        SizedBox(width: 15,),
                        Text('Avisos',style: TextStyle(color: Colors.white),),
                    ],),
                  ),
                  
                  VerticalDivider(color: Colors.white ,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Icon(Icons.dvr, color: Colors.white,),
                      SizedBox(width: 12,),
                      Text('Bandeja de firmas',style: TextStyle(color: Colors.white),)
                  ],)
                  
                ],
              )
            )
          ],
        )
      ),
      
    );
  }

  Widget _opciones(double tamano){
    return Container(
      margin: EdgeInsets.only(left: tamano*0.02, right: tamano*0.02, top: tamano*0.33),
      child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        border: TableBorder(
          verticalInside: BorderSide(color: Colors.grey, width: 0.8),
          horizontalInside: BorderSide(color: Colors.grey, width: 0.8)
        ),
        children: [
          TableRow(
            children: [
              FlatButton(
                onPressed: (){},
                child: _iconOpcion('Alumnado del centro','assests/gorro.PNG'),
              ),
              FlatButton(
                onPressed: (){},
                child: _iconOpcion('Personal del centro','assests/persona.PNG'),
              ),
              FlatButton(
                onPressed: (){},
                child: _iconOpcion('Informacion Covid','assests/covid.PNG'),
              ),
              
            ]
          ),
          TableRow(
            children: [
              FlatButton(
                onPressed: (){},
                child: _iconOpcion('Tablón de anuncios','assests/timbre.PNG'),
              ),
              FlatButton(
                onPressed: (){},
                child: _iconOpcion('Calendario escolar','assests/calendario.PNG'),
              ),
              Container()
            ]
          )
        ],
      ),
    );
  }

  Widget _iconOpcion(String texto,String imagen){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Image(
            image: AssetImage(imagen),
          ),
          SizedBox(height: 5,),
          Text(texto, style: TextStyle(fontWeight: FontWeight.bold))
          
        ],
      ),
    );
  }


  Widget _botonera(double tamano, BuildContext context){
    return BottomNavigationBar(
      elevation: 10,
      currentIndex: 0,
      selectedIconTheme: IconThemeData(color: Color.fromRGBO(0, 76, 141, 5)),
      unselectedIconTheme: IconThemeData(color: Colors.grey),
      selectedItemColor: Color.fromRGBO(0, 76, 141, 5),
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      iconSize: 25,
      items: [
        BottomNavigationBarItem(
           icon: Icon( Icons.home),
           title: Container(child:Text('Inicio'))
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.access_time),
          title: Container(child: Text('Agenda'),)
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.comment),
          title: Container(child: Text('Comunicaciones'))
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.menu),
          title: Container(child: Text('Menú'),) 
        ),
      ],
      );
    
  }
}
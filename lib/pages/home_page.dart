import 'package:flutter/material.dart';
import 'package:seneca/pages/inicial_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color .fromRGBO(0, 76, 141, 5),
      body: ListView(
        children: <Widget>[
          Center(
            child: Container(
             padding: EdgeInsets.only(top: 50.0),
              child: Center(
                child: Text("iSéneca", style: TextStyle(color: Colors.white, fontSize: 70.0, fontWeight: FontWeight.bold),)
              )
            ),
          ),
          Divider(height: 20.0,color: Color.fromRGBO(0, 76, 141, 5), ),
          _crearUsuario(),
          Divider(height: 20.0,color: Color.fromRGBO(0, 76, 141, 5),),
          _crearpassw(),
          Divider(height: 20.0,color: Color.fromRGBO(0, 76, 141, 5),),
          _botonAcceso(context),
          Divider(height: 50,color: Color.fromRGBO(0, 76, 141, 5),),
          Center(child: Text('No recuerdo mi contraseña', style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold))),
          Divider(color: Colors.white, height: 20.0, thickness: 1, indent: 87, endIndent: 87,),
          Divider(height: 50,color: Color.fromRGBO(0, 76, 141, 5),),
          _parteBaja(),
        ],
      )
    );
  }

  Widget _crearUsuario(){

    return  Padding(
      padding: EdgeInsets.only(right: 25.0, left: 25.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(26, 90, 143, 1),
          borderRadius: BorderRadius.circular(10)
        ),
        child: TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 1.0,style: BorderStyle.solid ),
                borderRadius: BorderRadius.circular(10)
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 1.0,style: BorderStyle.solid ),
                borderRadius: BorderRadius.circular(10)
              ),
              hintText: 'Usuario',
              hintStyle: TextStyle(color: Colors.white)
            ),
            style: TextStyle(color: Colors.white),
        ),
      ),
    );
    
  }

  Widget _crearpassw(){

    return  Padding(
        padding: EdgeInsets.only(right: 25.0, left: 25.0),      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(26, 90, 143, 1),
          borderRadius: BorderRadius.circular(10)
        ),
        child: TextField(
            obscureText: true,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 1.0,style: BorderStyle.solid ),
                borderRadius: BorderRadius.circular(10)
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 1.0,style: BorderStyle.solid ),
                borderRadius: BorderRadius.circular(10)
              ),
              hintText: 'Contraseña',
              hintStyle: TextStyle(color: Colors.white),
              suffixIcon: Container(child: Icon(Icons.remove_red_eye, color: Colors.white,))
            ),
            style: TextStyle(color: Colors.white), 
        ),
      ),
    );
    
  }
  

  Widget _botonAcceso(BuildContext context){
    return Container(
      padding: EdgeInsets.only(right: 25.0, left: 25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: RaisedButton(
          child: Text('Entrar', style: TextStyle(color: Color.fromRGBO(0, 76, 141, 5), fontSize: 18),),
          color: Colors.white,
          padding: EdgeInsets.all(20),
          onPressed: (){
            Navigator.pushNamed(context, 'inicial');
          },
        ),
      ),
    );
  }
  
  Widget _parteBaja(){
    return Container(
      
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 40),
            child: Row(
              children: [
                FadeInImage(
                  height: 70,
                  placeholder: AssetImage('assests/jar-loading.gif'),
                  image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Emblema_de_la_Junta_de_Andaluc%C3%ADa_2020.svg/1200px-Emblema_de_la_Junta_de_Andaluc%C3%ADa_2020.svg.png')
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  Text('Junta de Andalucía', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,)),
                  Text('Consejería de Educación y Deporte', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,))
                ],)
                
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text('v11.3.0', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, ),)
            ),
          ),
        ],
      ),
      
    );
  }

}
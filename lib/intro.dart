import 'package:flutter/material.dart';

class intro extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 55.0,
                backgroundImage: AssetImage('lib/assetimage/img150 (1).jpg'),
              ),
              Row(children: [
                Text(

                  'Chandan Manchanda',
                  textAlign: TextAlign.center,



                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color:  Colors.purple,
                  ),
                ),
              ],),

              Text('Flutter Developer 2.0',
                style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w200,

                ),),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 25.0,vertical: 10.0),
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text(
                    '9780107018',
                    style: TextStyle(color: Colors.purpleAccent),
                  ),
                ),
              ),
              Card(
                color: Colors.cyanAccent,
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.location_city),
                  title: Text(
                    'Amritsar',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      //   backgroundColor: Colors.black54
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );

  }

}
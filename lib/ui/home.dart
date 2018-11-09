import "package:flutter/material.dart";

class home extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return stateHome();
  }

}

class stateHome extends State<home>
{
  final TextEditingController _fieldController=new TextEditingController ();
int radioValue=0;
double weight=0.0;
void handleRadioValue(int value)
{
setState((){
  radioValue=value;
if(value==0)
  {
    weight=int.parse(_fieldController.text)*0.38;
  }

  else if(value==2)
  {
    weight=int.parse(_fieldController.text)*2.34;
  }

  else if(value==1)
  {
    weight=int.parse(_fieldController.text)*0.06;
  }
  debugPrint("$radioValue");
});
}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ( new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: new Text("Weight on Planet X", style: new TextStyle(fontSize: 18.0,color: Colors.white)),

      ),
      backgroundColor: Colors.blueGrey.shade300,
      body: new ListView(
        children: <Widget>[
          new Image.asset("/Users/ashukumar/IdeaProjects/planet/images/planet.png",
          width:150.0,
          height: 150.0,
          ),
          new TextField(

            controller: _fieldController,
            decoration: new InputDecoration(
              hintText: "Weight in Kg",
              icon: Icon(Icons.person),
              labelText: "User Weight"

            ),
          ),
          new Padding(padding: EdgeInsets.all(20.0)),
          new Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              new Radio<int>
                (
                value:0 ,groupValue:radioValue,onChanged: handleRadioValue,
                activeColor: Colors.amberAccent,
              ),
              new Text("Mars",
                  style: new TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),

              new Radio<int>
                (
                value:1 ,groupValue:radioValue,onChanged: handleRadioValue,
                activeColor: Colors.greenAccent,
              ),
                new Text("Pluto",
                style: new TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),

              new Radio<int>
                (
                value:2 ,groupValue:radioValue,onChanged: handleRadioValue,
                activeColor: Colors.redAccent,
              ),
              new Text("Jupiter",
                  style: new TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),

            ],
          ),
          new Padding(padding: EdgeInsets.all(20.0)),
          new Center(child: new Text("weight is $weight",
              style: new TextStyle(color: Colors.blue.shade900,fontWeight: FontWeight.bold,fontSize: 20.0),),
          ),
        ],
      )
    )
    );
  }

}
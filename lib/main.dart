import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
      ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primarySwatch: Colors.orange,  
        scaffoldBackgroundColor: Color.fromARGB(255, 0, 0, 0)
      ),
      home: const MyHomePage(title: ""),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double result = 0, number1 = 0, number2 = 0;
  
  final TextEditingController t1 = new TextEditingController(text: "");
  final TextEditingController t2 = new TextEditingController(text: "");

  void plus(){
    setState((){
      number1 = double.parse(t1.text);      
      number2 = double.parse(t1.text);
      result = number1 + number2;
    });
  }
  
   void cikarma(){
    setState((){
      number1 = double.parse(t1.text);
      number2 = double.parse(t1.text);
      result = number1 - number2;
    });
  }
  
   void bolme(){
    setState((){
      number1 = double.parse(t1.text);
      number2 = double.parse(t1.text);
      result = number1 / number2;
    });
  }
  
   void carpma(){
    setState((){
      number1 = double.parse(t1.text);
      number2 = double.parse(t1.text);
      result = number1 * number2;
    });
  }

  void one(){
    setState((){       
        t2.text += 1.toString();
        t1.text += 1.toString();      
    });
  }
  void two(){
    setState((){
      t1.text += 2.toString();
      t2.text += 2.toString();
    });
  }
  void three(){
    setState((){
      t1.text += 3.toString();
      t2.text += 3.toString();
    });
  }
  
  void four(){
    setState((){      
      t1.text += 4.toString();
      t2.text += 4.toString();
    });
  }
  void five(){
    setState((){
      t1.text += 5.toString();
      t2.text += 5.toString();
    });
  }
  void six(){
    setState((){
      t1.text += 6.toString();
      t2.text += 6.toString();
    });
  }

  void seven(){
    setState((){      
      t1.text += 7.toString();
      t2.text += 7.toString();
    });
  }
  void eigth(){
    setState((){
      t1.text += 8.toString();
      t2.text += 8.toString();
    });
  }

  FocusNode focus = FocusNode();
  void nine(){
    setState((){
      t1.text += 9.toString();
      t2.text += 9.toString();
    });
  }

  void reset(){
    setState(() {
      t1.clear();
      t2.clear();
      result = 0;
    });
  }  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: <Widget>[           
            TextField(
              cursorColor: Colors.transparent,              
              keyboardType: TextInputType.number,
              textAlign: TextAlign.right,
              autofocus: true,
              controller: t1,
              style: TextStyle(color: Colors.white, fontSize: 50),
              decoration: InputDecoration(filled: true,  fillColor: Colors.black, hintText: "Lütfen sayı giriniz", hintStyle: TextStyle(color: Colors.grey.shade800)),
            ),  
            Padding(padding: EdgeInsets.only(top: 10)),
             TextField(
              cursorColor: Colors.transparent,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.right,
              controller: t2,
              style: TextStyle(color: Colors.white, fontSize: 50),
              decoration: InputDecoration(filled: true,  fillColor: Colors.black, hintText: "Lütfen sayı giriniz", hintStyle: TextStyle(color: Colors.grey.shade800)),
            ),                  
            Padding(
              padding: EdgeInsets.only(top:17),
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "$result",
                  style: TextStyle(color: Colors.white, fontSize: 75),
                  textAlign: TextAlign.right,
                )
              ]
            ),                         
            Padding(
              padding: EdgeInsets.only(top:55),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  child: Text("7", style: TextStyle(color: Colors.white, fontSize: 50),),
                  onPressed:seven,
                  height: 50,
                  minWidth: 150,
                ),
                 MaterialButton(
                  child: Text("8", style: TextStyle(color: Colors.white, fontSize: 50),),
                  onPressed:eigth,
                   height: 50,
                  minWidth: 150,
                ),
                  MaterialButton(
                  child: Text("9", style: TextStyle(color: Colors.white, fontSize: 50),),
                  onPressed:nine,
                   height: 50,
                  minWidth: 150,
                ),
                 MaterialButton(
                  child: Text("/",style: TextStyle(color:Colors.orange.shade900, fontSize: 50)),
                  onPressed: bolme,
                   height: 50,
                  minWidth: 150,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top:35),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  child: Text("4", style: TextStyle(color: Colors.white, fontSize: 50),),
                  onPressed:seven,
                   height: 50,
                  minWidth: 150,
                ),
                 MaterialButton(
                  child: Text("5", style: TextStyle(color: Colors.white, fontSize: 50),),
                  onPressed:five,
                   height: 50,
                  minWidth: 150,
                ),
                  MaterialButton(
                  child: Text("6", style: TextStyle(color: Colors.white, fontSize: 50),),
                  onPressed:six,
                   height: 50,
                  minWidth: 150,
                ),
                 MaterialButton(
                  child: Text("X",style: TextStyle(color:Colors.orange.shade900, fontSize: 50)),
                  onPressed:carpma,
                   height: 50,
                  minWidth: 150,
                ),                     
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top:35),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  child: Text("1", style: TextStyle(color: Colors.white, fontSize: 50)),
                  onPressed:one,
                   height: 50,
                  minWidth: 150,
                ),
                 MaterialButton(
                  child: Text("2", style: TextStyle(color: Colors.white, fontSize: 50)),
                  onPressed:two,
                   height: 50,
                  minWidth: 150,
                ),
                  MaterialButton(
                  child: Text("3", style: TextStyle(color: Colors.white, fontSize: 50)),
                  onPressed:three,
                   height: 50,
                  minWidth: 150,
                ),    
                MaterialButton(
                  child: Text("-",style: TextStyle(color:Colors.orange.shade900, fontSize: 50)),
                  onPressed:cikarma,
                   height: 50,
                  minWidth: 150,
                ),
              ],
            ), 
            Padding(
              padding: EdgeInsets.only(top:35),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  child: Text("AC", style: TextStyle(color: Colors.orange.shade900, fontSize: 50),),
                  onPressed:reset,
                   height: 50,
                  minWidth: 150,
                ),
                 MaterialButton(
                  child: Text("0", style: TextStyle(color: Colors.white, fontSize: 50),),
                  onPressed:eigth,
                   height: 50,
                  minWidth: 150,
                ),
                  MaterialButton(
                  child: Text(".", style: TextStyle(color: Colors.white, fontSize: 50),),
                  onPressed:nine,
                   height: 50,
                  minWidth: 150,
                ),
                 MaterialButton(
                  child: Text("+",style: TextStyle(color:Colors.orange.shade900, fontSize: 50)),
                  onPressed: plus,
                   height: 50,
                  minWidth: 150,
                ),
              ],
            ), 
          ],
        ),
      ),
    );
  }
}
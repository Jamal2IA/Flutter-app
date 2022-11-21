import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:native_pdf_view/native_pdf_view.dart';


void main() {
  int a=0;
  runApp(new MaterialApp(
      home: new FirstScreen()
  ));
}



class MyApp extends StatefulWidget {

  @override
  String t='';
  String tt="";
  String path="";
  String ttt="";
  MyApp(String a, String b, String c, String d) {
    this.t = a;
    this.path = b;
    this.tt = c;
    this.ttt = d;
  }

  _State createState() => new _State();

}

class _State extends State<MyApp> {
  String _value =" ";





  void _onPressed(String value) {
    setState(() {
      _value = value;

    });
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        //'objets connectés'
        title:Text(widget.t.toUpperCase()),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.white,

      body: SingleChildScrollView(

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              color: Colors.purpleAccent,
              child:
              //Images/iStock-946094534.jpg
              Image.asset(widget.path),
            ),
            Container(
              width: double.infinity,
              height: 100.0,
              color: Colors.white,
              child: Text(widget.tt.toUpperCase(),style: TextStyle(fontSize: 35)),
            ),

            new Text(_value),
            //           "Ce cours se concentre sur les concepts pratiques de l'IoT tels que la détection, l'actionnement et la communication. Il couvre le développement de prototypes de l'Internet des objets (IoT), y compris des dispositifs de détection, d'actionnement, de traitement et de communication, pour vous aider à développer des compétences et des expériences."
            new RaisedButton(onPressed: () => _onPressed(widget.ttt),
              child: new Text("description du cours".toUpperCase(),style: TextStyle(fontSize: 14)),),
            new RaisedButton(onPressed: () => _onPressed(""),
              child: new Text("Réduire la description".toUpperCase(),style: TextStyle(fontSize: 14)),),
            new RaisedButton(onPressed: () => {Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => PdfPage()),),},
              child: new Text("Cours pdf".toUpperCase(),style: TextStyle(fontSize: 14)),),


          ],

        ),



      ),
    );

  }
}



class FirstScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return MaterialApp(home:Scaffold(
      appBar:AppBar(
        title:Text('COURS 2IA S3'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(


        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(

              width: double.infinity,
              height: 150.0,
              child: Center(


                child: Column( // add Column


                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Expanded(
                      child: FittedBox(
                        fit: BoxFit.contain, // otherwise the logo will be tiny
                        child: Image.asset('Images/11.png',height: 100,
                            width: 100  ),
                      ),
                    ),
                    Text('Objets connectés',textAlign: TextAlign.center, style: TextStyle( // your text
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)
                    ),

                    RaisedButton(onPressed: () => {Navigator.of(ctxt).push(
                      MaterialPageRoute(builder: (ctxt) => MyApp ('objets connectés','Images/iStock-946094534.jpg','Pr.MOHAMED NAOUM', "Ce cours se concentre sur les concepts pratiques de l'IoT tels que la détection, l'actionnement et la communication.")),),}, child: Text("plus de détails ".toUpperCase(),style: TextStyle(fontSize: 14)),color: Colors.grey), // your button beneath text


                  ],
                ),

              ),

            ),
            Container(
              width: double.infinity,
              height: 150.0,
              child: Column( // add Column

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.contain, // otherwise the logo will be tiny
                      child: Image.asset('Images/22.png',height: 100,
                          width: 100  ),
                    ),
                  ),
                  Text('Apprentissage automatique',textAlign: TextAlign.center, style: TextStyle( // your text
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)
                  ),
                  RaisedButton(onPressed: () => {Navigator.of(ctxt).push(
                    MaterialPageRoute(builder: (ctxt) => MyApp ('Apprentissage automatique','Images/ml.jpg','Pr.ABDELLATIF EL AFIA', "Ce cours se concentre sur les concepts pratiques d'apprentissage automatique tels que PAC, APAC et vc dimension.")),),}, child: Text("plus de détails ".toUpperCase(),style: TextStyle(fontSize: 14)),color: Colors.greenAccent), // your button beneath text
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 150.0,
              child: Column( // add Column

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.contain, // otherwise the logo will be tiny
                      child: Image.asset('Images/33.png',height: 100,
                          width: 100  ),
                    ),
                  ),
                  Text('Prétraitement des données',textAlign: TextAlign.center, style: TextStyle( // your text
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)
                  ),
                  RaisedButton(onPressed: () => {Navigator.of(ctxt).push(
                    MaterialPageRoute(builder: (ctxt) => MyApp ('Prétraitement des données','Images/td.jpg','Pr.IBRAHIM AMRANI JOUTEI IDRISSI', "Ce cours se concentre sur les concepts pratiques dU prétraitement des données.")),),}, child: Text("plus de détails ".toUpperCase(),style: TextStyle(fontSize: 14)),color: Colors.amberAccent), // your button beneath text
                ],
              ),
            ),

            Container(
              width: double.infinity,
              height: 150.0,
              child: Column( // add Column

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.contain, // otherwise the logo will be tiny
                      child: Image.asset('Images/44.png',height: 100,
                          width: 100  ),
                    ),
                  ),
                  Text('Systèmes distribués',textAlign: TextAlign.center, style: TextStyle( // your text
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)
                  ),
                  RaisedButton(onPressed: () => {Navigator.of(ctxt).push(
                    MaterialPageRoute(builder: (ctxt) => MyApp ("Systèmes distribués",'Images/sd.jpg','Pr.Yasser El Madani El Alami', "Ce cours se concentre sur les concepts pratiques des systèmes distribués tels que GPU et HPC.")),),}, child: Text("plus de détails ".toUpperCase(),style: TextStyle(fontSize: 14)),color: Colors.deepOrangeAccent), // your button beneath text
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 150.0,
              child: Column( // add Column

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.contain, // otherwise the logo will be tiny
                      child: Image.asset('Images/55.png',height: 100,
                          width: 100  ),
                    ),
                  ),
                  Text("Traitement d'images",textAlign: TextAlign.center, style: TextStyle( // your text
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)
                  ),
                  RaisedButton(onPressed: () => {Navigator.of(ctxt).push(
                    MaterialPageRoute(builder: (ctxt) => MyApp ("Traitement d'images",'Images/im.jpg','Pr.Hicham OMARA', "Ce cours se concentre sur les concepts pratiques du traitement d'images tels que la binarisation.")),),}, child: Text("plus de détails ".toUpperCase(),style: TextStyle(fontSize: 14)),color: Colors.cyanAccent), // your button beneath text
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 150.0,
              child: Column( // add Column

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.contain, // otherwise the logo will be tiny
                      child: Image.asset('Images/66.png',height: 100,
                          width: 100  ),
                    ),
                  ),
                  Text('Culture entrepreneuriale ',textAlign: TextAlign.center, style: TextStyle( // your text
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)
                  ),
                  RaisedButton(onPressed: () => {Navigator.of(ctxt).push(
                    MaterialPageRoute(builder: (ctxt) => MyApp ("Culture entrepreneuriale",'Images/ce.jpg','Pr.Abouziane DAABAJI', "Ce cours se concentre sur les concepts pratiques de culture entrepreneuriale tels que le business plan et étude de marché.")),),}, child: Text("plus de détails ".toUpperCase(),style: TextStyle(fontSize: 14)),color: Colors.lightBlue), // your button beneath text
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 150.0,
              //decoration:BoxDecoration(color: Colors.purple,borderRadius:BorderRadius.circular(10)),
              child: Column( // add Column

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.contain, // otherwise the logo will be tiny
                      child: Image.asset('Images/77.png',height: 100,
                          width: 100  ),
                    ),
                  ),
                  Text('Langue et communication',textAlign: TextAlign.center, style: TextStyle( // your text
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)
                  ),
                  RaisedButton(onPressed: () => {Navigator.of(ctxt).push(
                    MaterialPageRoute(builder: (ctxt) => MyApp ('Langue et communication','Images/com.jpg','Pr.AZIZ KOUR', "Ce cours se concentre sur les concepts pratiques dees langue et communication.")),),}, child: Text("plus de détails ".toUpperCase(),style: TextStyle(fontSize: 14))
                      ,color: Colors.purpleAccent), // your button beneath text
                ],
              ),
            ),
          ],
        ),
      ),

    )
    );
  }
}

class PdfPage extends StatefulWidget {

  const PdfPage({Key? key}) : super(key: key);
  @override
  _PdfPageState createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {

  int i=1;

  final pdfController = PdfController(
    //'Images/Multithreading.pdf'
    document: PdfDocument.openAsset('Images/Multithreading.pdf'),
  );
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(

      children: [
      Center(
        child: PdfView(
        controller: pdfController,
      )
    ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.1,
                child: RaisedButton(
                  child: Text("Page précédente"),
                  onPressed: () {
                    pdfController.jumpToPage(--i);

                  },
                ),
              ),
            ),
          ),

          Positioned.fill(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.1,
                child: RaisedButton(
                  child: Text("Page suivante"),
                  onPressed: () {
                    pdfController.jumpToPage(++i);

                  },
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(


                decoration:BoxDecoration(
                    color: Colors.purple,
                    borderRadius:BorderRadius.circular(10)
                ),
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.1,
                child: RaisedButton(
                  child: Text("Retour"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
          ),

        ],

      ),

    );
  }
}
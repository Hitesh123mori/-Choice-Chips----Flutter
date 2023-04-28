import 'package:flutter/material.dart' ;

void main()
{
  runApp(Myapp()) ;
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  List choice = ["Harsh","Hitesh","Aryan","Ankit"] ;
  int Index = 0 ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Choice Chip"),
        ),
        body: Center(
          child: Container(
            height: 600,
            width: 400,
            color: Colors.grey,
            child: ListView.builder(
                 itemCount: 4,
                itemBuilder: (BuildContext context , int index){
                   return Row(
                     children: [
                       ChoiceChip(
                           label: Text(choice[index]),
                           selected: Index == index ,
                           selectedColor: Colors.red,
                         onSelected: (value) {
                           setState(() {
                             Index = value ? index : 2;
                           });
                         },
                       )
                     ],
                   ) ;
                }
            ),
          ),
        ),
      ),
    );
  }
}

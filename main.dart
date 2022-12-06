//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

/*import 'package:flutter_demo/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring Material Widgets",
    home: Scaffold(
        appBar: AppBar(title:const Text("list view in flutter"),),
        body: getList(),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          tooltip: "Add item",
          onPressed: () {
            debugPrint("tap plus");
          },
    ),
      ),
    )
  );
}

List<String> getListItems(){
  var items=List<String>.generate(100, (index) => "Item $index");
  return items;
}

Widget getList(){
  var listItems=getListItems();
  var listview=ListView.builder(
      itemCount:listItems.length ,
      itemBuilder: (context,index){
        return ListTile(
          title: Text(listItems[index]),
          leading: const Icon(Icons.arrow_forward_ios),
          onTap: (){
            //debugPrint('${listItems[index]} was tapped');
            showSnackBar(context, listItems[index]);
          },
        );
      }
  );
  return listview;
}

void showSnackBar(BuildContext context,item){
  var snackBar=SnackBar(content: Text("you just tapped $item"),
  action: SnackBarAction(label: "undo",onPressed:(){
    debugPrint("Undo operation");
  }),);
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}*/
/*
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Stateful Widgets",
    home: FavouriteCity(),
  ));
}

class FavouriteCity extends StatefulWidget {
  const FavouriteCity({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _FavouriteCityState();
  }
}

class _FavouriteCityState extends State {
  var nameCity = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(title: const Text("Stateful Widget")),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput) {
                setState(() {
                  nameCity = userInput;
                });
              },
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Text("Your favourite city is $nameCity",),
            )
          ],
        ),
      ),
    );
  }
}*/
void main() {
  runApp(MaterialApp(
    color: Colors.teal,
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Center(child: Text("Dicee",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.red,
      ),
      body: const SafeArea(
        child: Dicepage()
      ),
    ),
  ));
}

class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftDiceNumber=1;
  int rightDiceNumber=6;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
                child: Image.asset("images/dice$leftDiceNumber.png"),
                onPressed: (){
                  setState(() {
                    leftDiceNumber=Random().nextInt(6)+1;
                  });
                  //print("Left dice is rolled\n");
                },
              )
          ),
          Expanded(
              child: TextButton(
                  child: Image.asset("images/dice$rightDiceNumber.png"),
                  onPressed:(){
                    setState(() {
                      rightDiceNumber=Random().nextInt(6)+1;
                    });
                    //print("Right dice rolled\n");
                  },
              )
          ),
        ],
      ),
    );
  }
}

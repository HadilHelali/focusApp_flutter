import 'package:example/Accueil/Accueil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Note extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List<String> subTasks = <String>['Call the restaurant ', 'Ask for the date '];
    return ElevatedButton(
      child: Text('ElevatedButton'),

      onPressed: () {
       showModalBottomSheet(context: context, isScrollControlled: true, builder:
       (context)=> Container(
           height: MediaQuery.of(context).size.height *0.8,
        padding:
        EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Stack(
         fit: StackFit.expand,
        alignment: AlignmentDirectional.topCenter,
        children: <Widget>[
        Positioned(
        top: MediaQuery.of(context).size.height / 25,
        left: 0,
        child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
        top: Radius.elliptical(175, 30),
        ),
        ),
        ),
        ),
        Positioned(
        top: MediaQuery.of(context).size.height / 2 - 340,
        child: Container(
        child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
        InkWell(
        onTap: () {
        Navigator.pop(context);
        },
        child: Container(
        width: 50,
        height: 50,
        child: Image.asset('assets/Accueil/fab-delete.png'),
        decoration: const BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: <Color>[
        Colors.white, Colors.red,
        ],
        ),
        borderRadius: BorderRadius.all(
        Radius.circular(50.0),
        ),
        boxShadow: [
        BoxShadow(
        color: Colors.red,
        blurRadius: 10.0,
        spreadRadius: 5.0,
        offset: Offset(0.0, 0.0),
        ),
        ],
        ),
        ),
        ),
        Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
        SizedBox(height: 10),
        Text(
        'Add new Note',
        style: TextStyle(
        fontSize: 13, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 10),
        Container(
        width: MediaQuery.of(context).size.width / 1.2,
        child: TextFormField(
        initialValue: 'Today I focused on... ',
        autofocus: true,
        style: TextStyle(
        fontSize: 22, fontStyle: FontStyle.normal),
        decoration:
        InputDecoration(border: InputBorder.none),
        ),
        ),
        SizedBox(height: 5),



        RaisedButton(
        onPressed: () {
        subTasks.add('Add Notes');
        //print(subTasks.toString());
        },
        textColor: Colors.white,
        padding: const EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        ),
        child: Container(
        width: 120,
        height: 40,
        decoration: const BoxDecoration(
        gradient: LinearGradient(
        colors: <Color>[
          Colors.lightBlue,
          Colors.blue,
        ],
        ),
        borderRadius: BorderRadius.all(
        Radius.circular(8.0),
        ),
        boxShadow: [
        BoxShadow(
        color: Colors.blue,
        blurRadius: 2.0,
        spreadRadius: 1.0,
        offset: Offset(0.0, 0.0),
        ),
        ],
        ),
        padding:
        const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Center(
        child: const Text(
        'I did',
        style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500),
        ),
        ),
        ),
        ),
        SizedBox(height: 10),
        Container(
        width: MediaQuery.of(context).size.width / 1.2,
        height: 150,
        child: ListView.builder(
        itemCount: subTasks.length,
        itemBuilder: (BuildContext context, int index) {
        return Container(
        margin: const EdgeInsets.only(bottom: 5.0),
        child: TextFormField(
        initialValue: subTasks[index],
        autofocus: false,
        style: TextStyle(
        fontSize: 18,
        fontStyle: FontStyle.normal,
        color: Colors.grey[850],
        ),
        decoration: InputDecoration(
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
        color: Colors.grey,
        width: 1.0,
        ),
        borderRadius: BorderRadius.all(
        Radius.circular(50.0),
        ),
        ),
        focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
        color: Colors.blue,
        width: 2.0,
        ),
        borderRadius: BorderRadius.all(
        Radius.circular(50.0),
        ),
        ),
        ),
        ),
        );
        },
        ),
        ),
        SizedBox(height: 25),
        RaisedButton(
        onPressed: () {
        Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Accueil()),
        );
        // Navigator.pop(context);
        },
        textColor: Colors.white,
        padding: const EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        ),
        child: Container(
        width: MediaQuery.of(context).size.width / 1.2,
        height: 60,
        decoration: const BoxDecoration(
        gradient: LinearGradient(
        colors: <Color>[
          Colors.lightBlue,
          Colors.blue,
        ],
        ),
        borderRadius: BorderRadius.all(
        Radius.circular(8.0),
        ),
        boxShadow: [
        BoxShadow(
        color: Colors.blue,
        blurRadius: 2.0,
        spreadRadius: 1.0,
        offset: Offset(0.0, 0.0),
        ),
        ],
        ),
        padding:
        const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Center(
        child: const Text(
        'Add Note',
        style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500),
        ),
        ),
        ),
        ),
        SizedBox(height: 20),
        ],
        ),
        ],
        ),
        ),
        ),
        ],
        ),
        )
       );

      },
    );
  }

}
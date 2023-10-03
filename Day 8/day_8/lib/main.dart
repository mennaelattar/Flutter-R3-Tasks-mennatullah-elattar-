import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Day 8"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
                child: Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Icon(Icons.diamond_outlined,size: 50,),
                        Text('SHAREIN',style: TextStyle(fontSize: 20),),
                      ],
                    )),
                Expanded(child: Column(
                  children: [
                    TextField(maxLines: 2,textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                          hintText: 'Username',
                          border: UnderlineInputBorder(),
                          filled: true,
                          fillColor: Color(0xFFE7DFEC)),
                    ),
                    SizedBox(height: 20,),
                    TextField(maxLines: 2,textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          border: UnderlineInputBorder(),
                          filled: true,
                          fillColor: Color(0xFFE7DFEC)),
                    ),
                  ],
                ),flex: 2,),


              ],
            )),
          )),
    ),
  );
}

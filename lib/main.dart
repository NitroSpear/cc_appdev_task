import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
void main()
{
  runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Center(
              child: Text('Flashcards'),
            ),
            backgroundColor: Colors.blueGrey[900],
          ),
          floatingActionButton: FloatingActionButton (onPressed: ()
          {
            print('pressed');
          },
            child: Icon(Icons.arrow_forward_ios_sharp),
          ),
          bottomNavigationBar: GNav(
            tabs: const [
              GButton(
                icon: Icons.credit_card_rounded,
                text: 'Cards',
              ),
              GButton(
                icon: Icons.edit,
                text: 'Practise',
              ),
            ],
          ),
        body: Column(
            children: [
              Container(
            height: 350.0,
            width: 350.0,
            margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              children: [
                Container(
                  child: Text(
                      'Card #1',
                      style: TextStyle(fontSize: 25.0),
                  ),
                  margin:EdgeInsets.only(top: 20.0, bottom: 60.0)
                ),
                Container(
                  child: Text(
                      'Title',
                    style: TextStyle(fontSize: 75.0),
                  ),
                ),

             ],
           ),
         ),
          Container(
            margin: EdgeInsets.only(right: 200.0, top: 160.0,),
            child: TextButton (
              onPressed: ()
              {
                print('pressed');
              },
              child: Text(
                  'Show Answer',
                style: TextStyle(fontSize: 20.0,
                color: Colors.black),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black45)
              ),

            ),
          ),
            ],
        ),


        ),
      ),
  );
}



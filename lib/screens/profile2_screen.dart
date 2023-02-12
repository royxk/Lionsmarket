import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:widget_practice/screens/finish_profile_screen.dart';

class profile2 extends StatelessWidget {
  const profile2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.close,
              )
          )
        ],
      ),
      body: Column(
      children: [
        Container(
          height: 150,
          color: Colors.blue,
          child: Center(
            child: Text("Connect with your neightbors",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,


              ),),
          ),
        ),
        Expanded(child: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: 20,
          itemBuilder: (c, i){
            return Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide())
              ),
              child: ListTile(
                leading: Image.asset('assets/images/google_logo.png'),
                title: Text('Robin'),
                trailing: ElevatedButton(
                  child: Text("Follow"),
                  onPressed: (){},
                ),
              ),
            );
          },
        ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          height: 100,
          width: double.infinity,
          child: InkWell(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => finishProfile())
              );
            },
            child: Ink(
              child: Center(
                child: Text("next"),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              width: 100,
              height: 50,

            ),
          ),
        ),
      ],
    ));
  }
}
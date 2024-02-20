import 'package:flutter/material.dart';
class que extends StatefulWidget {
  const que({super.key});

  @override
  State<que> createState() => _queState();
}

class _queState extends State<que> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
              height: 50,
            ),
            Text('No More Questions',
            style: TextStyle(fontSize: 28,color: Colors.white,fontStyle: FontStyle.italic),),
            SizedBox(height: 50,),

            Container(
                height: 60,
                width: 300,
                child: ElevatedButton(
                    style:ElevatedButton.styleFrom(backgroundColor: Colors.grey,foregroundColor: Colors.white),
                    onPressed: (){}, child: Text('true'))),
            SizedBox(height: 50,),
            Container(
                height: 60,
                width: 300,
                child: ElevatedButton(
                    style:ElevatedButton.styleFrom(backgroundColor: Colors.brown,foregroundColor: Colors.white),
                    onPressed: (){}, child: Text('false'))),
          ],
        ),
      ),

    );
  }
}






import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  const HomePage();


  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      position: DecorationPosition.background,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/Sunset_Background_vector_2.jpg'),
        fit: BoxFit.fill),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(26, 0, 26, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 60),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Welcome, Chris',
             style: TextStyle(
               fontSize: 30,
               fontWeight: FontWeight.w400
             ),),
            ),
            SizedBox(height: 15,),
        Align(
          alignment: Alignment.centerLeft,
          child:Text('28 Febuary, 2020',
          style: TextStyle(
            fontWeight: FontWeight.w500
          ),),
        ),
            SizedBox(height: 60),
            activities(),
           Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('what do you need Today?',
              style: TextStyle( color: Colors.white,
              fontWeight: FontWeight.w500),),
            ),
            bottomListView()


          ],
        ),
      ),
    );
  }


  Widget activities(){
    return Container(

      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0)
        ),
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Expanded(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.directions_run,
                    color: Colors.orange,),
                    SizedBox(width: 10,),
                    Text('Activities Today',
                    style: TextStyle(color: Colors.orange),),
                    Spacer(),
                    Text('8:00 pm',
                    style: TextStyle(color: Colors.grey),),
                  ],
                ),
                SizedBox(height: 5,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Meditation and Relaxation',
                  textAlign: TextAlign.start,),
                )
              ],
            ),
          ),
        ),
      ),
      );
  }

  Widget bottomListView(){
    return Container(
      height:100.0,
      child:  ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                bottomListChildren(Icons.directions_run, 'Meditation Zen',
                    'Placeholder text'),
                bottomListChildren(Icons.book, 'Time to read',
                'Recommended in afternooon')

              ],
            )
    );
  }

  Widget bottomListChildren(IconData icon,String title, String subtitle){
    return Container(
      width: 300.0,

      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0)
        ),
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Expanded(
            child: Row(
              children: <Widget>[
                Icon(icon,
                color: Colors.white,),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(title,
                      style: TextStyle(
                        color: Colors.white,
                          fontWeight: FontWeight.w500
                      ),),
                    Text(subtitle,
                      style: TextStyle(
                        color: Colors.white,),
                    )
                  ],
                ),
                Spacer()

              ],
            ),
          ),
        ),
      ),
    );
  }

}
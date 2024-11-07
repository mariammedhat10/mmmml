import 'package:bmi/second.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double he=0;
  int age=0;
  bool tap=false;
  int wight=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("BMI",style: TextStyle(color: Colors.white,fontSize:30 ),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    tap=!tap;
                  });
                },
                child: Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                      color: tap? Colors.grey[700]:Colors.black,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.male_rounded,color: Colors.black,size: 60,),
                      Text("Male",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 30),)
                    ],
                  ),
                ),
              ),
              Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.female_rounded,color: Colors.white,size: 60,),
                    Text("Female",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),)
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: 350,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.black,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              children: [
                Text("Height",style: TextStyle(color: Colors.white,fontSize: 30),),
                Text("${he.round()}",style: TextStyle(color: Colors.white,fontSize: 30),),
                Slider(
                    value: he,
                    min: 0.0,
                    max: 200.0,
                    divisions: 10,
                    label: he.round().toString(),
                    activeColor: Colors.green,
                    onChanged: (value)
                    {
                      setState(() {
                        he=value;
                      });
                    }
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Age",style: TextStyle(fontSize: 30,color: Colors.white),),
                    Text("$age",style: TextStyle(fontSize: 30,color: Colors.white),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: (){
                              setState(() {
                                age++;
                              });
                            },
                            icon: Icon(Icons.add,color: Colors.white,)
                        ),
                        IconButton(
                            onPressed: (){
                              setState(() {
                                if(age!=0)
                                  {
                                    age--;
                                  }
                              });
                            },
                            icon: Icon(Icons.remove,color: Colors.white,)
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Wight",style: TextStyle(fontSize: 30,color: Colors.white),),
                    Text("$wight",style: TextStyle(fontSize: 30,color: Colors.white),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: (){
                              setState(() {
                                wight++;
                              });
                            },
                            icon: Icon(Icons.add,color: Colors.white,)
                        ),
                        IconButton(
                            onPressed: (){
                              setState(() {
                               if(wight!=0)
                                 {
                                   wight--;
                                 }
                              });
                            },
                            icon: Icon(Icons.remove,color: Colors.white,)
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: Size(250, 70)
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Second()));
              },
              child: Text("Navigate",style: TextStyle(color: Colors.white,fontSize: 20),)
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ContainerPart extends StatelessWidget {
  const ContainerPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
           padding: EdgeInsets.only(top: 30.0,left: 0.0),
           margin: EdgeInsets.only(left: 0.0),
           height: 150.0,
           width: 165.0,
           decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(10.0)
           ),
          child: Column(
            children: [
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: Icon(Icons.av_timer_outlined,color: Colors.green.shade400,),
              ),
              SizedBox(height: 10.0,),
              Text("50%",style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'RenogareSoft',
              ),
              ),
              SizedBox(height: 2.0,),
              Container(
                margin: EdgeInsets.only(right: 1.0),
                child: Text("Perfomance",style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  fontFamily: 'Roboto Slab',
                ),),
              )
            ],
          ),
          ),
        SizedBox(width: 15.0,),
        Container(
          padding: EdgeInsets.only(top: 30.0,left: 0.0),
          margin: EdgeInsets.only(left: 0.0),
          height: 150.0,
          width: 165.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0)
          ),
          child: Column(
            children: [
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: Image.asset("assets/images/bar.jpeg"),
              ),
              SizedBox(height: 10.0,),
              Text("80%",style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'RenogareSoft',
              ),
              ),
              SizedBox(height: 2.0,),
              Container(
                margin: EdgeInsets.only(right: 1.0),
                child: Text("Min.Perfomance",style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  fontFamily: 'Roboto Slab',
                ),),
              )
            ],
          ),
        ),
        SizedBox(width: 15.0,),
        Container(
          padding: EdgeInsets.only(top: 30.0,left: 0.0),
          margin: EdgeInsets.only(left: 0.0),
          height: 150.0,
          width: 165.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0)
          ),
          child: Column(
            children: [
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: Image.asset("assets/images/bar1.png"),
              ),
              SizedBox(height: 10.0,),
              Text("75%",style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'RenogareSoft',
              ),
              ),
              SizedBox(height: 2.0,),
              Container(
                margin: EdgeInsets.only(right: 1.0),
                child: Text("Avg.Perfomance",style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  fontFamily: 'Roboto Slab',
                ),),
              )
            ],
          ),
        ),
      ],
    );
  }
}

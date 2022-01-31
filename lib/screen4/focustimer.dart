import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FocusTimer extends StatefulWidget {
  const FocusTimer({Key? key}) : super(key: key);

  @override
  _FocusTimerState createState() => _FocusTimerState();
}

class _FocusTimerState extends State<FocusTimer>
    with TickerProviderStateMixin {

   late AnimationController controller ;
   bool isStarted = false ;
   bool isPlaying = false ;

   //we create a Timer to be able to decrement the value of the counter
   //by 1 each second

   String get countText {
     Duration count = controller.duration! * controller.value;
     return
     //is Dismissed :Whether this animation is stopped at the beginning
       controller.isDismissed?'${(controller.duration!.inHours).toString().padLeft(2,'0')}:${(controller.duration!.inMinutes).toString().padLeft( 2 , '0')}:${(controller.duration!.inSeconds % 60).toString().padLeft(2,'0')}':
     '${(count.inHours).toString().padLeft(2,'0')}:${(count.inMinutes).toString().padLeft( 2 , '0')}:${(count.inSeconds % 60).toString().padLeft(2,'0')}';
   }
   double progress =1.0 ;


    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //AminationController let's us :
    // Play an animation forward or in reverse, or stop an animation.
    // Set the animation to a specific value.
    // Define the upperBound and lowerBound values of an animation.
    // Create a fling animation effect using a physics simulation.
    controller = AnimationController(
        vsync: this ,
        duration: Duration(seconds: 60) ,
    );

    //this fonction runs everytime the AnimationController value changes
    controller.addListener(() {

      if(controller.isAnimating) {
        setState(() {
          progress = controller.value;
        });
      }else{
        setState(() {
          progress = 1.0;
        });
      }

      if(countText == '00:00:00'){
        isStarted = false ;
        isPlaying = false ;

      }
    });
  }

  //dispose of the controller and animation when there are not active
    @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();

  }
    Widget get showButton {
     if(isStarted == false){
       return(
           FlatButton(
             color: Colors.transparent,
             height: 39.5,
             minWidth: 137.0,
             //StadiumBorder() ;
             shape: StadiumBorder(
               side: BorderSide(
                   color: Color.fromRGBO(244, 71, 113, 1), width: 2),
             ),
             onPressed: () {
               setState(() {
                 isStarted = true ;
                 isPlaying = true ;
               });
               //runs the animation in reverse in our case it will lower the value according to the value assigned by the Tiker
               controller.reverse(
                   from: controller.value == 0 ? 1.0 : controller.value
               );
             },
             child: Text(
               'Start',
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 18,
                 fontFamily: 'Spartan',
                 fontStyle: FontStyle.normal,
                 fontWeight: FontWeight.w600,
               ),

             ),)
       );
     }else{
       return(
       Row(
         mainAxisAlignment: MainAxisAlignment.center ,
         children: [
           //Play Pause Button
           FlatButton.icon(
             icon: isPlaying == true?Icon(Icons.pause_circle_outline , color: Colors.white,):Icon(Icons.play_arrow_outlined ,color: Colors.white,),
             minWidth: 120,
             color: Colors.transparent,
             //StadiumBorder() ;
             shape: RoundedRectangleBorder(
               borderRadius : BorderRadius.circular(50.0),
               side: BorderSide(
                   color: Color.fromRGBO(244, 71, 113, 1), width: 2),
             ),
             onPressed: () {
               if(controller.isAnimating) {
                 //stops the controller at the current value
                 controller.stop();
                 setState(() {
                   isPlaying = false ;
                 });
               }else{
                 //runs the animation in reverse in our case it will
                 // lower the value according to the value assigned by
                 // the Tiker
                 controller.reverse(
                     from: controller.value == 0 ? 1.0 : controller.value
                 );
                 setState(() {
                   isPlaying = true ;
                 });
               }
             },
             label: Text(
               isPlaying == true?'Pause':'Resume',
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 18,
                 fontFamily: 'Spartan',
                 fontStyle: FontStyle.normal,
                 fontWeight: FontWeight.w600,
               ),

             ),),
           SizedBox(
             width: 10.0,
           ),
           //Stop Button
           FlatButton.icon(
             icon: Icon(Icons.stop_outlined , color: Colors.white,),
             minWidth: 120,
             color: Colors.transparent,
             //StadiumBorder() ;
             shape: RoundedRectangleBorder(
               borderRadius : BorderRadius.circular(50.0),
               side: BorderSide(
                   color: Color.fromRGBO(244, 71, 113, 1), width: 2),
             ),
             onPressed: () {
               //runs the animation in reverse in our case it will lower the value according to the value assigned by the Tiker
               controller.reset();
               setState(() {
                 isStarted = false ;
                 isPlaying = false ;
               });

             },
             label: Text(
               'Stop',
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 18,
                 fontFamily: 'Spartan',
                 fontStyle: FontStyle.normal,
                 fontWeight: FontWeight.w600,
               ),

             ),),
         ],
       )
       );
     }

    }


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Let's focus",
            style: TextStyle(
              fontFamily: 'Spartan' ,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              fontSize: 16,
              color: Colors.white,
            ),),
            SizedBox(
              height: 30,
            ),
            Stack(
              alignment: Alignment.center,
              children:[
                SizedBox(
                    width: 246.42,
                    height: 246.42,
                    child: CircularProgressIndicator(

                      color: Color.fromRGBO(244, 71, 113, 1),
                      strokeWidth: 8,
                      backgroundColor: Color.fromRGBO(43, 48, 62, 1),
                      value: progress,

                    )
                ),
                GestureDetector(
                  onTap: () {
                    if(controller.isDismissed){
                    showCupertinoModalPopup(
                        context: context,
                        builder: (context) => Container(

                          margin: EdgeInsets.all(20),
                          padding: EdgeInsets.all(20),
                          height: 150,
                          child: CupertinoTimerPicker(
                            backgroundColor: Color.fromRGBO(244, 71, 113, 1),
                              initialTimerDuration: controller.duration!,
                              onTimerDurationChanged: (time) {
                                setState(() {
                                  controller.duration = time ;
                                }
                                );
                              }
                              ),
                        ),
                    );}
                  },
                  child: AnimatedBuilder(
                    animation: controller,
                    //the builder will return the animated widget
                    builder: (context,child) => Text(
                        countText,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontFamily: 'Spartan',
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                        ),
                      ),
                  ),
                ),
              ]
            ),
            SizedBox(
              height: 30,
            ),
             showButton ,

          ],
        ),
      ),
    );
  }



  
}

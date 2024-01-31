import 'package:flutter/material.dart';
import 'package:profile_screen/widgets/clipper.dart';
import 'package:profile_screen/widgets/text_util.dart';
List<String>stringList=["Phone","Sms","Camera","Apps"];
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff242627),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: MediaQuery.sizeOf(context).height*0.45,
              width: double.infinity,
             decoration:const  BoxDecoration(
               image: DecorationImage(
                 image: AssetImage("assets/wallpaper.jpeg"),fit: BoxFit.cover,colorFilter: ColorFilter.mode(Colors.black45, BlendMode.overlay)
               ),
               color: Colors.blue,),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextUtil(text: "10.07.25",size: 20,),
                          TextUtil(text: "Jun Sun 23",size: 22,color: Theme.of(context).cardColor),
                          TextUtil(text: "22*C clear sky",size: 16,color: Theme.of(context).cardColor),
                        ],
                      ),
                      Container(
                        height: 60,width: 60,
                        decoration:const  BoxDecoration(
                          shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/moon.png"),fit: BoxFit.cover
                            ),
            
                      ),)
                    ],
                  ),
               const  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                       const  Icon(Icons.bolt,size: 150,color: Color(0xff353c3d),),
                        TextUtil(text: "79%",size: 50,weight: true,)
                      ],
                      
                    ),
                      Column(
                        children: [
                          for(int i =0; i<stringList.length;i++)...[  Container(
                            height: 40,
                            width: 120,
                            margin:const  EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Theme.of(context).cardColor))),
                            alignment: Alignment.center,
                            child: TextUtil(text: stringList[i],color: Theme.of(context).cardColor,),
                          ),]
                        ],
                      )
                    ],
                  ),
                  const  Spacer(),
            
                ],
              ),
            ),
          )


        ],
      )

    );
  }
}
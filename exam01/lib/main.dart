
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home : Scaffold(
//         appBar : AppBar(
//           title : Text('namecard')
//         ),
//         body : Row(
//           //mainAxisSize : MainAxisSize.max,
//           //mainAxisAlignment: MainAxisAlignment.spaceAround,
//           //crossAxisAlignment: CrossAxisAlignment.baseline,
//           // children: [
//           //   //Expanded(child: BlueBox()),
//           //   //Expanded(child : BlueBox()),
//           //   BlueBox(),
//           //   // SizedBox(
//           //   //   width : 50,
//           //   // ),
//           //   Spacer(flex: 1),
//           //   BlueBox(),
//           //   BlueBox(),
//           //   //BiggerBlueBox(),
//           //   //BlueBox(),
//           //   // Flexible(
//           //   //   fit: FlexFit.tight,
//           //   //   flex: 1,
//           //   //   child: BlueBox(),
//           //   // ),
//           //   // Flexible(
//           //   //   fit: FlexFit.tight,
//           //   //   flex: 1,
//           //   //   child: BlueBox(),
//           //
//           // ],
//           crossAxisAlignment : CrossAxisAlignment.center,
//           textBaseline: TextBaseline.alphabetic,
//           children: [
//             Image.network('https://urlzs.com/RsqCz')
//           ],
//           // children: [
//           //   Text('hey',
//           //   style : TextStyle(
//           //     fontSize: 30,
//           //     fontFamily: 'Futura',
//           //     color : Colors.blue
//           //   )),
//           //   Text('hey',
//           //   style : TextStyle(
//           //     fontSize: 50,
//           //     fontFamily: 'Futura',
//           //     color : Colors.blue
//           //   )),
//           //   Text('hey',
//           //   style : TextStyle(
//           //     fontSize: 40,
//           //     fontFamily: 'Futura',
//           //     color : Colors.blue
//           //   )),
//           // ],
//         )
//       )
//     );
//   }
// }
//
// class BlueBox extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width : 50,
//       height :50,
//       decoration: BoxDecoration(
//         color : Colors.blue,
//         border : Border.all(),
//       ),
//     );
//   }
//
// }
//
// class BiggerBlueBox extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 50,
//       height: 100,
//       decoration: BoxDecoration(
//         color: Colors.blue,
//         border: Border.all(),
//       ),
//     );
//   }
// }


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar : AppBar(
          title: Text('namecard'),
          backgroundColor: Colors.red,
        ),
        body :

          Column(
          mainAxisSize : MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image : AssetImage('images/logo.png'),color: Colors.blue[900], width: 150,),
            Row(
              crossAxisAlignment : CrossAxisAlignment.start,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text('서울시우수기업브랜드',style : TextStyle(fontSize: 12,color: Colors.blue[900])),
                Spacer(flex: 1,),
                Text('R&D | 대리',style: TextStyle(fontSize: 20),)
              ],
            ),
            Row(
              children: [
                Spacer(flex: 1,),
                Text('김해동',style : TextStyle(fontSize: 30,letterSpacing: 8 ))
              ],
            ),
            Container(
              height: 30,
            ),
            Row(
              children: [
                Spacer(flex: 1,),
                Text('아이알링크(주) 서울특별시 성동구 성수일로4길 25, 13층',style : TextStyle(fontSize: 12)),
              ],
            ),
            Row(
              children: [
                Spacer(flex: 1,),
                Text('(성수동2가, 서울숲코오롱디지털타워1차) 04781', style : TextStyle(fontSize: 12),),
              ],
            ),
            Container(
              height: 30,
            ),
            Row(
              children: [
                Spacer(flex: 1,),
                Text('Direct. 02-6905-2835 T.02-6905-2800 F.02-6905-2801',style : TextStyle(fontSize: 12)),
              ],
            ),
            Row(
              children: [
                Spacer(flex: 1,),
                Text('010.2277.3524 haedongkim@irlink.co.kr  www.irlink.co.kr', style : TextStyle(fontSize: 12)),
              ],
            ),

          ],
        ),
      )
    );
  }
}
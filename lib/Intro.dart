import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class IntroApp extends StatefulWidget {
  const IntroApp({Key? key}) : super(key: key);

  @override
  State<IntroApp> createState() => _IntroAppState();
}

class _IntroAppState extends State<IntroApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDE7456),
      body: Center(
        child: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 100,),
                // Ảnh biểu tượng
                ClipRRect(
                  borderRadius: BorderRadius.circular(500),  // bo tròn ảnh
                  // kích thước ảnh
                  child: SizedBox(
                    width: 300, height: 300,
                    child: Image.asset('assets/images/icon_coffee.jpg',fit: BoxFit.cover,),
                  ),
                ),
                SizedBox(height: 30,),
                Text('Một ngày tuyệt vời cho 1 tách ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.brown.shade800),),
                SizedBox(height: 10,),
                // Text COFFEE
                _buildTextIntro(),
                // 2 nút 
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildButtons(nameButton: "Đăng Nhập"),
                      _buildButtons(nameButton: "Đăng Ký"),
                    ],
                  ),
                ),
                // Hotline
                _buildHotline(),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// --------------- Đoạn Text COFFEE ---------------------------------
Widget _buildTextIntro() {
  const colorizeColors = [
  Colors.brown,
  Colors.blue,
  Colors.yellow,
  Colors.red,
];

const colorizeTextStyle = TextStyle(
  fontSize: 50.0,
  fontFamily: 'Horizon',
);
  return Container(
    child: Center(
    child: AnimatedTextKit(
      animatedTexts: [
        ColorizeAnimatedText(
          'COFFEE',
          textStyle: colorizeTextStyle,
          colors: colorizeColors,
        ),
      ],
      isRepeatingAnimation: true,
      onTap: () {
        print("Tap Event");
      },
    ),
),
  );
}

// -------------- NÚT Button -------------------------------
Widget _buildButtons({required String nameButton}) {
  return Container(
    width: 150, height: 50,
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black,  // màu
            blurRadius: 14,   // tỷ lệ mờ
            spreadRadius: 0,  // độ lan rộng
            offset: Offset(0, 4), // trục vị trí đổ theo
        ),
      ],
    ),
    child: ElevatedButton(
      onPressed: (){

      }, 

      child: Text(nameButton, style: TextStyle(fontSize: 20),),

      style: ElevatedButton.styleFrom(
      primary: Colors.teal,  // màu nền
      onPrimary: Colors.white,   // Màu chữ
      shadowColor: Colors.red,  // màu đổ bóng khi nhấn
      elevation: 5,
    ),
    ),
  );
}

// -------------- HOTLINE -------------------------------
Widget _buildHotline() {
  return RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                text: "HOTLINE : ",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic, 
                  fontSize: 20, 
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: "0123456789",
                recognizer: new TapGestureRecognizer()..onTap = () => print('Tap Here onTap'),
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20, 
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
          // căn chữ được viết ở giữa
          textAlign: TextAlign.center,
  );
}

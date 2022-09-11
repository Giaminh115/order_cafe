import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({Key? key}) : super(key: key);

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  // biến kiểm tra mk
  bool checkPass = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              // Đặt màu lan
              gradient:
                  LinearGradient(// gradient(dốc) , LinearGradient(đường dốc)
                      colors: [
            Color(0xffDE7456),
            Color(0xff00539CF),
          ])), // màu dốc
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 80,
                        ),
                        _buildTFuser(),
                        SizedBox(height: 60),
                        _buildTFpass(),
                        SizedBox(
                          height: 10,
                        ),
                        // Text quên mật khẩu
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Align(
                            alignment: Alignment
                                .centerRight, // đặt vị trí ở giữa bên phải
                            // nội dung đoạn text
                            child: InkWell(
                              onTap: () {
                                print("Tap on Forgot password?");
                              },
                              child: Text(
                                'Quên Mật Khẩu?',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(.8),
                                    fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        _buildBtnLogin(),
                        SizedBox(
                          height: 80,
                        ),
                        _buildAppLogin(),
                        SizedBox(
                          height: 100,
                        ),
                        _buildWantSignUp()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // TextField UserName
  Widget _buildTFuser() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
        ),
        child: TextField(
          style: TextStyle(color: Colors.white, fontSize: 15),
          // màu con trỏ
          cursorColor: Colors.white,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            // text ẩn
            hintText: 'Tài Khoản Facebook,Email,Apple',
            // text style
            hintStyle: TextStyle(color: Colors.white70, fontSize: 15),
            // Đặt vị trí Icon ngang vs Text
            prefixIconConstraints: // prefixIconConstraints(Ràng buộc biểu tượng tiền tố)
                BoxConstraints(maxHeight: 35), // BoxConstraints(prefixIcon)
            // Đặt biểu tượng
            prefixIcon: Padding(
              // prefixIcon(biểu tượng tiền tố)
              padding: EdgeInsets.only(right: 10, left: 5),
              child: Icon(
                Icons.mail, 
                color: Colors.white70,
                size: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }

  // TextField PassWord
  Widget _buildTFpass() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
        ),
        child: TextField(
          style: TextStyle(color: Colors.white, fontSize: 15),
          // màu con trỏ
          cursorColor: Colors.white,
          // đặt biến bool cho passWord
          obscureText: checkPass ? false : true,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.green, width: 50)),
            // text ẩn
            hintText: 'Mật Khẩu',
            // text style
            hintStyle: TextStyle(color: Colors.white70, fontSize: 15),
            // Đặt vị trí Icon ngang vs Text
            prefixIconConstraints: // prefixIconConstraints(Ràng buộc biểu tượng tiền tố)
                BoxConstraints(maxHeight: 35), // BoxConstraints(prefixIcon)
            // Đặt biểu tượng
            prefixIcon: Padding(
              // prefixIcon(biểu tượng tiền tố)
              padding: EdgeInsets.only(right: 10, left: 5),
              child: Icon(
                Icons.lock,
                color: Colors.white70,
                size: 30,
              ),
            ),
            // Đặt vị trí Icon ngang vs Text
            suffixIconConstraints: // suffixIconConstraints(ràng buộc biểu tượng hậu tố)
                BoxConstraints(maxHeight: 35), // BoxConstraints (Ràng buộc hộp)
            // Sự kiện khi click vào
            suffixIcon: GestureDetector(
              // suffixIcon(biểu tượng hậu tố), GestureDetector(Máy dò cử chỉ)
              onTap: () {
                setState(() {
                  checkPass = !checkPass; // đặt lại kiểm tra Pass
                });
              },
              // Icon ản hiện Pass
              child: Padding(
                // căn lề Icon
                padding: EdgeInsets.only(left: 10, right: 20),
                // Đặt Icon
                child: Icon(
                  // Đặt ản hiện
                  checkPass
                      ? Icons.visibility_off // Icon hiện
                      : Icons.visibility, // Icon ẩn
                  color: Colors.white70,
                  size: 25,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Nút LOGIN
  Widget _buildBtnLogin() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 300,
        padding: EdgeInsets.all(15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xff317773),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          'ĐĂNG NHẬP',
          style: TextStyle(
              color: Colors.black.withOpacity(.8),
              fontSize: 20,
              fontWeight: FontWeight.w800),
        ),
      ),
    );
  }

  // App LOGIN
  Widget _buildAppLogin() {
    return Container(
      width: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () {
                print("Click APPLE");
              },
              child: Container(
                  height: 70,
                  width: 70,
                  child: Image.network(
                    'https://cdn-icons-png.flaticon.com/128/2504/2504884.png',
                    fit: BoxFit.cover,
                  ))),
          GestureDetector(
              onTap: () {
                print("Click FACEBOOK");
              },
              child: Container(
                  height: 70,
                  width: 70,
                  child: Image.network(
                    'https://cdn-icons-png.flaticon.com/128/2504/2504903.png',
                    fit: BoxFit.cover,
                  ))),
          GestureDetector(
              onTap: () {
                print("Click MAIL");
              },
              child: Container(
                  height: 70,
                  width: 70,
                  child: Image.network(
                    'https://cdn-icons-png.flaticon.com/128/552/552486.png',
                    fit: BoxFit.fill,
                  ))),
        ],
      ),
    );
  }

  // Sign Up
  Widget _buildWantSignUp() {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: "Không Có Tài Khoản?",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: " ĐĂNG KÝ",
            recognizer: new TapGestureRecognizer()
              ..onTap = () => print('Tap Here onTap'),
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Colors.white70,
            ),
          ),
        ],
      ),
      // căn chữ được viết ở giữa
      textAlign: TextAlign.center,
    );
  }
}

import 'package:cevaplarapp/Screens/homePage.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();
  SharedPreferences sharedPreferences;
  bool _isDone = false;

  @override
  void initState() {
    super.initState();
    getLocalData();
  }

  void _onIntroEnd(context) {
    setLocalData();
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => MyHomePage()));
  }

  Future<void> getLocalData() async {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      _isDone = sharedPreferences.getBool("oneTime");
    });
  }

  void setLocalData() {
    setState(() {
      _isDone = true;
      sharedPreferences.setBool("oneTime", _isDone);
    });
  }

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset('assets/$assetName.png', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "Sizi burada görmek çok güzel",
          body:
              "Cevaplar App'ı kullandığınız için teşekkürler. Şimdi size uygulamayı nasıl kullanmanız gerektiğini anlatacağız",
          image: _buildImage('welcome'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Nedir Cevaplar App",
          body:
              "Cevaplar App, günlük hayatta kafanızda oluşan bazı soruların yanıtını kısaca alabileceğiniz eğlenceli bir uygulamadır.",
          image: _buildImage('question-mark'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Nasıl Kullanılır?",
          body:
              "Öncelikle aklınızda tutacağınız soru için 10-15 saniye kadar konsantre olmaya çalışın.Aklınızda tuttuğunuz sorunun cevabı genel olarak evet ya da hayır olabilecek türde olmalı",
          image: _buildImage('guide'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Nasıl Kullanılır?",
          body:
              "Aklınızda soru tuttuysanız tek yapmanız gereken Cevabı Gör butonuna basmak ve cevabı görmek.",
          image: _buildImage('button'),
          footer: RaisedButton(
            onPressed: () {
              introKey.currentState?.animateScroll(0);
            },
            child: const Text(
              'Başa dön',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.lightBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Atla'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Bitti', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}

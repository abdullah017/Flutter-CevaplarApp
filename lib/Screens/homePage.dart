import 'dart:math';

import 'package:cevaplarapp/Screens/introScreen.dart';
import 'package:cevaplarapp/Widgets/aletDialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class MyHomePage extends StatefulWidget {
  final String path;
  final String buttonText;

  const MyHomePage(
      {Key key,
      this.path = "assets/border2.png",
      this.buttonText = "CEVABI GÖR"})
      : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String elementString;
  T getRandomElement<T>(List<T> list) {
    final random = new Random();
    int i = random.nextInt(list.length);
    return list[i];
  }

  void main() {
    List<String> listString = [
      "Evet", "Hayır", "Belki", "Olabilir", "Kesinlikle", "Hiç düşünme", "Ya öyle değilse",
			"Belki daha sonra", "Bir kere daha düşün", "Tam zamanı", "Mutlaka denemelisin", "Harekete geç",
			"Zamanı değil", "Asla", "Asla düşünme", "Erteleme", "Dikkatli ol", "Zamana bırak", "Sakin ol",
			"Çok yakında", "Pek değil", "Evet", "O iş olmaz", "Bir daha sor", "Aynen", "Tabii ki",
			"Sormaya bile gerek yok", "Sorman hata", "Bilmiyorum", "Bekle", "Zamanı var", "Denemelisin", "Vazgeçme",
			"Güvenli değil", "Sakın", "Şans ver", "Uzaklaş", "Düşünmelisin", "Doğru", "Yanlış", "Dur", "Geri dön",
			"Devam et", "Yaparsın", "Yapabilirsin", "Vazgeç", "Sabret", "Başladığın işi bitir", "Acele et",
			"Yakında düzelecek", "Tam istediğin gibi olmayabilir", "Pek doğru değil", "Ağırdan al",
			"Bunu sorduğun için utanmalısın", "Şimdi değişim vakti", "Belki sonra", "Yeni bir sayfa aç", "Konuyu kapat",
			"Yapma", "Kendine güven", "Şimdi değil", "Bırak", "Bırakmalısın", "Zorlama", "Ertele", "Nefes al",
			"En doğrusu", "Kendinle yüzleş", "Üzülme", "Düzelecek", "Tecrübe etmelisin", "Bu senin kaderin",
			"Ne yaparsan yap düzelmeyecek", "Çabalama", "Herşey yeni başlıyor", "Şimdi olmaz", "Tehlikedesin",
			"Arkana bile bakma", "Koş", "Hemen", "Hemen şimdi", "Yalnız kal", "Bunu hakediyorsun", "Bunu haketmiyorsun",
			"Şimdi senin zamanın", "Olacak", "Olmayacak", "Kendine zaman ayır", "Yanılıyorsun", "Hepsi yalan",
			"Peşini bırak", "Hayatını yaşa", "Fazla takma", "Mantıklı ol", "Mantıklı düşün", "Gül geç", "Boşver",
			"İhtiyacın yok", "Vazgeçilmez değilsin", "Yapmasan daha iyi", "Elinden geleni yap", "Doğru karar",
			"Bir ailen olduğunu unutma", "Umut var", "Dengeli ol", "Sakin kal", "Herşey sana bağlı", "Elbet bir gün",
			"Kendini toparla", "Boşuna bekleme", "Kendinden ödün verme", "Fedakar ol", "Boyun eğme", "Çok safsın",
			"Büyük düşün", "Büyük ihtimalle evet", "Büyük ihtimalle hayır", "Büyük ihtimalle doğru",
			"Büyük ihtimalle yanlış", "Yanlış karar", "Hiç inandırıcı değil", "Faydası yok", "Bunda bir hayır var",
			"Sakın yapma", "Kesinlikle yap", "Kesinlikle katılıyorum", "Bence çok saçma", "Çok iyi fikir",
			"Peşini bırakma", "Hedefe odaklan", "Sonu iyi değil", "Sonu iyi olacak", "Kendini kandırma", "Kazanacaksın",
			"Kaybedeceksin", "Herkese anlatma", "Kendine sakla", "Başka şansın olmayabilir", "Belki bu son şansın",
			"Gerçekçi ol", "Hayal kurmayı bırak", "Burnunu sokma", "Buna değecek", "Denemeye değer",
			"Uzatmaları oynuyorsun", "Cevabın onda", "Bir dakika düşün, bir daha sor", "Gerçekleşmesi zaman alacak",
			"İnce eleyip sık doku", "Beklediğin gibi sonuçlanmayabilir", "Bir ihtimal daha var",
			"Bir kahve iç, sonra konuşalım", "Farklı bir şey yap", "Bu da geçer", "Sen üstüne düşeni yaptın", "İlla ki",
			"Yapacak birşey yok", "Annene sor", "Babana sor", "Güvendiğin birine sor"
    ];
    elementString = getRandomElement(listString);
    print("Rastgele String: " + elementString);
  }
  String backgrounPath;
  String bText;
  bool isButtonPressed = false;
  String buttonText = "AKLINDA BİR SORU TUT VE BUTONA BAS";

  @override
  void initState() {
    super.initState();
    backgrounPath = widget.path;
    bText = widget.buttonText;
  }

  _MyHomePageState();

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    return SafeArea(
          child: Container(
        child: Scaffold(
          key: _scaffoldKey,
          backgroundColor: Color(0xffF9D8A7),
          body: Stack(
            children: <Widget>[
              ///ARKAPLAN AYARLARI--START
              Column(
                children: <Widget>[
                  Expanded(
                    child: Row(children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: Image.asset(
                          backgrounPath,
                          fit: BoxFit.fill,
                        ),
                      )
                    ]),
                  ),
                ],
              ),

              ///ARKAPLAN AYARLARI--END

              ///CEVAB TEXT--START
              Column(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            fit: FlexFit.loose,
                            child: Container(
                              margin: EdgeInsets.only(right: 70.0),
                              padding: EdgeInsets.only(left: 40.0),
                              child: Text(buttonText,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
                                      ),
                            ),
                          ),

                          ///CEVAP TEXT--END

                          SizedBox(
                            height: 100,
                          ),

                          ///CEVAP BUTONU--START

                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 250,
                                  height: 50,
                                  margin: EdgeInsets.only(right: 50.0),
                                  child: FlatButton(
                                    onPressed: () {
                                      setState(() {
                                        //cevaplar.sonrakiSoru();
                                        main();
                                        buttonText = elementString;
                                      });
                                    },
                                    // color: Colors.black,
                                    splashColor: Colors.redAccent,
                                    hoverColor: Colors.red,
                                    child: Text(
                                      bText,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    color: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                ),

                                ///CEVAP BUTONU--END
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              ///CEVABI GETİR BUTONU--END

              ///ALTBUTONLAR--START
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 115,
                        height: 55,
                        //color: Colors.black,
                        child: FlatButton(
                          color: Colors.black,
                          shape:
                              StadiumBorder(side: BorderSide(color: Color(0xffF9D8A7))),
                          child: Text(
                            "HAKKMIZDA",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => CustomShowDialog(
                                      alertTitle: "HAKKIMIZDA",
                                      alertContent: "Flutter Studio 2020",
                                      raisedText: "Tamam",
                                      flatText: "Tamam",
                                    ));
                          },
                        ),
                      ),
                      Container(
                        width: 90,
                        height: 55,
                        //color: Colors.black,
                        child: FlatButton(
                          color: Colors.black,
                          shape:
                               StadiumBorder(side: BorderSide(color: Color(0xffF9D8A7))),
                          child: Text(
                            "İLETİŞİM",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => CustomShowDialog(
                                      alertTitle: "İLETİŞİM",
                                      alertContent: "info@abdullahtas.net",
                                      raisedText: "Tamam",
                                      flatText: "Tamam",
                                    ));
                          },
                        ),
                      ),
                      Container(
                        width: 90,
                        height: 55,
                        // color: Colors.black,
                        child: FlatButton(
                          color: Colors.black,
                          shape:
                               StadiumBorder(side: BorderSide(color: Color(0xffF9D8A7))),
                          child: Text(
                            "KILAVUZ",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.pop(
                              context,
                              OnBoardingPage(),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              ///ALTBUTONLAR--END
            ],
          ),
        ),
      ),
    );
  }
}

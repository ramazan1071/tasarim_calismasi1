import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tasarim_calismasi1/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: const[
        AppLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const[
        Locale("en",""),
        Locale("tr","")
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var r = AppLocalizations.of(context);

    var ekranBilgi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgi.size.height;
    final double ekranGenisligi = ekranBilgi.size.width;

    return Scaffold(
      appBar: AppBar(

        leading: Icon(Icons.arrow_left,size: ekranGenisligi/10,),
            backgroundColor: anaRenk2,
            elevation: 0,

        actions: [
          Icon(Icons.shopping_cart,size: ekranGenisligi/10,),
        ],
      ),


      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("resimler/kahve.jpg"),
          Padding(
            padding: const EdgeInsets.only(right: 16.0,left: 16.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(r!.kahveBaslik,style: TextStyle(fontSize: 35,color: yaziRenk2,fontWeight: FontWeight.bold,fontFamily: "Poppins"),),
                Text(r.ucret,style: TextStyle(fontSize: 25,color: anaRenk2,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(r.kahveAciklamasi,
                  style: TextStyle(fontSize: 15,color: yaziRenk2),textAlign: TextAlign.start,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child:Row(
              children: [
                Text(r.kahveBoyut,style: TextStyle(fontSize: 18,color: yaziRenk2,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16.0,bottom: 25.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                CupSize(boy: r.s,),
                CupSize(boy: r.m,),
                CupSize(boy: r.l,),
                CupSize(boy: r.xl,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0,left: 10.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(r.fiyat,style: TextStyle(fontSize: 15,color: yaziRenk2,fontWeight: FontWeight.w400),textAlign: TextAlign.start),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(r.ucret,style: TextStyle(fontSize: 25,color: yaziRenk2,fontWeight: FontWeight.bold),textAlign: TextAlign.end,),
                    ),
                  ],
                ),
                    Row(
                      children: [
                        SizedBox(height: ekranYuksekligi/13,width: ekranGenisligi/3,
                          child: TextButton(
                            onPressed: (){},
                            child: Text(r.odeme,style: TextStyle(color: yaziRenk1,fontSize: 20),),
                            style: TextButton.styleFrom(backgroundColor: anaRenk2,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
                            ),
                          ),
                        )
                      ],
                    ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CupSize extends StatelessWidget {
  String boy;
  CupSize({required this.boy});
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 60,height: 45,
      child: TextButton(
        onPressed: (){},
        child: Text(boy,style: TextStyle(color: yaziRenk2,fontWeight: FontWeight.bold)),
        style: TextButton.styleFrom(
            shape:  RoundedRectangleBorder(
                side: BorderSide(
                  width: 2,
                  color: anaRenk,

            )
            )
        ),
      ),
    );
  }
}


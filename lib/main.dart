import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:re_texteditor/page/notes_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'TEXT EDITOR USING R.E';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.white60,
            elevation: 2.0,
          ),
        ),
        home: mainpage(),
      );
      
}

class mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TEXT EDITOR USING R.E"),
      ),
      body: Container(
        color: Colors.black,
        child:Column(
          children:<Widget> [
            Padding(
              padding: const EdgeInsets.only(top: 200, right: 7, left:7,),
              child: Center(
                child: RichText(
                  text: const TextSpan(
                    text: "Welcome to our text editor",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.deepOrangeAccent,
                    )
                  ))
                ),
            ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                 child: const  Text("get started"),
                 onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NotesPage()),
                    );
                  }, 
                  ),
              )
          ],
        )
      ),
    );
  }
}

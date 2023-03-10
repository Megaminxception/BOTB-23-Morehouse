import 'package:chatgpt_course/providers/models_provider.dart';
import 'package:chatgpt_course/screens/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'constants/constants.dart';
import 'providers/chats_provider.dart';
import 'screens/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ModelsProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ChatProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'NFL Sideline Chatbot',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.white,
            secondaryHeaderColor: boldBlue,
            focusColor: notBlackButBlack,
            scaffoldBackgroundColor: Colors.black,
            hintColor: greyStone,
            appBarTheme: AppBarTheme(
              color: cardColor,
            )),
        home: const BaseScreen(),
      ),
    );
  }
}

MaterialColor boldBlue = MaterialColor(0xFF0050FE, color);
MaterialColor notBlackButBlack = MaterialColor(0xFF131313, color);
MaterialColor greyStone = MaterialColor(0xFF4A4A4B, color);

Map<int, Color> color = {
  50: Color.fromRGBO(136, 14, 79, .1),
  100: Color.fromRGBO(136, 14, 79, .2),
  200: Color.fromRGBO(136, 14, 79, .3),
  300: Color.fromRGBO(136, 14, 79, .4),
  400: Color.fromRGBO(136, 14, 79, .5),
  500: Color.fromRGBO(136, 14, 79, .6),
  600: Color.fromRGBO(136, 14, 79, .7),
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};

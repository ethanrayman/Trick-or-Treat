import 'dart:async';

import 'package:flutter/material.dart';
import 'candies.dart';
import 'dart:math';

void main() {
  runApp(const HalloweenApp());
}

class HalloweenApp extends StatelessWidget {
  const HalloweenApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trick or Treat!',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
        secondaryHeaderColor: Colors.black,
      ),
      home: const MyHomePage(title: 'Halloween Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = -1;
  bool _isVisible1 = false;

  bool _isVisible2 = false;
  bool _isVisible3 = false;
  bool _isVisible4 = false;
  bool _isVisible5 = false;
  bool _isVisible6 = false;
  bool _isVisible7 = false;
  bool _isVisible8 = false;
  bool _isVisible9 = false;
  bool _isVisible10 = false;
  bool _isVisible11 = false;
  bool _isVisible12 = false;
  bool _isVisible13 = false;
  bool _isVisible14 = false;
  bool _isVisible15 = false;
  bool _isVisible16 = false;
  bool _scoreVisible = false;
  bool _startVisible = true;
  bool _timerVisible = false;
  bool _playAgainVisible = false;
  String scoreSet = 'SCORE:';

  void _incrementCounter(int i) {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter += i;
      _isVisible1 = Random().nextBool();
      _isVisible2 = Random().nextBool();
      _isVisible3 = Random().nextBool();
      _isVisible4 = Random().nextBool();
      _isVisible5 = Random().nextBool();
      _isVisible6 = Random().nextBool();
      _isVisible7 = Random().nextBool();
      _isVisible8 = Random().nextBool();
      _isVisible9 = Random().nextBool();
      _isVisible10 = Random().nextBool();
      _isVisible11 = Random().nextBool();
      _isVisible12 = Random().nextBool();
      _isVisible13 = Random().nextBool();
      _isVisible14 = Random().nextBool();
      _isVisible15 = Random().nextBool();
      _isVisible16 = Random().nextBool();

      _scoreVisible = true;
      _startVisible = false;
      _timerVisible = true;
      _playAgainVisible = false;

      candyValue1 = Random().nextInt(6);
      candyValue2 = Random().nextInt(6);
      candyValue3 = Random().nextInt(6);
      candyValue4 = Random().nextInt(6);
      candyValue5 = Random().nextInt(6);
      candyValue6 = Random().nextInt(6);
      candyValue7 = Random().nextInt(6);
      candyValue8 = Random().nextInt(6);
      candyValue9 = Random().nextInt(6);
      candyValue10 = Random().nextInt(6);
      candyValue11 = Random().nextInt(6);
      candyValue12 = Random().nextInt(6);
      candyValue13 = Random().nextInt(6);
      candyValue14 = Random().nextInt(6);
      candyValue15 = Random().nextInt(6);
      candyValue16 = Random().nextInt(6);

      ;
    });
  }

  Timer? countdownTimer;
  Duration timerDuration = Duration(seconds: 20);

  void stopTimer() {
    setState((() => countdownTimer!.cancel()));
    stopGame();
  }

  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = timerDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        stopTimer();
      } else {
        timerDuration = Duration(seconds: seconds);
      }
    });
  }

  void resetTimer() {
    stopTimer();
    setState(
      () => timerDuration = Duration(seconds: 20),
    );
  }

  void stopGame() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter;
      _isVisible1 = false;
      _isVisible2 = false;
      _isVisible3 = false;
      _isVisible4 = false;
      _isVisible5 = false;
      _isVisible6 = false;
      _isVisible7 = false;
      _isVisible8 = false;
      _isVisible9 = false;
      _isVisible10 = false;
      _isVisible11 = false;
      _isVisible12 = false;
      _isVisible13 = false;
      _isVisible14 = false;
      _isVisible15 = false;
      _isVisible16 = false;

      _scoreVisible = true;
      _startVisible = false;
      _timerVisible = false;
      _playAgainVisible = true;
      scoreSet = 'FINAL SCORE:';
      ;
    });
  }

  void resetGame() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter = 0;
      _isVisible1 = Random().nextBool();
      _isVisible2 = Random().nextBool();
      _isVisible3 = Random().nextBool();
      _isVisible4 = Random().nextBool();
      _isVisible5 = Random().nextBool();
      _isVisible6 = Random().nextBool();
      _isVisible7 = Random().nextBool();
      _isVisible8 = Random().nextBool();
      _isVisible9 = Random().nextBool();
      _isVisible10 = Random().nextBool();
      _isVisible11 = Random().nextBool();
      _isVisible12 = Random().nextBool();
      _isVisible13 = Random().nextBool();
      _isVisible14 = Random().nextBool();
      _isVisible15 = Random().nextBool();
      _isVisible16 = Random().nextBool();

      _scoreVisible = true;
      _startVisible = false;
      _timerVisible = true;
      _playAgainVisible = false;
      scoreSet = 'SCORE:';
      ;
    });
  }

  void startTimer() {
    countdownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  }

//FIX TO RANDOMIZE VALUES EVERY CLICK
  int candyValue1 = Random().nextInt(6);
  int candyValue2 = Random().nextInt(6);
  int candyValue3 = Random().nextInt(6);
  int candyValue4 = Random().nextInt(6);
  int candyValue5 = Random().nextInt(6);
  int candyValue6 = Random().nextInt(6);
  int candyValue7 = Random().nextInt(6);
  int candyValue8 = Random().nextInt(6);
  int candyValue9 = Random().nextInt(6);
  int candyValue10 = Random().nextInt(6);
  int candyValue11 = Random().nextInt(6);
  int candyValue12 = Random().nextInt(6);
  int candyValue13 = Random().nextInt(6);
  int candyValue14 = Random().nextInt(6);
  int candyValue15 = Random().nextInt(6);
  int candyValue16 = Random().nextInt(6);

  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final secondsLeft = strDigits(timerDuration.inSeconds.remainder(60));
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        backgroundColor: Colors.black,
        body: ListView(children: [
          Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Table(
              border: TableBorder.all(width: 5),
              defaultColumnWidth: FixedColumnWidth(100),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: <TableRow>[
                TableRow(children: <Widget>[
                  Visibility(
                    visible: _isVisible1,
                    child: IconButton(
                      onPressed: (() {
                        _incrementCounter(
                            Candies.allCandies[candyValue1].candyVal);
                      }),
                      iconSize: 100,
                      icon: Image(
                        image: AssetImage(
                            Candies.allCandies[candyValue1].imageUrl),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _isVisible2,
                    child: IconButton(
                      onPressed: (() {
                        _incrementCounter(
                            Candies.allCandies[candyValue2].candyVal);
                      }),
                      iconSize: 100,
                      icon: Image(
                        image: AssetImage(
                            Candies.allCandies[candyValue2].imageUrl),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _isVisible3,
                    child: IconButton(
                      onPressed: (() {
                        _incrementCounter(
                            Candies.allCandies[candyValue3].candyVal);
                      }),
                      iconSize: 100,
                      icon: Image(
                        image: AssetImage(
                            Candies.allCandies[candyValue3].imageUrl),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _isVisible4,
                    child: IconButton(
                      onPressed: (() {
                        _incrementCounter(
                            Candies.allCandies[candyValue4].candyVal);
                      }),
                      iconSize: 100,
                      icon: Image(
                        image: AssetImage(
                            Candies.allCandies[candyValue4].imageUrl),
                      ),
                    ),
                  ),
                ]),
                TableRow(children: <Widget>[
                  Visibility(
                    visible: _isVisible5,
                    child: IconButton(
                      onPressed: (() {
                        _incrementCounter(
                            Candies.allCandies[candyValue5].candyVal);
                      }),
                      iconSize: 100,
                      icon: Image(
                        image: AssetImage(
                            Candies.allCandies[candyValue5].imageUrl),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _isVisible6,
                    child: IconButton(
                      onPressed: (() {
                        _incrementCounter(
                            Candies.allCandies[candyValue6].candyVal);
                      }),
                      iconSize: 100,
                      icon: Image(
                        image: AssetImage(
                            Candies.allCandies[candyValue6].imageUrl),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _isVisible7,
                    child: IconButton(
                      onPressed: (() {
                        _incrementCounter(
                            Candies.allCandies[candyValue7].candyVal);
                      }),
                      iconSize: 100,
                      icon: Image(
                        image: AssetImage(
                            Candies.allCandies[candyValue7].imageUrl),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _isVisible8,
                    child: IconButton(
                      onPressed: (() {
                        _incrementCounter(
                            Candies.allCandies[candyValue8].candyVal);
                      }),
                      iconSize: 100,
                      icon: Image(
                        image: AssetImage(
                            Candies.allCandies[candyValue8].imageUrl),
                      ),
                    ),
                  ),
                ]),
                TableRow(children: <Widget>[
                  Visibility(
                    visible: _isVisible9,
                    child: IconButton(
                      onPressed: (() {
                        _incrementCounter(
                            Candies.allCandies[candyValue9].candyVal);
                      }),
                      iconSize: 100,
                      icon: Image(
                        image: AssetImage(
                            Candies.allCandies[candyValue9].imageUrl),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _isVisible10,
                    child: IconButton(
                      onPressed: (() {
                        _incrementCounter(
                            Candies.allCandies[candyValue10].candyVal);
                      }),
                      iconSize: 100,
                      icon: Image(
                        image: AssetImage(
                            Candies.allCandies[candyValue10].imageUrl),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _isVisible11,
                    child: IconButton(
                      onPressed: (() {
                        _incrementCounter(
                            Candies.allCandies[candyValue11].candyVal);
                      }),
                      iconSize: 100,
                      icon: Image(
                        image: AssetImage(
                            Candies.allCandies[candyValue11].imageUrl),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _isVisible12,
                    child: IconButton(
                      onPressed: (() {
                        _incrementCounter(
                            Candies.allCandies[candyValue12].candyVal);
                      }),
                      iconSize: 100,
                      icon: Image(
                        image: AssetImage(
                            Candies.allCandies[candyValue12].imageUrl),
                      ),
                    ),
                  ),
                ]),
                TableRow(children: <Widget>[
                  Visibility(
                    visible: _isVisible13,
                    child: IconButton(
                      onPressed: (() {
                        _incrementCounter(
                            Candies.allCandies[candyValue13].candyVal);
                      }),
                      iconSize: 100,
                      icon: Image(
                        image: AssetImage(
                            Candies.allCandies[candyValue13].imageUrl),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _isVisible14,
                    child: IconButton(
                      onPressed: (() {
                        _incrementCounter(
                            Candies.allCandies[candyValue14].candyVal);
                      }),
                      iconSize: 100,
                      icon: Image(
                        image: AssetImage(
                            Candies.allCandies[candyValue14].imageUrl),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _isVisible15,
                    child: IconButton(
                      onPressed: (() {
                        _incrementCounter(
                            Candies.allCandies[candyValue15].candyVal);
                      }),
                      iconSize: 100,
                      icon: Image(
                        image: AssetImage(
                            Candies.allCandies[candyValue15].imageUrl),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _isVisible16,
                    child: IconButton(
                      onPressed: (() {
                        _incrementCounter(
                            Candies.allCandies[candyValue16].candyVal);
                      }),
                      iconSize: 100,
                      icon: Image(
                        image: AssetImage(
                            Candies.allCandies[candyValue16].imageUrl),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
          SafeArea(
            child: Visibility(
              visible: _startVisible,
              child: ElevatedButton(
                onPressed: (() {
                  _incrementCounter(1);
                  startTimer();
                }),
                child: Text('Begin the game!'),
              ),
            ),
          ),
          SafeArea(
            child: Visibility(
              visible: _playAgainVisible,
              child: ElevatedButton(
                onPressed: (() {
                  resetTimer();
                  resetGame();
                  startTimer();
                }),
                child: Text('Play Again!'),
              ),
            ),
          ),
          Center(
            child: Visibility(
              visible: _scoreVisible,
              child: Text(
                '$scoreSet $_counter',
                style: const TextStyle(
                  fontFamily: 'Palatino',
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Center(
            child: Visibility(
              visible: _timerVisible,
              child: Text(
                'Time Remaining: $secondsLeft seconds',
                style: const TextStyle(
                  fontFamily: 'Palatino',
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ]));
  }
}

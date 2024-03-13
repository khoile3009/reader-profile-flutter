import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reader_profile/pages/read_log.dart';
import 'package:reader_profile/utilities/fakeData.dart';

import 'pages/read_session.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        routes: <String, WidgetBuilder>{
          "/home": (BuildContext context) => HomePage(),
          "/read_session": (BuildContext context) => const ReadSession()
        },
        title: 'Reader Profile',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        ),
        home: HomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  // var sessionDatas = defaultSessionData;
}

class ReadingSessionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Home"),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.account_circle)),
                Tab(icon: Icon(Icons.list)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              const Placeholder(),
              ReadLog(
                  // sessions: appState.sessionDatas,
                  )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/read_session");
            },
          ),
        ));
  }
}


// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var appState = context.watch<MyAppState>();

//     return Scaffold(
//       body: Column(
//         children: [

//         ],
//       ),
//     );
//   }
// }

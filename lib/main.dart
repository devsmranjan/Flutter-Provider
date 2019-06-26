import 'package:flutter/material.dart';
import 'package:flutter_provider/blocs/counter_bloc.dart';
import 'package:flutter_provider/pages/counter.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<CounterBloc>.value(
//       value:  CounterBloc(),
//           child: MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: CounterPage(),
//       ),
//     );
//   }
// }

// For multiple providers

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterBloc>.value(value: CounterBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Provider Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CounterPage(),
      ),
    );
  }
}

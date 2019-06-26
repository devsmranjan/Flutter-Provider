import 'package:flutter/material.dart';
import 'package:flutter_provider/widgets/decrement.dart';
import 'package:flutter_provider/widgets/increment.dart';
import 'package:provider/provider.dart';
import '../blocs/counter_bloc.dart';

class CounterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  final CounterBloc counterBloc =  Provider.of<CounterBloc>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              counterBloc.counter.toString(),
              style: TextStyle(
                fontSize: 60.0
              ),
            ),

            // IncrementButton(),
            // DecrementButton()
          ],
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          IncrementButton(),
          SizedBox(
            height: 12.0,
          ),
          DecrementButton()
        ],
      ),
    );
  }
}
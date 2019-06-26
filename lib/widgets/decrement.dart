import 'package:flutter/material.dart';
import 'package:flutter_provider/blocs/counter_bloc.dart';
import 'package:provider/provider.dart';

class DecrementButton extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);

    return FloatingActionButton(
      child: Icon(Icons.remove),
      onPressed: () => counterBloc.decrement(),
    );
  }
}
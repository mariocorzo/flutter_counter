import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter.dart';

class CounterPage extends StatelessWidget{
  const CounterPage({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(create: (_)=>CounterCubit(),child: const CounterView(),);
  }
}
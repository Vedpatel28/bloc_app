import 'dart:developer';

import 'package:bloc_app/counter_bloc/counter_bloc.dart';
import 'package:bloc_app/counter_bloc/counter_event.dart';
import 'package:bloc_app/counter_bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          buildWhen: (previous, current) {
            log("{} ${previous.count} {}");
            log("{+} ${current.count} {+}");
            return true;
          },
          builder: (context, state) {
            log("{_} ${state.count} {_}");
            return Text(
              "${state.count}",
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(
                    CounterIncrementEvent(),
                  );
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(
                    CounterDecrementEvent(),
                  );
            },
            child: const Text(
              "-",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/values/app_colors.dart';
import '../cubit/list_bluetooth_cubit.dart';
import '../cubit/list_bluetooth_state.dart';

class ListBluetoothView extends StatefulWidget {
  const ListBluetoothView({super.key});

  @override
  State<ListBluetoothView> createState() => _ListBluetoothViewState();
}

class _ListBluetoothViewState extends State<ListBluetoothView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ListBluetoothCubit()..init(),
      child: _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    return BlocBuilder<ListBluetoothCubit, ListBluetoothState>(
      builder: (context, state) {
        final cubit = context.read<ListBluetoothCubit>();
        return Scaffold(
          appBar: AppBar(
            title: const Text("List Bluetooth"),
            backgroundColor: AppColors.colorFFFFFFFF,
          ),
          backgroundColor: AppColors.colorFFFFFFFF,
          body: SingleChildScrollView(
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    cubit.init();
                  },
                  child: const Text("Start Scan"),
                ),
                ...state.bluetooths.map((e) => Text(e)).toList(),
              ],
            ),
          ),
        );
      },
    );
  }
}

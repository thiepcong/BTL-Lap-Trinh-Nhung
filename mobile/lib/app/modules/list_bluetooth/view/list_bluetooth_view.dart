import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/values/app_colors.dart';
import '../../../core/values/text_styles.dart';
import '../../../core/widgets/appBar/custom_appbar.dart';
import '../../home/cubit/home_cubit.dart';
import '../cubit/list_bluetooth_cubit.dart';
import '../cubit/list_bluetooth_state.dart';
import '../widgets/connected_device_item.dart';
import '../widgets/device_item.dart';

class ListBluetoothView extends StatefulWidget {
  const ListBluetoothView({super.key, required this.homeCubit});

  final HomeCubit homeCubit;

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
    return BlocListener<ListBluetoothCubit, ListBluetoothState>(
      listenWhen: (previous, current) =>
          previous.currentDevice != current.currentDevice,
      listener: (context, state) {
        if (state.currentDevice != null) {
          widget.homeCubit.setCurrentDevice(state.currentDevice!);
        }
      },
      child: BlocBuilder<ListBluetoothCubit, ListBluetoothState>(
        builder: (context, state) {
          final cubit = context.read<ListBluetoothCubit>();
          return Scaffold(
            appBar: CustomAppBar(
              leading: IconButton(
                onPressed: () => context.router.pop(),
                icon: const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.colorFFFFFFFF,
                  ),
                ),
              ),
              title: 'List Device',
            ),
            backgroundColor: AppColors.colorFFFFFFFF,
            body: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  const TabBar(
                    // onTap: (i) => context.read<StatCubit>().clean(),
                    tabs: [
                      Tab(text: 'Connected Device'),
                      Tab(text: 'Bluetooth LE'),
                    ],
                  ),
                  Expanded(
                      child: TabBarView(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              TextButton(
                                onPressed: () {
                                  cubit.scanDevice();
                                },
                                child: const Text(
                                  "Start Scan",
                                  style: TextStyles.boldBlackS28,
                                ),
                              ),
                              ...state.connectedDevices
                                  .map((e) => ConnectedDeviceItem(item: e))
                                  .toList(),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              TextButton(
                                onPressed: () {
                                  cubit.scanDevice();
                                },
                                child: const Text(
                                  "Start Scan",
                                  style: TextStyles.boldBlackS28,
                                ),
                              ),
                              ...state.devices
                                  .map((e) => DeviceItem(
                                        item: e,
                                        onConnect: (item) =>
                                            cubit.connectToDevice(item.device),
                                      ))
                                  .toList(),
                            ],
                          ),
                        ),
                      )
                    ],
                  ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

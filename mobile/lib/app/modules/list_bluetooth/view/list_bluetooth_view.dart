import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/app/core/values/show_message_internal.dart';

import '../../../core/values/app_colors.dart';
import '../../../core/values/text_styles.dart';
import '../../../core/widgets/appBar/custom_appbar.dart';
import '../../home/cubit/home_cubit.dart';
import '../cubit/list_bluetooth_cubit.dart';
import '../cubit/list_bluetooth_state.dart';
import '../widgets/classic_device_item.dart';
import '../widgets/ble_device_item.dart';

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
    return MultiBlocListener(
      listeners: [
        BlocListener<ListBluetoothCubit, ListBluetoothState>(
          listenWhen: (previous, current) =>
              previous.currentBleDevice != current.currentBleDevice,
          listener: (context, state) {
            if (state.currentBleDevice != null) {
              widget.homeCubit.setCurrentBleDevice(state.currentBleDevice!);
            }
          },
        ),

        BlocListener<ListBluetoothCubit, ListBluetoothState>(
          listenWhen: (previous, current) =>
              previous.currentBleDevice != current.currentBleDevice,
          listener: (context, state) {
            if (state.currentBleDevice != null) {
              widget.homeCubit.setCurrentBleDevice(state.currentBleDevice!);
            }
          },
        ),
        BlocListener<ListBluetoothCubit, ListBluetoothState>(
          listenWhen: (previous, current) =>
              previous.message != current.message,
          listener: (context, state) {
            if (state.message != null) {
              ShowMessageInternal.showMessage(state.message ?? '');
            }
          },
        ),
      ],
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
                      Tab(text: 'Bluetooth Classic'),
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
                                  cubit.scanDeviceClassic();
                                },
                                child: const Text(
                                  "Start Scan",
                                  style: TextStyles.boldBlackS28,
                                ),
                              ),
                              ...(state.classicDevices as List)
                                  .map((e) => ClassicDeviceItem(
                                        item: e,
                                        onConnect: () =>
                                            cubit.connectToBleDevice(e),
                                      ))
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
                                  cubit.scanDeviceBLe();
                                },
                                child: const Text(
                                  "Start Scan",
                                  style: TextStyles.boldBlackS28,
                                ),
                              ),
                              ...(state.bleDevices as List)
                                  .map((e) => BleDeviceItem(
                                        item: e,
                                        onConnect: (item) => cubit
                                            .connectToBleDevice(item.device),
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

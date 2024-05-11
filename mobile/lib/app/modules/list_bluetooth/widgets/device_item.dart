import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class DeviceItem extends StatelessWidget {
  const DeviceItem({super.key, required this.item, this.onConnect});

  final ScanResult item;
  final void Function(ScanResult item)? onConnect;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Text(item.device.advName),
              Text(item.device.remoteId.str),
              Text(item.rssi.toString()),
            ],
          ),
        ),
        TextButton(
          onPressed: () {
            onConnect?.call(item);
          },
          child: const Text("Connect"),
        ),
        const SizedBox(width: 12),
      ],
    );
  }
}

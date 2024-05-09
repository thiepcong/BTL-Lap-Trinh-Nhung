import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class ConnectedDeviceItem extends StatelessWidget {
  const ConnectedDeviceItem({super.key, required this.item});

  final BluetoothDevice item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Text(item.advName),
              Text(item.remoteId.str),
            ],
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text("Connect"),
        ),
        const SizedBox(width: 12),
      ],
    );
  }
}

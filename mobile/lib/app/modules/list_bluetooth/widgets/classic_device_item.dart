import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import '../../../core/values/app_colors.dart';
import '../../../core/values/text_styles.dart';

class ClassicDeviceItem extends StatelessWidget {
  const ClassicDeviceItem({super.key, required this.item, this.onConnect});

  final BluetoothDiscoveryResult item;
  final VoidCallback? onConnect;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.colorFF000000.withOpacity(0.1),
        borderRadius: const BorderRadius.all(Radius.circular(32)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  item.device.name ?? "Unknown Device",
                  style: TextStyles.mediumBlackS20,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  item.device.address,
                  style: TextStyles.mediumBlackS14,
                ),
              ],
            ),
          ),
          Text(
            item.rssi.toString(),
            style: _computeTextStyle(item.rssi),
          ),
          TextButton(
            onPressed: () => onConnect?.call(),
            child: const Text("Connect"),
          ),
          const SizedBox(width: 12),
        ],
      ),
    );
  }

  TextStyle _computeTextStyle(int rssi) {
    if (rssi >= -35) {
      return TextStyle(color: Colors.greenAccent[700]);
    } else if (rssi >= -45) {
      return TextStyle(
          color: Color.lerp(
              Colors.greenAccent[700], Colors.lightGreen, -(rssi + 35) / 10));
    } else if (rssi >= -55) {
      return TextStyle(
          color: Color.lerp(
              Colors.lightGreen, Colors.lime[600], -(rssi + 45) / 10));
    } else if (rssi >= -65) {
      return TextStyle(
          color: Color.lerp(Colors.lime[600], Colors.amber, -(rssi + 55) / 10));
    } else if (rssi >= -75) {
      return TextStyle(
          color: Color.lerp(
              Colors.amber, Colors.deepOrangeAccent, -(rssi + 65) / 10));
    } else if (rssi >= -85) {
      return TextStyle(
          color: Color.lerp(
              Colors.deepOrangeAccent, Colors.redAccent, -(rssi + 75) / 10));
    } else {
      return const TextStyle(color: Colors.redAccent);
    }
  }
}

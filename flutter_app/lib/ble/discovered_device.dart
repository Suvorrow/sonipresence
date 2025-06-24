import 'package:flutter_blue_plus/flutter_blue_plus.dart';

// Constants for supported device names
class SYggRelConstants {
  static const String deviceName = "SYggRel";
  static const String deviceAlterName = "T-Watch S3 Plus";
}

class defaultBLEConstants {
  static const String unknownDeviceName = "Unknown";
}

class SupportedDevices {
  static const List<String> supportedNames = [
    SYggRelConstants.deviceName,
    SYggRelConstants.deviceAlterName,
  ];
}

// The main model class
class DiscoveredDevice {
  final BluetoothDevice device;
  final int rssi;
  final String name;

  DiscoveredDevice({
    required this.device,
    required this.rssi,
    required this.name,
  });

  factory DiscoveredDevice.fromScanResult(ScanResult result) {
    return DiscoveredDevice(
      device: result.device,
      rssi: result.rssi,
      name: result.device.platformName, ?? result.device.name
    );
  }
}
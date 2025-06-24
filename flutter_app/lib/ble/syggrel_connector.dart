import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'ble_service.dart';
import 'discovered_device.dart';

class SYggRelConnector implements BleService {
  final FlutterBluePlus _flutterBlue = FlutterBluePlus();
  Function(String) onDataReceived;

  SYggRelConnector(this.onDataReceived);

  @override
  Future<void> startScan() async {
    await _flutterBlue.startScan();
  }

  @override
  Future<void> stopScan() async {
    await _flutterBlue.stopScan();
  }

  bool shouldConnectToDevice(DiscoveredDevice device) {
    return device.isSupportedDevice && device.name != DefaultBLEConstants.unknownDeviceName;
  }

  @override
  void onDeviceFound(Function(BluetoothDevice) callback) {
    _flutterBlue.scanResults.listen((results) {
      for (var result in results) {
        final device = DiscoveredDevice.fromScanResult(result);
        if (shouldConnectToDevice(device)) {
          callback(device.device);
        }
      }
    });
  }

  @override
  Future<void> connectToDevice(BluetoothDevice device) async {
    await device.connect();
  }
}
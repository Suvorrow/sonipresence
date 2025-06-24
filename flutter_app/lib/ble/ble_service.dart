import 'package:flutter_blue_plus/flutter_blue_plus.dart';

abstract class BleService {
  Future<void> startScan();
  Future<void> stopScan();
  void onDeviceFound(Function(BluetoothDevice) callback);
  Future<void> connectToDevice(BluetoothDevice device);
  Future<void> sendCommand(String command);
  void listenForUpdates(Function(String) onDataReceived);
}
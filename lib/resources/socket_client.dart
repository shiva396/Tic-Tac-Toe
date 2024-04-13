import "package:flutter/material.dart";
import "package:socket_io_client/socket_io_client.dart" as IO;

//Singleton Pattern
class SocketClient {
  // SocketClient();
  IO.Socket? socket;
  static SocketClient? _instance;

  SocketClient._internal() {
    socket = IO.io('http://YourIP:3000', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });
    socket!.connect();
    print("Im connecitng !!");
  }

  static SocketClient get instance {
    _instance ??= SocketClient._internal();
    return _instance!;
  }
}

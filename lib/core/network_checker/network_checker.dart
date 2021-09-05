import 'dart:io';

abstract class NetworkChecker {
  Future<bool> isConnected();
}

class NetworkICheckerImpl implements NetworkChecker {
  @override
  Future<bool> isConnected() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } on SocketException catch (_) {
      return false;
    }
    return false;
  }
}

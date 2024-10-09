import 'package:flutter_webrtc/flutter_webrtc.dart';

class StreamService {
  RTCVideoRenderer _localRenderer = RTCVideoRenderer();
  MediaStream? _localStream;

  // Initialize the video renderer
  Future<void> initRenderer() async {
    await _localRenderer.initialize();
  }

  // Start the live stream
  Future<void> startLiveStream() async {
    // Request access to the user's camera and microphone
    _localStream = await navigator.mediaDevices.getUserMedia({
      'audio': true,
      'video': true,
    });

    // Attach the local stream to the video renderer
    _localRenderer.srcObject = _localStream;
  }

  // Stop the live stream
  Future<void> stopLiveStream() async {
    // Stop all tracks of the local stream
    _localStream?.getTracks().forEach((track) {
      track.stop();
    });

    // Dispose of the video renderer
    _localRenderer.dispose();
  }
}

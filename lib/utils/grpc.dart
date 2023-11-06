import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:storyteller/generated/lobby.pbgrpc.dart'; // Import the generated file

class GrpcClient {
  late ClientChannel channel;
  late LobbyServiceClient stub;

  GrpcClient () {
    // Use '10.0.2.2' for Android emulator
    // Use 'localhost' for iOS simulator
    channel = ClientChannel(
      '10.0.2.2', // Replace with actual IP address if testing on a real device
      port: 50051,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    stub = LobbyServiceClient(channel);
  }

  Future<void> createLobby(String lobbyName) async {
    try {
      final response = await stub.createLobby(CreateRequest()..name = lobbyName);
      if (kDebugMode) {
        print('Lobby created: ${response.message}');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Caught error: $e');
      }
    }
  }

  Future<void> joinLobby(String lobbyName) async {
    try {
      final response = await stub.joinLobby(JoinRequest()..name = lobbyName);
      if (kDebugMode) {
        print('Lobby created: ${response.message}');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Caught error: $e');
      }
    }
  }

  void shutdown() {
    channel.shutdown();
  }
}

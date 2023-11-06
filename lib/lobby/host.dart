import 'package:flutter/material.dart';
import 'package:storyteller/utils/grpc.dart';

class HostLobbyPage extends StatelessWidget {
  final TextEditingController _lobbyNameController = TextEditingController();
  final GrpcClient _grpcClient = GrpcClient();

  HostLobbyPage({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Host Lobby'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _lobbyNameController,
                decoration: const InputDecoration(
                  labelText: 'Enter Lobby Name',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // TODO validation
                  if (_lobbyNameController.text.isEmpty) {
                    // Pop out if any error in input
                    Navigator.pop(context);
                  }
                  // Here you would use the gRPC client to create a lobby
                  _grpcClient.createLobby(_lobbyNameController.text);
                },
                child: const Text('Create Room'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
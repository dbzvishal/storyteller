import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

class JoinLobbyPage extends StatelessWidget {
  final TextEditingController _lobbyNameController = TextEditingController();

  JoinLobbyPage({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Join Lobby'),
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
                  // Set up gRPC server connection here.
                  // For now, we'll just pop back to the previous screen
                  Navigator.pop(context);
                },
                child: const Text('Join Lobby'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
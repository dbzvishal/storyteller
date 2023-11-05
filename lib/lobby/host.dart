import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

class HostLobbyPage extends StatelessWidget {
  final TextEditingController _lobbyNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Host Lobby'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _lobbyNameController,
                decoration: InputDecoration(
                  labelText: 'Enter Lobby Name',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Here you would use the gRPC client to create a lobby
                  // For now, we'll just pop back to the previous screen
                  Navigator.pop(context);
                },
                child: Text('Create Room'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
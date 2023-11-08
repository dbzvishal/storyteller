import 'package:flutter/material.dart';
import 'package:storyteller/utils/grpc.dart';

class HostLobbyPage extends StatelessWidget {
  final TextEditingController _lobbyNameController = TextEditingController();
  final GrpcClient _grpcClient = GrpcClient();
  final _formKey = GlobalKey<FormState>();

  HostLobbyPage({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Host Lobby'),
        ),
        body: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Enter Lobby Name to host'
                      ),
                      controller: _lobbyNameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Lobby Name is required';
                        } else {
                          return null;
                        }
                      },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() == true) {
                        // Here you would use the gRPC client to create a lobby
                        _grpcClient.createLobby(_lobbyNameController.text);
                      }
                    },
                    child: const Text('Create Room'),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

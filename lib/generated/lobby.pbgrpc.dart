//
//  Generated code. Do not modify.
//  source: lobby.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'lobby.pb.dart' as $0;

export 'lobby.pb.dart';

@$pb.GrpcServiceName('lobby.LobbyService')
class LobbyServiceClient extends $grpc.Client {
  static final _$joinLobby = $grpc.ClientMethod<$0.JoinRequest, $0.LobbyUpdate>(
      '/lobby.LobbyService/JoinLobby',
      ($0.JoinRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LobbyUpdate.fromBuffer(value));
  static final _$createLobby = $grpc.ClientMethod<$0.CreateRequest, $0.CreateResponse>(
      '/lobby.LobbyService/CreateLobby',
      ($0.CreateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateResponse.fromBuffer(value));

  LobbyServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.LobbyUpdate> joinLobby($0.JoinRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$joinLobby, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateResponse> createLobby($0.CreateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createLobby, request, options: options);
  }
}

@$pb.GrpcServiceName('lobby.LobbyService')
abstract class LobbyServiceBase extends $grpc.Service {
  $core.String get $name => 'lobby.LobbyService';

  LobbyServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.JoinRequest, $0.LobbyUpdate>(
        'JoinLobby',
        joinLobby_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.JoinRequest.fromBuffer(value),
        ($0.LobbyUpdate value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateRequest, $0.CreateResponse>(
        'CreateLobby',
        createLobby_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateRequest.fromBuffer(value),
        ($0.CreateResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.LobbyUpdate> joinLobby_Pre($grpc.ServiceCall call, $async.Future<$0.JoinRequest> request) async {
    return joinLobby(call, await request);
  }

  $async.Future<$0.CreateResponse> createLobby_Pre($grpc.ServiceCall call, $async.Future<$0.CreateRequest> request) async {
    return createLobby(call, await request);
  }

  $async.Future<$0.LobbyUpdate> joinLobby($grpc.ServiceCall call, $0.JoinRequest request);
  $async.Future<$0.CreateResponse> createLobby($grpc.ServiceCall call, $0.CreateRequest request);
}

import 'package:appwrite/appwrite.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/appwrite_constants.dart';

final appWriteProvider = Provider((ref) {
  Client client = Client();

  return client
      .setEndpoint(AppWriteConstants.endPoint)
      .setProject(AppWriteConstants.projectId)
      .setSelfSigned(status: true);
});

final appWriteAccountProvider = Provider((ref) {
  final client = ref.watch(appWriteProvider);

  return Account(client);
});

final appWriteDatabaseProvider = Provider((ref) {
  final client = ref.watch(appWriteProvider);
  return Databases(client);
});

final appWriteStorageProvider = Provider((ref) {
  final client = ref.watch(appWriteProvider);
  return Storage(client);
});

final appWriteRealtimeProvider = Provider((ref) {
  final client = ref.watch(appWriteProvider);
  return Realtime(client);
});

class AppWriteConstants {
  static const String databaseId = '64490da778fb88424c8b';
  static const String projectId = '644906c88e72db729073';
  static const String endPoint = 'http://127.0.0.1:96/v1';

  static const String usersCollection = '644b016ccac79a84f43f';
  static const String tweetsCollection = '644d6ecf824f926118b7';
  static const String imagesBucket = '644d8d8b6ace874d67c9';

  static String imageUrl(String imageId) =>
      '$endPoint/storage/buckets/$imagesBucket/files/$imageId/view?project=$projectId&mode=admin';
}

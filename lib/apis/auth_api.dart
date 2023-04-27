import 'package:appwrite/appwrite.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:appwrite/models.dart';
import '../core/core.dart';
import '../core/provider.dart';

final authAPIProvider = Provider((ref) {
  return AuthAPI(ref.watch(appWriteAccountProvider));
});

abstract class IAuthAPI {
  FutureEither<User> singUp({
    required email,
    required password,
  });
}

class AuthAPI implements IAuthAPI {
  final Account _account;
  AuthAPI(Account account) : _account = account;

  @override
  FutureEither<User> singUp({required email, required password}) async {
    try {
      final user = await _account.create(
          userId: ID.unique(), email: email, password: password);
      return right(user);
    } on AppwriteException catch (e, stackTrace) {
      return left(Failure(e.message ?? 'Something went wrong', stackTrace));
    } catch (e, stackTrace) {
      return left(
        Failure(e.toString(), stackTrace),
      );
    }
  }
}

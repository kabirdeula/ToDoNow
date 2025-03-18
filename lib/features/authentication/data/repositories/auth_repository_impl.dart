import '../../../user/user.dart';
import '../../authentication.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteService _remoteService;
  final AuthLocalService _localService;

  AuthRepositoryImpl({
    AuthRemoteService? remoteService,
    AuthLocalService? localService,
  })  : _remoteService = remoteService ?? AuthRemoteService(),
        _localService = localService ?? AuthLocalService();

  @override
  Future<UserEntity?> getCurrentUser() async {
    final cachedUser = await _localService.getCachedUser();
    return cachedUser?.toEntity();
  }

  @override
  Future<UserEntity?> googleLogin() async {
    final userModel = await _remoteService.signInWithGoogle();
    if (userModel != null) {
      await _localService.cacheUser(user: userModel);
      return userModel.toEntity();
    }
    return null;
  }

  @override
  Future<UserEntity?> login(String email, String password) async {
    final userModel = await _remoteService.signInWithEmail(email, password);
    if (userModel != null) {
      await _localService.cacheUser(user: userModel);
      return userModel.toEntity();
    }
    return null;
  }

  @override
  Future<void> logout() async {
    await _remoteService.signOut();
    await _localService.clearUser();
  }

  @override
  Future<UserEntity?> register(String email, String password) async {
    final userModel = await _remoteService.signUpWithEmail(email, password);
    if (userModel != null) {
      await _localService.cacheUser(user: userModel);
      return userModel.toEntity();
    }
    return null;
  }
}

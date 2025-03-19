import '../../settings.dart';

class GetSettingsUsecase {
  final SettingsRepository _repository;

  GetSettingsUsecase({SettingsRepository? repository})
      : _repository = repository ?? SettingsRepositoryImpl();

  Future<AppSettingsEntity> call() async => _repository.getSettings();
}

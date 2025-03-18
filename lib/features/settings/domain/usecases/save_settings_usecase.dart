import '../../settings.dart';

class SaveSettingsUsecase {
  final SettingsRepository _repository;

  SaveSettingsUsecase({SettingsRepository? repository})
      : _repository = repository ?? SettingsRepositoryImpl();

  Future<void> call(AppSettingsEntity settings) async =>
      _repository.saveSettings(settings);
}

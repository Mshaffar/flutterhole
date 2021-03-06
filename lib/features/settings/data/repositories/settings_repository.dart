import 'package:dartz/dartz.dart';
import 'package:flutterhole/core/models/failures.dart';
import 'package:flutterhole/features/settings/data/models/pihole_settings.dart';

abstract class SettingsRepository {
  Future<Either<Failure, PiholeSettings>> createPiholeSettings();

  Future<Either<Failure, bool>> addPiholeSettings(
      PiholeSettings piholeSettings);

  Future<Either<Failure, bool>> updatePiholeSettings(
      PiholeSettings original, PiholeSettings update);

  Future<Either<Failure, bool>> deletePiholeSettings(
      PiholeSettings piholeSettings);

  Future<Either<Failure, bool>> deleteAllSettings();

  Future<Either<Failure, bool>> activatePiholeSettings(
      PiholeSettings piholeSettings);

  Future<Either<Failure, List<PiholeSettings>>> fetchAllPiholeSettings();

  Future<Either<Failure, PiholeSettings>> fetchActivePiholeSettings();
}

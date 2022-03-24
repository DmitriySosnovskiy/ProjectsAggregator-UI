import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@module
abstract class LoggerModule {
  @singleton
  Logger getLogger() => Logger(
    filter: ProductionFilter(),
    printer: PrettyPrinter(),
    output: MultiOutput(
      [ConsoleOutput()]
    ),
    level: Level.verbose
  );
}
// Simple logging utility for the Anti Alergi feature
class Logger {
  static const bool _isProduction = bool.fromEnvironment('dart.vm.product');
  static const String _tag = 'AntiAlergi';

  // Log an informational message
  static void info(String message) {
    if (!_isProduction) {
      _log('INFO', message);
    }
  }

  // Log an error message
  static void error(String message, [dynamic error, StackTrace? stackTrace]) {
    if (!_isProduction) {
      _log('ERROR', message);
      if (error != null) {
        _log('ERROR', '  └─ $error');
      }
      if (stackTrace != null) {
        _log('ERROR', '  └─ $stackTrace');
      }
    }
  }

  // Log a warning message
  static void warning(String message) {
    if (!_isProduction) {
      _log('WARNING', message);
    }
  }

  // Log a debug message
  static void debug(String message) {
    if (!_isProduction) {
      _log('DEBUG', message);
    }
  }

  // Internal logging method
  static void _log(String level, String message) {
    print('[$_tag][$level] $message');
  }
}

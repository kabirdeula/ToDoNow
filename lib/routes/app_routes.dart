enum AppRoutes {
  initial('/'),
  start('/start'),
  login('/login'),
  dashboard('/dashboard'),
  ;

  final String path;
  const AppRoutes(this.path);
}

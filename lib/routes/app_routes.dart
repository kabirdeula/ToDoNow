enum AppRoutes {
  initial('/'),
  start('/start'),
  login('/login');

  final String path;
  const AppRoutes(this.path);
}

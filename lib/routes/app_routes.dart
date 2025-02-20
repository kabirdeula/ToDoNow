enum AppRoutes {
  initial('/'),
  start('/start'),
  login('/login'),
  dashboard('/dashboard'),
  register('/register'),
  ;

  final String path;
  const AppRoutes(this.path);
}

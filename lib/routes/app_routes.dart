enum AppRoutes {
  initial('/'),
  start('/start'),
  login('/login'),
  dashboard('/dashboard'),
  register('/register'),
  onboarding('/onboarding'),
  ;

  final String path;
  const AppRoutes(this.path);
}

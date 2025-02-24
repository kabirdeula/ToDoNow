enum AppRoutes {
  initial('/'),
  start('/start'),
  login('/login'),
  dashboard('/dashboard'),
  register('/register'),
  onboarding('/onboarding'),
  emptyHomeScreen('/empty_home_screen'),
  taskScreen('/task_screen'),
  ;

  final String path;
  const AppRoutes(this.path);
}

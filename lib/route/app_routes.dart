class AppRoutes {
  static const welcomeScreen = '/';
  // Authentication Routes
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgot-password';
  static const String resetPassword = '/reset-password';
  static const String verifyEmail = '/verify-email';
  static const String verifyPhone = '/verify-phone';

  // Main App Routes
  static const String home = '/home';
  static const String splash = '/splash';
  static const String onboarding = '/onboarding';

  static const String dashboard = '/dashboard';
  static const String myTrips = '/my-trips';
  static const String receipts = '/receipts';
  static const String account = '/account';
  

  // Profile Routes
  static const String profile = '/profile';
  static const String editProfile = '/edit-profile';
  static const String profileSettings = '/profile-settings';
  static const String changePassword = '/change-password';

  // Content Routes
  static const String feed = '/feed';
  static const String explore = '/explore';
  static const String search = '/search';
  static const String notifications = '/notifications';

  // Chat/Messaging Routes
  static const String chat = '/chat';
  static const String chatList = '/chat-list';
  static const String chatDetails = '/chat-details';

  // Settings Routes
  static const String settings = '/settings';
  static const String privacy = '/privacy';
  static const String security = '/security';
  static const String about = '/about';
  static const String help = '/help';

  // Media Routes
  static const String camera = '/camera';
  static const String gallery = '/gallery';
  static const String imageEditor = '/image-editor';
  static const String videoPlayer = '/video-player';

  // Error Routes
  static const String error = '/error';
  static const String notFound = '/not-found';
  static const String noInternet = '/no-internet';

  // Other Common Routes
  static const String terms = '/terms';
  static const String privacyPolicy = '/privacy-policy';
  static const String contact = '/contact';
  static const String feedback = '/feedback';

  // Initial route
  static const String initial = splash;

  // Route lists for easy validation
  static const List<String> authRoutes = [
    login,
    register,
    forgotPassword,
    resetPassword,
    verifyEmail,
    verifyPhone,
  ];

  static const List<String> mainRoutes = [
    home,
    dashboard,
    feed,
    explore,
    profile,
    settings,
  ];

  static const List<String> allRoutes = [
    ...authRoutes,
    ...mainRoutes,
    splash,
    onboarding,
    editProfile,
    profileSettings,
    changePassword,
    search,
    notifications,
    chat,
    chatList,
    chatDetails,
    privacy,
    security,
    about,
    help,
    camera,
    gallery,
    imageEditor,
    videoPlayer,
    error,
    notFound,
    noInternet,
    terms,
    privacyPolicy,
    contact,
    feedback,
  ];

  // Helper methods
  static bool isAuthRoute(String route) {
    return authRoutes.contains(route);
  }

  static bool isMainRoute(String route) {
    return mainRoutes.contains(route);
  }

  static bool isValidRoute(String route) {
    return allRoutes.contains(route);
  }
}
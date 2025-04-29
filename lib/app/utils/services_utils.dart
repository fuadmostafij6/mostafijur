class ServicesUtils {
  final String name;
  final String icon;
  final List<String> tool;
  final String description;
  final String banners;

  ServicesUtils(
      {required this.name,
        required this.icon,
        required this.description,
        required this.tool,
        required this.banners

      });
}


List<ServicesUtils> servicesUtils = [
  ServicesUtils(
    name: 'Mobile App Development',
    icon: 'assets/icons/android.svg',
    description:
        "Built responsive, cross-platform mobile apps using Flutter and Dart, focusing on performance, UI consistency, and maintainability.",
    tool: ['Flutter','Dart'],
    banners: 'assets/imgs/mobile_app_development.png',
  ),
  ServicesUtils(
    name: 'Tv App Development',
    icon: 'assets/icons/graphic.svg',
    description:
    "Created custom TV applications using Flutter and Dart, tailored for large-screen UX and platform-specific input handling",
    tool: ['Flutter','Dart'],
    banners: 'assets/imgs/tv_app_development.png',
  ),
  ServicesUtils(
    name: 'Backend Service',
    icon: 'assets/icons/apple.svg',
    description:
        "Developed scalable backend services using Python, Django and Serverpod with DRF for efficient API architecture and server-side logic.",
    tool: ['Python','Django', 'Serverpod'],
    banners: 'assets/imgs/backend_services_copy.png',
  ),

  // ServicesUtils(
  //   name: 'Web Development',
  //   icon: 'assets/icons/website.svg',
  //   description:
  //       "Do you have an idea for your next great website? Let's make it a reality.",
  //   tool: ['Flutter', 'Html,css,js', 'Android (Kotlin or Java)'],
  // ),
];

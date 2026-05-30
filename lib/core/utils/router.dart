import 'package:flutter/material.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/super_admin/presentation/pages/super_admin_dashboard.dart';
import '../../features/super_admin/presentation/pages/tenant_management_page.dart';
import '../../features/creche_admin/presentation/pages/creche_dashboard.dart';
import '../../features/director/presentation/pages/director_dashboard.dart';
import '../../features/educator/presentation/pages/educator_dashboard.dart';
import '../../features/medical/presentation/pages/medical_dashboard.dart';
import '../../features/driver/presentation/pages/driver_dashboard.dart';
import '../../features/stock/presentation/pages/stock_dashboard.dart';
import '../../features/parent/presentation/pages/parent_dashboard.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case '/super-admin':
        return MaterialPageRoute(builder: (_) => const SuperAdminDashboard());
      case '/super-admin/tenants':
        return MaterialPageRoute(builder: (_) => const TenantManagementPage());
      case '/creche-admin':
        return MaterialPageRoute(builder: (_) => const CrecheDashboard());
      case '/director':
        return MaterialPageRoute(builder: (_) => const DirectorDashboard());
      case '/educator':
        return MaterialPageRoute(builder: (_) => const EducatorDashboard());
      case '/medical':
        return MaterialPageRoute(builder: (_) => const MedicalDashboard());
      case '/driver':
        return MaterialPageRoute(builder: (_) => const DriverDashboard());
      case '/stock':
        return MaterialPageRoute(builder: (_) => const StockDashboard());
      case '/parent':
        return MaterialPageRoute(builder: (_) => const ParentDashboard());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}

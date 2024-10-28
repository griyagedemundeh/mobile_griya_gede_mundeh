import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fquery/fquery.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_griya_gede_mundeh/config/app_config.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/values.dart';
import 'package:mobile_griya_gede_mundeh/core/router/routers.dart';
import 'package:mobile_griya_gede_mundeh/core/theme/theme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:toastification/toastification.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final queryClient = QueryClient(
  defaultQueryOptions: DefaultQueryOptions(),
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );

  await dotenv.load(fileName: ".env");

  await Supabase.initialize(
    url: AppValues.SUPABASE_URL,
    anonKey: AppValues.SUPABASE_ANONKEY,
    realtimeClientOptions: const RealtimeClientOptions(
      eventsPerSecond: 2,
      timeout: Duration(seconds: 10),
    ),
  );

  await AppConfig().hiveConfiguration();

  runApp(
    ProviderScope(
      child:
          QueryClientProvider(queryClient: queryClient, child: const MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: MaterialApp(
        title: 'Griya Gede Mundeh',
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splash,
        onGenerateRoute: AppRouter.routes,
        theme: AppTheme.getTheme(),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}

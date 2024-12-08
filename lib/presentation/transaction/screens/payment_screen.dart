import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/widget/navigation/primary_navigation.dart';
import 'package:mobile_griya_gede_mundeh/presentation/home/screens/main_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key, this.paymentUrl});

  final String? paymentUrl;

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            const Center(
              child: CircularProgressIndicator(
                color: AppColors.primary1,
                strokeWidth: 4,
              ),
            );
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onHttpError: (HttpResponseError error) {
            log('asjdlsajd');
          },
          onWebResourceError: (WebResourceError error) {
            PrimaryNavigation.pushFromRightReplacement(
              context,
              page: const MainScreen(),
            );
          },
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(paymentUrl ?? ''));

    return WebViewWidget(
      controller: controller,
    );
  }
}

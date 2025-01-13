import 'package:url_launcher/url_launcher.dart';

class WhatsAppLauncher {
  /// Launches WhatsApp with a predefined number and message
  static Future<void> launchWhatsApp({
    required String phoneNumber,
    String? message,
  }) async {
    // Remove any non-numeric characters from the phone number
    final formattedNumber = phoneNumber.replaceAll(RegExp(r'[^\d]'), '');

    // Encode the message for URL
    final encodedMessage = Uri.encodeComponent(message ?? '');

    // Create the WhatsApp URL
    final whatsappUrl = Uri.parse(
        'whatsapp://send?phone=$formattedNumber&text=$encodedMessage');

    // Check if WhatsApp is installed
    if (await canLaunchUrl(whatsappUrl)) {
      await launchUrl(whatsappUrl);
    } else {
      // If WhatsApp is not installed, try opening in browser
      final webWhatsappUrl =
          Uri.parse('https://wa.me/$formattedNumber/?text=$encodedMessage');

      if (await canLaunchUrl(webWhatsappUrl)) {
        await launchUrl(webWhatsappUrl);
      } else {
        throw 'Could not launch WhatsApp';
      }
    }
  }
}

import 'package:flutter/material.dart';

class ZevoTermsScreen extends StatelessWidget {
  const ZevoTermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms of Service'),
        backgroundColor: const Color(0xFFBBFF2F),
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('1. Acceptance of Terms'),
            _buildSectionContent(
              'By accessing and using the Zevo fitness tracking application ("App"), you accept and agree to be bound by the terms and provision of this agreement. If you do not agree to abide by the above, please do not use this service.',
            ),
            
            _buildSectionTitle('2. Use License'),
            _buildSectionContent(
              'Permission is granted to temporarily download one copy of the Zevo app for personal, non-commercial transitory viewing only. This is the grant of a license, not a transfer of title, and under this license you may not:\n\n'
              '• modify or copy the materials\n'
              '• use the materials for any commercial purpose or for any public display\n'
              '• attempt to reverse engineer any software contained in the app\n'
              '• remove any copyright or other proprietary notations from the materials',
            ),
            
            _buildSectionTitle('3. Health and Safety Disclaimer'),
            _buildSectionContent(
              'The information provided by Zevo is for general informational purposes only. All information in the app is provided in good faith, however we make no representation or warranty of any kind, express or implied, regarding the accuracy, adequacy, validity, reliability, availability or completeness of any information in the app.\n\n'
              'Under no circumstance shall we have any liability to you for any loss or damage of any kind incurred as a result of the use of the app or reliance on any information provided in the app. Your use of the app and your reliance on any information in the app is solely at your own risk.',
            ),
            
            _buildSectionTitle('4. User Accounts'),
            _buildSectionContent(
              'When you create an account with us, you must provide information that is accurate, complete, and current at all times. You are responsible for safeguarding the password and for all activities that occur under your account.\n\n'
              'You agree not to disclose your password to any third party. You must notify us immediately upon becoming aware of any breach of security or unauthorized use of your account.',
            ),
            
            _buildSectionTitle('5. Privacy Policy'),
            _buildSectionContent(
              'Your privacy is important to us. Our Privacy Policy explains how we collect, use, and protect your information when you use our service. By using our service, you agree to the collection and use of information in accordance with our Privacy Policy.',
            ),
            
            _buildSectionTitle('6. Prohibited Uses'),
            _buildSectionContent(
              'You may not use our app:\n\n'
              '• For any unlawful purpose or to solicit others to perform unlawful acts\n'
              '• To violate any international, federal, provincial, or state regulations, rules, laws, or local ordinances\n'
              '• To infringe upon or violate our intellectual property rights or the intellectual property rights of others\n'
              '• To harass, abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate\n'
              '• To submit false or misleading information\n'
              '• To upload or transmit viruses or any other type of malicious code',
            ),
            
            _buildSectionTitle('7. Content'),
            _buildSectionContent(
              'Our app allows you to post, link, store, share and otherwise make available certain information, text, graphics, videos, or other material ("Content"). You are responsible for the Content that you post to the app, including its legality, reliability, and appropriateness.\n\n'
              'By posting Content to the app, you grant us the right and license to use, modify, publicly perform, publicly display, reproduce, and distribute such Content on and through the app.',
            ),
            
            _buildSectionTitle('8. Termination'),
            _buildSectionContent(
              'We may terminate or suspend your account and bar access to the app immediately, without prior notice or liability, under our sole discretion, for any reason whatsoever and without limitation, including but not limited to a breach of the Terms.',
            ),
            
            _buildSectionTitle('9. Changes to Terms'),
            _buildSectionContent(
              'We reserve the right, at our sole discretion, to modify or replace these Terms at any time. If a revision is material, we will provide at least 30 days notice prior to any new terms taking effect.',
            ),
            
            _buildSectionTitle('10. Contact Information'),
            _buildSectionContent(
              'If you have any questions about these Terms of Service, please contact us at:\n\n'
              'Email: support@zevo.app\n'
              'Website: www.zevo.app',
            ),
            
            const SizedBox(height: 40),
            _buildLastUpdated(),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 12),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color(0xFFBBFF2F),
        ),
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Text(
      content,
      style: const TextStyle(
        fontSize: 16,
        height: 1.6,
        color: Colors.black87,
      ),
    );
  }

  Widget _buildLastUpdated() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: const Text(
        'Last updated: December 2025',
        style: TextStyle(
          fontSize: 14,
          color: Colors.grey,
          fontStyle: FontStyle.italic,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

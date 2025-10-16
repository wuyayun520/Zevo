import 'package:flutter/material.dart';

class ZevoPrivacyScreen extends StatelessWidget {
  const ZevoPrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
        backgroundColor: const Color(0xFFBBFF2F),
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('1. Information We Collect'),
            _buildSectionContent(
              'We collect information you provide directly to us, such as when you create an account, use our services, or contact us for support. This may include:\n\n'
              '• Personal information (name, email address)\n'
              '• Fitness data (workout records, goals, preferences)\n'
              '• Device information (device type, operating system)\n'
              '• Usage data (how you interact with our app)',
            ),
            
            _buildSectionTitle('2. How We Use Your Information'),
            _buildSectionContent(
              'We use the information we collect to:\n\n'
              '• Provide, maintain, and improve our services\n'
              '• Process transactions and send related information\n'
              '• Send technical notices, updates, and support messages\n'
              '• Respond to your comments and questions\n'
              '• Monitor and analyze trends and usage\n'
              '• Personalize your experience with our app',
            ),
            
            _buildSectionTitle('3. Information Sharing and Disclosure'),
            _buildSectionContent(
              'We do not sell, trade, or otherwise transfer your personal information to third parties without your consent, except in the following circumstances:\n\n'
              '• With your explicit consent\n'
              '• To comply with legal obligations\n'
              '• To protect our rights and safety\n'
              '• In connection with a business transfer or acquisition\n\n'
              'We may share aggregated, non-personally identifiable information for research and analytics purposes.',
            ),
            
            _buildSectionTitle('4. Data Storage and Security'),
            _buildSectionContent(
              'We implement appropriate technical and organizational measures to protect your personal information against unauthorized access, alteration, disclosure, or destruction. However, no method of transmission over the internet or electronic storage is 100% secure.\n\n'
              'Your data is stored locally on your device and may be backed up to secure cloud services. We use industry-standard encryption to protect your information.',
            ),
            
            _buildSectionTitle('5. Data Retention'),
            _buildSectionContent(
              'We retain your personal information for as long as necessary to provide our services and fulfill the purposes outlined in this Privacy Policy, unless a longer retention period is required or permitted by law.\n\n'
              'You may request deletion of your account and associated data at any time by contacting us.',
            ),
            
            _buildSectionTitle('6. Your Rights and Choices'),
            _buildSectionContent(
              'You have the right to:\n\n'
              '• Access your personal information\n'
              '• Correct inaccurate or incomplete information\n'
              '• Delete your account and associated data\n'
              '• Object to processing of your information\n'
              '• Data portability (export your data)\n'
              '• Withdraw consent at any time\n\n'
              'To exercise these rights, please contact us using the information provided below.',
            ),
            
            _buildSectionTitle('7. Children\'s Privacy'),
            _buildSectionContent(
              'Our services are not intended for children under 13 years of age. We do not knowingly collect personal information from children under 13. If you are a parent or guardian and believe your child has provided us with personal information, please contact us.',
            ),
            
            _buildSectionTitle('8. Third-Party Services'),
            _buildSectionContent(
              'Our app may contain links to third-party websites or services. We are not responsible for the privacy practices of these third parties. We encourage you to read their privacy policies before providing any personal information.',
            ),
            
            _buildSectionTitle('9. International Data Transfers'),
            _buildSectionContent(
              'Your information may be transferred to and processed in countries other than your own. We ensure that such transfers comply with applicable data protection laws and that appropriate safeguards are in place.',
            ),
            
            _buildSectionTitle('10. Changes to This Policy'),
            _buildSectionContent(
              'We may update this Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page and updating the "Last updated" date.\n\n'
              'We encourage you to review this Privacy Policy periodically for any changes.',
            ),
            
            _buildSectionTitle('11. Contact Us'),
            _buildSectionContent(
              'If you have any questions about this Privacy Policy or our privacy practices, please contact us at:\n\n'
              'Email: privacy@zevo.app\n'
              'Website: www.zevo.app\n'
              'Address: Zevo Privacy Team, [Your Address]',
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

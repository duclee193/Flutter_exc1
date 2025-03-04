import 'package:flutter/material.dart';

void main() {
  runApp(const CVApp());
}

class CVApp extends StatelessWidget {
  const CVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Roboto'),
      home: const CVScreen(),
    );
  }
}

class CVScreen extends StatelessWidget {
  const CVScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[100],
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(32.0),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header with Profile Picture
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Profile Picture
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.blue, width: 2),
                          image: const DecorationImage(
                            image: AssetImage('assets/profile.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 24),
                      // Personal Information
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Le Ma Anh Duc',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                            const SizedBox(height: 8),
                            _buildInfoItem(
                              Icons.calendar_today,
                              'September 1st, 2003',
                            ),
                            _buildInfoItem(Icons.person, 'Male'),
                            _buildInfoItem(Icons.phone, '+84 948601613'),
                            _buildInfoItem(
                              Icons.email,
                              'ducorgan2003@gmail.com',
                            ),
                            _buildInfoItem(
                              Icons.location_on,
                              'Thu Duc District, Ho Chi Minh city, Vietnam',
                            ),
                            _buildInfoItem(Icons.web, 'github.com/duclee193'),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 32),

                  // Objective Section
                  _buildSection(
                    'OBJECTIVE',
                    'Enthusiastic and detail-oriented IT student seeking an internship opportunity to apply and enhance my skills in information technology. Passionate about software development. Eager to contribute to a dynamic team, learn from experienced professionals, and gain practical experience in a real-world environment to support my academic growth and career aspirations.',
                  ),

                  const SizedBox(height: 24),

                  // Education Section
                  _buildSection(
                    'EDUCATION',
                    null,
                    children: [
                      _buildEducationItem(
                        'Sep 2021 - Present',
                        'University of Information Technology (UIT)',
                        'Major: Information Systems',
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // Skills Section
                  _buildSection(
                    'SKILLS',
                    null,
                    children: [
                      _buildSkillItem(
                        'UI/Diagram Design',
                        'Figma, Canvas, Draw.io',
                      ),
                      _buildSkillItem(
                        'Programming Language',
                        'JavaScript, NodeJS',
                      ),
                      _buildSkillItem('Formatting Language', 'HTML, CSS'),
                      _buildSkillItem(
                        'Frontend libraries/framework',
                        'ReactJS, Bootstrap',
                      ),
                      _buildSkillItem('Version control', 'Git - GitHub'),
                      _buildSkillItem('Collaboration', 'Jira, Trello'),
                      _buildSkillItem('Database', 'MySQL'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(icon, size: 16, color: Colors.blue[700]),
          const SizedBox(width: 8),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 14))),
        ],
      ),
    );
  }

  Widget _buildSection(
    String title,
    String? description, {
    List<Widget>? children,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        const SizedBox(height: 12),
        if (description != null)
          Text(description, style: const TextStyle(fontSize: 16)),
        if (children != null) ...children,
      ],
    );
  }

  Widget _buildEducationItem(String period, String school, String major) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          period,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.blue[700],
          ),
        ),
        const SizedBox(height: 4),
        Text(school, style: const TextStyle(fontSize: 16)),
        Text(major, style: const TextStyle(fontSize: 16)),
      ],
    );
  }

  Widget _buildSkillItem(String category, String skills) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              category,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(skills, style: const TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}

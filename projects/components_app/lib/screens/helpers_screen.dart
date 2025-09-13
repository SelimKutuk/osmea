import 'package:flutter/material.dart';
import 'package:osmea_components/osmea_components.dart';
import '../components/url_launcher_example.dart';
import '../widgets/common_appbar.dart';

/// 🔧 **Helpers Screen**
///
/// This screen displays a list of utility helpers available in the OSMEA framework.
/// Each helper provides specific functionality that can be tested and demonstrated.
///
/// ## Available Helpers
/// - URL Launcher: Test URL launching functionality
/// - More helpers can be added here in the future
class HelpersScreen extends StatelessWidget {
  const HelpersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OsmeaComponents.scaffold(
      appBar: const OsmeaComponentsAppBar(screenKey: 'helpers'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue.shade600, Colors.blue.shade400],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.build_circle,
                    color: Colors.white,
                    size: 32,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'OSMEA Helpers',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Utility functions and helper tools for common tasks',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 24),
            
            // Helpers List
            const Text(
              'Available Helpers',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: 16),
            
            Expanded(
              child: ListView(
                children: [
                  _buildHelperCard(
                    context,
                    icon: Icons.launch,
                    title: 'URL Launcher',
                    description: 'Test URL launching functionality with various protocols and platforms',
                    color: Colors.green,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const UrlLauncherExample(),
                        ),
                      );
                    },
                  ),
                  
                  // Placeholder for future helpers
                  _buildHelperCard(
                    context,
                    icon: Icons.file_download,
                    title: 'File Download Helper',
                    description: 'Test file download functionality (Coming Soon)',
                    color: Colors.orange,
                    isComingSoon: true,
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('File Download Helper - Coming Soon!'),
                          backgroundColor: Colors.orange,
                        ),
                      );
                    },
                  ),
                  
                  _buildHelperCard(
                    context,
                    icon: Icons.storage,
                    title: 'Database Helper',
                    description: 'Test database operations and queries (Coming Soon)',
                    color: Colors.purple,
                    isComingSoon: true,
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Database Helper - Coming Soon!'),
                          backgroundColor: Colors.purple,
                        ),
                      );
                    },
                  ),
                  
                  _buildHelperCard(
                    context,
                    icon: Icons.api,
                    title: 'API Helper',
                    description: 'Test API calls and network operations (Coming Soon)',
                    color: Colors.teal,
                    isComingSoon: true,
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('API Helper - Coming Soon!'),
                          backgroundColor: Colors.teal,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHelperCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String description,
    required Color color,
    required VoidCallback onTap,
    bool isComingSoon = false,
  }) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  icon,
                  color: color,
                  size: 28,
                ),
              ),
              
              const SizedBox(width: 16),
              
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (isComingSoon) ...[
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.orange.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Text(
                              'Soon',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
              
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey.shade400,
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

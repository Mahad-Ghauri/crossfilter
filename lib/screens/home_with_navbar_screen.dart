import 'package:flutter/material.dart';

class HomeWithNavbarScreen extends StatefulWidget {
  const HomeWithNavbarScreen({super.key});

  @override
  State<HomeWithNavbarScreen> createState() => _HomeWithNavbarScreenState();
}

class _HomeWithNavbarScreenState extends State<HomeWithNavbarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Home page',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
        centerTitle: false,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            width: 35,
            height: 35,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.person, color: Colors.white, size: 20),
          ),
        ],
      ),
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.75,
        child: Drawer(
          backgroundColor: const Color(0xFFE8F4FD),
          child: Column(
            children: [
              // Header with logo
              Container(
                height: 180,
                width: double.infinity,
                color: const Color(0xFFE8F4FD),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40),
                    Container(
                      width: 120,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade400,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text(
                          'CROSS FILTER',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Cross Filter',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              // Menu items
              Expanded(
                child: Container(
                  color: const Color(0xFFBBDEFB),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      _buildMenuItem(Icons.home, 'Home', true),
                      _buildMenuItem(Icons.new_releases, 'New Products', false),
                      _buildMenuItem(
                        Icons.location_on,
                        'Dealer Locator',
                        false,
                      ),
                      _buildMenuItem(Icons.person, 'Profile', false),
                      _buildMenuItem(
                        Icons.subscriptions,
                        'Subscription',
                        false,
                      ),
                      _buildMenuItem(Icons.contact_mail, 'Contact Us', false),
                      _buildMenuItem(Icons.feedback, 'App Feedback', false),
                    ],
                  ),
                ),
              ),
              // Footer
              Container(
                color: const Color(0xFFBBDEFB),
                padding: const EdgeInsets.all(16),
                child: const Column(
                  children: [
                    Text(
                      '© 2025 Cross Filter',
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                    Text(
                      'Design by tech maria',
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: const Color(0xFFE3F2FD),
        child: const Center(
          child: Text(
            'Main Content Area',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, bool isSelected) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue.shade100 : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: isSelected ? Colors.blue : Colors.black54,
          size: 20,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.blue : Colors.black,
            fontSize: 14,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
        dense: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        onTap: () {
          if (title == 'New Products') {
            Navigator.pushNamed(context, '/home-without-navbar');
          }
        },
      ),
    );
  }
}

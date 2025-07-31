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
            fontFamily: 'Montserrat',
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
      drawer: Drawer(
        child: Container(
          width: 279,
          decoration: BoxDecoration(
            color: Color(0xFFD9D9D9), // Gray background
            border: Border.all(
              color: Color(0xFF4392F9), // Blue border
              width: 2,
            ),
          ),
          child: Column(
            children: [
              // Header section with logo
              Container(
                height: 200,
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  border: Border(
                    bottom: BorderSide(color: Color(0xFF4392F9), width: 1),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Logo placeholder - replace with your actual logo
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: Color(0xFF4392F9), width: 2),
                      ),
                      child: Image.asset(
                        'assets/logo.png',
                        width: 60,
                        height: 60,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(
                            Icons.image,
                            size: 40,
                            color: Color(0xFF4392F9),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'App Name',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4392F9),
                      ),
                    ),
                  ],
                ),
              ),

              // Menu items
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    _buildDrawerItem(
                      icon: Icons.home,
                      title: 'Home',
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    _buildDrawerItem(
                      icon: Icons.person,
                      title: 'Profile',
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    _buildDrawerItem(
                      icon: Icons.settings,
                      title: 'Settings',
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    _buildDrawerItem(
                      icon: Icons.help,
                      title: 'Help',
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Divider(color: Color(0xFF4392F9), thickness: 1),
                    _buildDrawerItem(
                      icon: Icons.logout,
                      title: 'Logout',
                      onTap: () {
                        Navigator.pop(context);
                      },
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

  Widget _buildDrawerItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Color(0xFF4392F9), size: 24),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: Colors.black87,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: onTap,
      hoverColor: Color(0xFF4392F9).withOpacity(0.1),
      splashColor: Color(0xFF4392F9).withOpacity(0.2),
    );
  }
}

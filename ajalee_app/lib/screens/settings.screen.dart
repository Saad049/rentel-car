import 'package:ajalee_app/screens/dashbord.screen.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/background.png'), // Add your background image here
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new_outlined,
                      color: Colors.white),
                  onPressed: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DashbordScreen()));
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                const Text(
                  'Manage Your Settings',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),

            // Header

            const SizedBox(height: 20),

            // Enable Notifications Section
            Card(
              elevation: 6,
              color: Colors.white.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: SwitchListTile(
                title: const Text('Enable Notifications'),
                value: true, // Replace with your state management solution
                onChanged: (bool value) {
                  // Handle change
                },
                activeColor: Color.fromARGB(255, 243, 217, 27),
              ),
            ),
            const SizedBox(height: 16),

            // Change Language Section
            Card(
              elevation: 6,
              color: Colors.white.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.language,
                  color: Color.fromARGB(255, 243, 217, 27),
                ),
                title: const Text('Change Language'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Handle language change
                },
              ),
            ),
            const SizedBox(height: 16),

            // Change Theme Section
            Card(
              elevation: 6,
              color: Colors.white.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.color_lens,
                  color: Color.fromARGB(255, 243, 217, 27),
                ),
                title: const Text('Change Theme'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Handle theme change
                },
              ),
            ),
            const SizedBox(height: 16),

            // Privacy Policy Section
            Card(
              elevation: 6,
              color: Colors.white.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.privacy_tip,
                  color: Color.fromARGB(255, 243, 217, 27),
                ),
                title: const Text('Privacy Policy'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Navigate to privacy policy
                },
              ),
            ),
            const SizedBox(height: 16),

            // User Name Section
            Card(
              elevation: 6,
              color: Colors.white.withOpacity(0.8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white.withOpacity(0.5),
                  labelText: 'User Name',
                  hintStyle: TextStyle(color: Colors.black),
                  labelStyle:
                      TextStyle(color: const Color.fromARGB(255, 66, 64, 64)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Save Changes Button
            ElevatedButton(
              onPressed: () {
                // Handle save changes
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 243, 217, 27), // App theme color
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Save Changes',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 20),

            // Log Out Button
            ElevatedButton(
              onPressed: () {
                // Handle logout
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 243, 217, 27),
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Log Out',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

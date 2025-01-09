import 'package:flutter/material.dart';
import 'message_screen.dart'; // mengimport MessageScreen

class DashboardScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, Syifa'),
        actions: [
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {
                Navigator.pushNamed(context, '/message'
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Navigasi ke halaman profil
              print('Person icon pressed');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image section with adjusted width
              Container(
                width: MediaQuery.of(context).size.width * 0.1, // Adjust width as needed
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage('assets/dashboard.jpg'), // Replace with your image asset path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Keep Moving Up',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 16),
              Text(
                'Categories',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // "See All" button
                  TextButton(
                    onPressed: () {
                      // Add functionality for "See All"
                      print('See All button pressed');
                    },
                    child: Text('See All'),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  // Example category chips
                  Chip(label: Text('Development')),
                  Chip(label: Text('IT & Software')),
                  Chip(label: Text('UI/UX')),
                  Chip(label: Text('Business')),
                  Chip(label: Text('Finance & Business')),
                  Chip(label: Text('Personal')),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Top Courses',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                children: List.generate(
                  6, // Adjust the number of courses to display
                  (index) => Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(child: Text('Course $index')),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        onTap: (index) {
          if (index == 1) { // Jika tombol "Pesan" ditekan (index biasanya dimulai dari 0)
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MessageScreen()),
            );
          }
        } 
      ),
    );
  }
}
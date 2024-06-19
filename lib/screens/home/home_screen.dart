import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Map<String, String>> jobCards = [
    {
      'jobId': '001',
      'vehicle': 'Yamaha MT-15',
      'customer': 'John Doe',
      'status': 'In Progress',
    },
    {
      'jobId': '002',
      'vehicle': 'Honda CB350',
      'customer': 'Jane Smith',
      'status': 'Completed',
    },
    // Add more job cards as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Job Cards'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.lightBlueAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: jobCards.length,
                  itemBuilder: (context, index) {
                    final jobCard = jobCards[index];
                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      color: Colors.white24,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Job ID: ${jobCard['jobId']}',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            Text(
                              'Vehicle: ${jobCard['vehicle']}',
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white70,
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            Text(
                              'Customer: ${jobCard['customer']}',
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white70,
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            Text(
                              'Status: ${jobCard['status']}',
                              style: TextStyle(
                                fontSize: 16,
                                color: jobCard['status'] == 'Completed'
                                    ? Colors.green
                                    : Colors.orange,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Center'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Profile Card
          Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.blue.shade700,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://cdn.icon-icons.com/icons2/2955/PNG/512/person_fill_icon_185522.png'),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mausam Rayamajhi',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'A trendsetter',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          // Stats Row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildStatItem('Collect', '846'),
                buildStatItem('Attention', '51'),
                buildStatItem('Track', '267'),
                buildStatItem('Coupons', '39'),
              ],
            ),
          ),
          // Icon Row
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildIcon(Icons.account_balance_wallet, 'Wallet'),
                buildIcon(Icons.delivery_dining, 'Delivery'),
                Stack(
                  children: [
                    buildIcon(Icons.message, 'Message'),
                    Positioned(
                      right: 0,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.red,
                        child: Text(
                          '2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                buildIcon(Icons.support_agent, 'Service'),
              ],
            ),
          ),
          // Menu Options
          Expanded(
            child: ListView(
              children: [
                buildMenuItem(Icons.location_on, 'Address',
                    'Ensure your harvesting address'),
                buildMenuItem(
                    Icons.lock, 'Privacy', 'System permission change'),
                buildMenuItem(
                    Icons.settings, 'General', 'Basic functional settings'),
                buildMenuItem(Icons.notifications, 'Notification',
                    'Take over the news in time'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildStatItem(String label, String count) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(label),
      ],
    );
  }

  Widget buildIcon(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 30),
        SizedBox(height: 8),
        Text(label),
      ],
    );
  }

  Widget buildMenuItem(IconData icon, String title, String subtitle) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Icon(Icons.chevron_right),
      onTap: () {},
    );
  }
}

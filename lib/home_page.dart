import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'add.dart';
import 'update.dart';
import 'login.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 10),
          child: Text(
            "Home",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                // Card untuk Dashboard
                Card(
                  elevation: 4,
                  margin: EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DashboardPage()),
                      );
                    },
                    child: Container(
                      width: 220,
                      height: 180,
                      padding: EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.dashboard, color: Colors.blue, size: 40),
                          SizedBox(height: 8),
                          Text(
                            'Dashboard',
                            style: TextStyle(color: Colors.blue, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Card untuk Add Data
                Card(
                  elevation: 4,
                  margin: EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddPage()),
                      );
                    },
                    child: Container(
                      width: 220,
                      height: 180,
                      padding: EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add_box, color: Colors.green, size: 40),
                          SizedBox(height: 8),
                          Text(
                            'Add',
                            style: TextStyle(color: Colors.green, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                // Card untuk Update Data
                Card(
                  elevation: 4,
                  margin: EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UpdatePage()),
                      );
                    },
                    child: Container(
                      width: 220,
                      height: 180,
                      padding: EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.update, color: Colors.orange, size: 40),
                          SizedBox(height: 8),
                          Text(
                            'Update',
                            style: TextStyle(color: Colors.orange, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Card untuk Logout
                Card(
                  elevation: 4,
                  margin: EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Container(
                      width: 220,
                      height: 180,
                      padding: EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.logout, color: Colors.red, size: 40),
                          SizedBox(height: 8),
                          Text(
                            'Logout',
                            style: TextStyle(color: Colors.red, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),

            // Menampilkan nama dan NPM
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Nama: Salwa Mutfia Indah Putri",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "NPM: 714220026",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

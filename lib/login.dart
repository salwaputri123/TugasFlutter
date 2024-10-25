import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.teal, // Warna AppBar tosca
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Form Login",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Center(
              child: SizedBox(
                width: 400, // Lebar tabel lebih kecil
                child: Table(
                  border: TableBorder(
                    horizontalInside: BorderSide(width: 0.5, color: Colors.grey),
                    verticalInside: BorderSide(width: 0.5, color: Colors.grey),
                    top: BorderSide(width: 1.0, color: Colors.black),
                    bottom: BorderSide(width: 1.0, color: Colors.black),
                    left: BorderSide(width: 1.0, color: Colors.black),
                    right: BorderSide(width: 1.0, color: Colors.black),
                  ),
                  columnWidths: {
                    0: FlexColumnWidth(2),
                  },
                  children: [
                    _buildTableRow("Username", usernameController),
                    _buildTableRow("Password", passwordController),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                // Implement login action
              },
              icon: Icon(Icons.login, color: Colors.blueGrey, size: 16),
              label: Text(
                'Login',
                style: TextStyle(color: Colors.blueGrey, fontSize: 14),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(100, 36), // Ukuran tombol lebih kecil
                backgroundColor: Colors.white,
                side: BorderSide(color: Colors.blueGrey),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TableRow _buildTableRow(String label, TextEditingController controller) {
    return TableRow(
      children: [
        Padding(
          padding: EdgeInsets.all(4.0), // Padding lebih kecil
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.blueGrey[800],
                ),
              ),
              SizedBox(height: 4), // Jarak antara label dan TextField lebih kecil
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8), // Padding dalam TextField lebih kecil
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

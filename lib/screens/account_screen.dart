import 'package:dukaan/widgets/divider.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [Icon(Icons.search)],
       backgroundColor: const Color(0xFF136EB4),
      title: const Text(
          'Account',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            ListTile(
              leading: Container(
                color: Colors.white54,
                width: 80,
                height: 80,
                child: Icon(Icons.home,size: 40,),
              ),
              title: Text('Homely'),
              subtitle: Text('Edit business details'),
            ),
            divider(20),
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(width: 1,color:Colors.grey )
                
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Available credits'),
                      Text('10.0')
                    ],
                  ),
                  ElevatedButton(onPressed: (){}, child: Text('Add credits')),
                ],
              ),
            ),
 
            const ExpansionTile(title: Text('Account details'),
            leading: Icon(Icons.person),
            ),
            ExpansionTile(title: Text('Store settings'),
            leading: Icon(Icons.settings),
            ),
            ExpansionTile(title: Text('Get your own App'),
            leading: Icon(Icons.phone_android),
            ),
            ExpansionTile(title: Text('Dukaan for pc'),
            leading: Icon(Icons.computer),
            ),
            ExpansionTile(title: Text('Joint Dukaan'),
            leading: Icon(Icons.group),
            ),
            ListTile(
              title: Text('Payment Option'),
              leading: Icon(Icons.paid),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              title: Text('Help center'),
              leading: Icon(Icons.help),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              title: Text('Additional Information'),
              leading: Icon(Icons.pending),
              trailing: Icon(Icons.navigate_next),
            ),

            Container(
              padding: EdgeInsets.all(10),
              color: const Color.fromARGB(255, 231, 230, 230),
              width :MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    child: Text('OUR PROMISE'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.enhanced_encryption_rounded),
                           SizedBox(
                            width: 10,
                          ),
                          Text('100% safe'),
                        ],
                      ),
                      
                      Row(
                        children: [
                          Icon(Icons.cloud),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Auto Data Backup')
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
            
            


          ],
        ),
      ),
    );
  }
}
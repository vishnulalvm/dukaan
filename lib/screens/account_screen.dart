import 'package:dukaan/screens/additional_info.dart';
import 'package:dukaan/screens/payments_screen.dart';
import 'package:dukaan/widgets/divider.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: const [Icon(Icons.search)],
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
                child: const Icon(Icons.home,size: 40,),
              ),
              title: const Text('Homely'),
              subtitle: const Text('Edit business details'),
            ),
            divider(20),
            Container(
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(width: 1,color:Colors.grey )
                
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Text('Available credits'),
                      Text('10.0')
                    ],
                  ),
                  ElevatedButton(onPressed: (){}, child: const Text('Add credits')),
                ],
              ),
            ),

            divider(20),
 
            const ExpansionTile(title: Text('Account details'),
            leading: Icon(Icons.person),
            ),
            const ExpansionTile(title: Text('Store settings'),
            leading: Icon(Icons.settings),
            ),
            const ExpansionTile(title: Text('Get your own App'),
            leading: Icon(Icons.phone_android),
            ),
            const ExpansionTile(title: Text('Dukaan for pc'),
            leading: Icon(Icons.computer),
            ),
            const ExpansionTile(title: Text('Joint Dukaan'),
            leading: Icon(Icons.group),
            ),
             ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const PaymentsScreen()));

              },
              title: const Text('Payments'),
              leading: const Icon(Icons.payment_rounded),
              trailing: const Icon(Icons.navigate_next),
            ),
            const ListTile(
              
              title: Text('Help center'),
              leading: Icon(Icons.help),
              trailing: Icon(Icons.navigate_next),
            ),
             ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const AdditionalInfoScreen()));

              },
              title: const Text('Additional Information'),
              leading: const Icon(Icons.pending),
              trailing: const Icon(Icons.navigate_next),
            ),
            divider(20),

            Container(
              padding: const EdgeInsets.all(10),
              color: const Color.fromARGB(255, 231, 230, 230),
              width :MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    child: const Text('OUR PROMISE'),
                  ),
                  const Row(
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
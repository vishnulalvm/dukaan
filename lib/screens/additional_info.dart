import 'package:dukaan/widgets/listtile_card.dart';
import 'package:flutter/material.dart';

class AdditionalInfoScreen extends StatelessWidget {
  const AdditionalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text('Additional Information',style: TextStyle(fontSize: 18),),
        
        
        
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20,bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            SizedBox(
              child: Column(
                children: [
                  listtilecard(title: 'Share Dukaan App',
                 leading: Icons.share,
                  trailing: Icons.navigate_next),
                   listtilecard(title: 'Change Language',
                 leading: Icons.translate,
                  trailing: Icons.navigate_next),
                  ListTile(
                    leading: const Icon(Icons.chat),
                    title: const Text('Whatsapp Chat Support'),
                    trailing: Switch(value: true, onChanged: (index){}),
                  ),
                  const ListTile(
                    title: Text('Privacy Policy'),
                    leading: Icon(Icons.lock),
                  ),
                  const ListTile(
                    title: Text('Rate Us'),
                    leading: Icon(Icons.star_rate),
                  ),
                    listtilecard(title: 'About Us',
                 leading: Icons.info,
                  trailing: Icons.navigate_next,
                  function: (){
                    
                  }
                  ),
                  const ListTile(
                    title: Text('Sign Out'),
                    leading: Icon(Icons.logout),
                  ),
        
                ],
              ),
            ),
        
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('version'),
                Text('2.4.2')
              ],
            )
        
          ],
        ),
      ),
    );
  }
}
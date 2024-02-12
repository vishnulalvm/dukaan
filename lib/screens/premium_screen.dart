import 'package:dukaan/widgets/divider.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String youtubeId = "id1E0lqnUtY";
    YoutubePlayerController videocontroller = YoutubePlayerController(
        initialVideoId: youtubeId,
        flags: const YoutubePlayerFlags(autoPlay: false, mute: true));
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dukaan Premium',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 125,
                color: const Color(0xFF136EB4),
              ),
              Positioned(
                  child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  // optional: border radius for container
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // shadow color
                      spreadRadius: 3, // spread radius
                      blurRadius: 7, // blur radius
                      offset: const Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                margin: const EdgeInsets.only(left: 30, right: 30),
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: Column(
                  children: [
                    SizedBox(
                        width: 150,
                        height: 100,
                        child: Image.asset('assets/logo.png')),
                    const Text('Get Dukaan Premium for just\n₹4,999/year',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center),
                    divider(20),
                    const Text(
                      'All the advaced feature for scaling your \nbusiness.',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ))
            ],
          ),
          divider(20),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: const Text(
              'Features',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
          ),
          divider(20),
          features(
              icon: Icons.language,
              title: 'Custom Domine Name',
              subtitle:
                  "Get your own domine name and build your own brand on internet"),
          features(
              icon: Icons.new_releases,
              title: 'Verified seller badge',
              subtitle:
                  "Get green verified badge uder your store neme and build trust."),
          features(
              icon: Icons.computer,
              title: 'Dukaan for PC',
              subtitle:
                  "Access all the exclusive premium features on Dekaan Pc"),
          features(
              icon: Icons.support_agent,
              title: 'Priority Support',
              subtitle:
                  "Get your question resolved with our priority customercare support"),
          divider(20),
          const Divider(
            thickness: 5,
          ),
          divider(20),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: const Text(
              'What is Dekaan premium ?',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            margin: const EdgeInsets.all(20),
            child: YoutubePlayer(
              controller: videocontroller,
              showVideoProgressIndicator: true,
            ),
          )
        ],
      ),
    );
  }

  Widget features(
      {required IconData icon, required var title, required var subtitle}) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black,
            width: 2.0,
          ),
        ),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(
            icon,
            size: 30,
          ),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(subtitle),
    );
  }
}

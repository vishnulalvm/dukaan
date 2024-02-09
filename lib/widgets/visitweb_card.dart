import 'package:flutter/material.dart';

Widget visitWebCard(){
  return Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 280,
                  height: 180,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.computer),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Visit web.mydukaan.io',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                        const Text(
                            'We recommend using dukaan on your web for more tools & features'),
                        const SizedBox(
                          height: 15,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text('Not Now'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
}
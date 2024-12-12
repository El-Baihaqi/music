import 'package:flutter/material.dart';
import 'package:musik/neu_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                //tombol balik dan menu
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NeuBox(
                        child: Icon(
                          Icons.arrow_back,
                        ),
                      ),
                    ),
                    Text('P L A Y L I S T'),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NeuBox(
                        child: Icon(
                          Icons.menu,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 25,
                ),
                //cover album
                NeuBox(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset('cover.jpeg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Naathaniel",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.grey.shade700),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  'That Timeline',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 32,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),
                //tombol acak, ulang, waktu
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('0:06'),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text('11.23')
                  ],
                ),

                const SizedBox(
                  height: 40,
                ),

                //bar musik
                NeuBox(
                  child: LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.15,
                    progressColor: Colors.green,
                    backgroundColor: Colors.transparent,
                  ),
                ),

                const SizedBox(
                  height: 40,
                ),

                //tombol skip, pause, balik
                SizedBox(
                  height: 80,
                  child: Row(
                    children: [
                      Expanded(
                        child: NeuBox(
                          child: Icon(
                            Icons.skip_previous,
                            size: 32,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: NeuBox(
                            child: Icon(
                              Icons.play_arrow,
                              size: 32,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: NeuBox(
                          child: Icon(
                            Icons.skip_next,
                            size: 32,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

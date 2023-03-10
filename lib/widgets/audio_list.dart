import 'package:flutter/material.dart';
import 'package:chatgpt_course/services/assets_manager.dart';
import 'package:audio_wave/audio_wave.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioList extends StatefulWidget {
  int selectedIndex = 0;
  int currentTab;
  AudioList({super.key, required this.currentTab});

  @override
  State<AudioList> createState() => _AudioListState();
}

class _AudioListState extends State<AudioList> {
  final AudioPlayer audioPlayer = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return widget.currentTab == 0
        ? ListView(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 10,
                shadowColor: Theme.of(context).secondaryHeaderColor,
                child: ListTile(
                  trailing: Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: widget.selectedIndex == 0
                        ? AudioWave(
                            height: 20,
                            width: 30,
                            spacing: 2.5,
                            bars: [
                              AudioWaveBar(
                                  heightFactor: 0.7,
                                  color: Colors.lightBlueAccent),
                              AudioWaveBar(
                                  heightFactor: 0.8, color: Colors.blue),
                              AudioWaveBar(
                                  heightFactor: 1, color: Colors.yellow),
                              AudioWaveBar(
                                  heightFactor: 0.9, color: Colors.red),
                            ],
                          )
                        : SizedBox(),
                  ),
                  tileColor: Theme.of(context).focusColor,
                  contentPadding: EdgeInsets.all(10),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(AssetsManager.prescott),
                    radius: 30,
                  ),
                  title: Text("Dak Prescott",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text("QB - Dallas Cowboys",
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                  onTap: () {
                    setState(() {
                      widget.selectedIndex = 0;
                    });
                  },
                  onLongPress: () {
                    widget.selectedIndex = -1;
                  },
                ),
              ),
            ],
          )
        : ListView(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 10,
                shadowColor: Theme.of(context).secondaryHeaderColor,
                child: ListTile(
                  trailing: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: widget.selectedIndex == 0
                        ? AudioWave(
                            height: 20,
                            width: 30,
                            spacing: 2.5,
                            bars: [
                              AudioWaveBar(
                                  heightFactor: 0.7,
                                  color: Colors.lightBlueAccent),
                              AudioWaveBar(
                                  heightFactor: 0.8, color: Colors.blue),
                              AudioWaveBar(
                                  heightFactor: 1, color: Colors.yellow),
                              AudioWaveBar(
                                  heightFactor: 0.9, color: Colors.red),
                            ],
                          )
                        : SizedBox(),
                  ),
                  tileColor: Theme.of(context).focusColor,
                  contentPadding: EdgeInsets.all(10),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(AssetsManager.shanahan),
                    radius: 30,
                  ),
                  title: Text("Mike Shanahan",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text("Head Coach - San Francisco 49ers",
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                  onTap: () async {
                    setState(() {
                      widget.selectedIndex = 0;
                    });
                  },
                  onLongPress: () {
                    widget.selectedIndex = -1;
                  },
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 10,
                shadowColor: Theme.of(context).secondaryHeaderColor,
                child: ListTile(
                  trailing: Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: widget.selectedIndex == 1
                        ? AudioWave(
                            height: 20,
                            width: 30,
                            spacing: 2.5,
                            bars: [
                              AudioWaveBar(
                                  heightFactor: 0.7,
                                  color: Colors.lightBlueAccent),
                              AudioWaveBar(
                                  heightFactor: 0.8, color: Colors.blue),
                              AudioWaveBar(
                                  heightFactor: 1, color: Colors.yellow),
                              AudioWaveBar(
                                  heightFactor: 0.9, color: Colors.red),
                            ],
                          )
                        : SizedBox(),
                  ),
                  tileColor: Theme.of(context).focusColor,
                  contentPadding: EdgeInsets.all(10),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(AssetsManager.kittle),
                    radius: 30,
                  ),
                  title: Text("George Kittle",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text("TE - San Francisco 49ers",
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                  onTap: () {
                    setState(() {
                      widget.selectedIndex = 1;
                    });
                  },
                  onLongPress: () {
                    widget.selectedIndex = -1;
                  },
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 10,
                shadowColor: Theme.of(context).secondaryHeaderColor,
                child: ListTile(
                  trailing: Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: widget.selectedIndex == 2
                        ? AudioWave(
                            height: 20,
                            width: 30,
                            spacing: 2.5,
                            bars: [
                              AudioWaveBar(
                                  heightFactor: 0.7,
                                  color: Colors.lightBlueAccent),
                              AudioWaveBar(
                                  heightFactor: 0.8, color: Colors.blue),
                              AudioWaveBar(
                                  heightFactor: 1, color: Colors.yellow),
                              AudioWaveBar(
                                  heightFactor: 0.9, color: Colors.red),
                            ],
                          )
                        : SizedBox(),
                  ),
                  tileColor: Theme.of(context).focusColor,
                  contentPadding: EdgeInsets.all(10),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(AssetsManager.bosa),
                    radius: 30,
                  ),
                  title: Text("Nick Bosa",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text("DE - San Francisco 49ers",
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                  onTap: () {
                    setState(() {
                      widget.selectedIndex = 2;
                    });
                  },
                  onLongPress: () {
                    widget.selectedIndex = -1;
                  },
                ),
              ),
            ],
          );
  }
}

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:sihpro/AGE/childmarg2.dart';

main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late VideoPlayerController controller;

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer() {
    controller = VideoPlayerController.asset('assests/videos/new1.mp4');
    controller.addListener(() {
      setState(() {});
    });
    controller.initialize().then((value) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VIDEO LEVEL"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
          child: Column(children: [
        AspectRatio(
          aspectRatio: controller.value.aspectRatio,
          child: VideoPlayer(controller),
        ),
        Container(
          //duration of video
          child:
              Text("Total Duration: " + controller.value.duration.toString()),
        ),
        Container(
            child: VideoProgressIndicator(controller,
                allowScrubbing: true,
                colors: VideoProgressColors(
                  backgroundColor: Colors.redAccent,
                  playedColor: Colors.green,
                  bufferedColor: Colors.purple,
                ))),
        Container(
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    if (controller.value.isPlaying) {
                      controller.pause();
                    } else {
                      controller.play();
                    }

                    setState(() {});
                  },
                  icon: Icon(controller.value.isPlaying
                      ? Icons.pause
                      : Icons.play_arrow)),
              IconButton(
                  onPressed: () {
                    controller.seekTo(Duration(seconds: 0));

                    setState(() {});
                  },
                  icon: Icon(Icons.stop))
            ],
          ),
        ),
        Container(
          child: Center(
            child: SizedBox(
              height: 70,
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent,
                    side: BorderSide(width: 3, color: Colors.brown),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    padding: EdgeInsets.all(20)),
                onPressed: () => {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => MyApp()))
                },
                child: Text(
                  "start game",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ])),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:insurance_app/models/list_question.dart';
import 'package:video_player/video_player.dart';

import '../../constant.dart';

class VideoContainer extends StatefulWidget {
  const VideoContainer({super.key, required this.listQuestion});
  final ListQuestion listQuestion;


  @override
  State<VideoContainer> createState() => _VideoContainerState();
}

class _VideoContainerState extends State<VideoContainer> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  


  @override
  void initState() {
    _controller = VideoPlayerController.network(widget.listQuestion.videoURL.toString());
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              FutureBuilder(
                  future: _initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      );
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                  ),
                  const SizedBox(height: 8,),
              FloatingActionButton(
                backgroundColor: buttonColor,
                onPressed: (){
                setState(() {
                  if(_controller.value.isPlaying){
                    _controller.pause();
                  }
                  else {_controller.play();}
                });
              },
              child: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow,),),
            ],
          );
  }
}
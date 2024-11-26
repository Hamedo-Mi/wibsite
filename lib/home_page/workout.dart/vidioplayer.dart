import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerPage extends StatelessWidget {
  final String videoId;

  const VideoPlayerPage({super.key, required this.videoId});

  @override
  Widget build(BuildContext context) {
    final YoutubePlayerController controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xffD5FF5F)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Video Player',
          style: TextStyle(color: Color(0xffD5FF5F)),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: Column(
        children: [
          YoutubePlayer(
            controller: controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
          ),
          const SizedBox(height: 20),
          // You can add more content below the player if needed
        ],
      ),
    );
  }
}

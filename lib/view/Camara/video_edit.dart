import 'dart:io';
import 'package:custom_video_editor/VideoEditor.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ImagePicker _picker = ImagePicker();
  String? videoPath;
  VideoPlayerController? _videoController;

  Future<void> pickVideo() async {
    try {
      final XFile? pickedFile = await _picker.pickVideo(
        source: ImageSource.gallery,
      );
      if (pickedFile != null) {
        videoPath = pickedFile.path;

        // Initialize the video controller
        _videoController = VideoPlayerController.file(File(videoPath!))
          ..initialize().then((_) {
            setState(() {});
          });
      }
    } catch (e) {
      print("Error picking video: $e");
    }
  }

  Future<void> editVideo(String videoLink) async {
    final updatedRes = await Navigator.push(
        context,
        MaterialPageRoute(
            barrierDismissible: true,
            fullscreenDialog: true,
            builder: (context) {
              return EditVideoComponent(videoLink: videoLink);
            }));

    if (updatedRes != null && updatedRes is FinishedVideoData) {
      // Dispose of the old controller
      _videoController?.dispose();

      // Update video path with the edited video
      videoPath = updatedRes.url;

      // Initialize the new video controller
      _videoController = VideoPlayerController.file(File(videoPath!))
        ..initialize().then((_) {
          setState(() {});
        });
    }
  }

  @override
  void dispose() {
    _videoController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () => pickVideo(),
              child: const Text('Pick Video'),
            ),
            if (videoPath != null && _videoController != null)
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    width: _videoController!.value.size.width,
                    height: _videoController!.value.size.height,
                    child: VideoPlayer(_videoController!),
                  ),
                  Positioned(
                    top: 25,
                    right: 35,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          videoPath = null;
                          _videoController?.dispose();
                          _videoController = null;
                        });
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.delete,
                            size: 25, color: Colors.white),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    right: 130,
                    child: GestureDetector(
                      onTap: () => editVideo(videoPath!),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.edit,
                            size: 25, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

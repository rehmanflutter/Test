// import 'dart:io';
// import 'package:camerawesome/camerawesome_plugin.dart';
// import 'package:camerawesome/pigeon.dart';
// import 'package:chats/view/Camara/video_edit.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:image_picker/image_picker.dart'; // for XFile support

// class CameraPage extends StatefulWidget {
//   const CameraPage({super.key});
//   @override
//   State<CameraPage> createState() => _CameraPageState();
// }
// class _CameraPageState extends State<CameraPage> {
//   List<XFile> capturedMedia =
//       []; // List to store captured images and videos as XFile

//   Future<void> pickMedia() async {
//     // Allow the user to pick images or videos
//     FilePickerResult? result = await FilePicker.platform.pickFiles(
//       type: FileType.media,
//       allowMultiple: false,
//     );

//     if (result != null) {
//       final xfile = XFile(result.files.single.path!);
//       final isVideo = result.files.single.extension == 'mp4';

//       // If it's a video, navigate to the video editor page
//       if (isVideo) {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (_) => VideoEditor(file: xfile),
//           ),
//         );
//       } else {
//         // Add the selected image to the captured media
//         setState(() {
//           capturedMedia.add(xfile);
//         });

//         // Navigate to the preview screen for images
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (_) => MediaPreviewScreen(
//               mediaFile: xfile,
//               isVideo: false,
//             ),
//           ),
//         );
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Camera preview
//           CameraAwesomeBuilder.awesome(
//             onMediaCaptureEvent: (event) {
//               switch ((event.status, event.isPicture, event.isVideo)) {
//                 case (MediaCaptureStatus.success, true, false):
//                   event.captureRequest.when(
//                     single: (single) {
//                       if (single.file != null) {
//                         setState(() {
//                           capturedMedia.add(XFile(single.file!.path));
//                         });
//                       }
//                     },
//                     multiple: (multiple) {
//                       multiple.fileBySensor.forEach((key, value) {
//                         if (value != null) {
//                           setState(() {
//                             capturedMedia.add(XFile(value.path));
//                           });
//                         }
//                       });
//                     },
//                   );
//                   break;
//                 case (MediaCaptureStatus.success, false, true):
//                   event.captureRequest.when(
//                     single: (single) {
//                       if (single.file != null) {
//                         final videoFile = XFile(single.file!.path);
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (_) => VideoEditor(file: videoFile),
//                           ),
//                         );
//                       }
//                     },
//                     multiple: (multiple) {
//                       multiple.fileBySensor.forEach((key, value) {
//                         if (value != null) {
//                           final videoFile = XFile(value.path);
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (_) => VideoEditor(file: videoFile),
//                             ),
//                           );
//                         }
//                       });
//                     },
//                   );
//                   break;
//                 default:
//                   break;
//               }

//             },
//             saveConfig: SaveConfig.photoAndVideo(
//               initialCaptureMode: CaptureMode.photo,
//               photoPathBuilder: (sensors) async {
//                 final Directory extDir = await getTemporaryDirectory();
//                 final testDir = await Directory('${extDir.path}/camerawesome')
//                     .create(recursive: true);
//                 return SingleCaptureRequest(
//                   '${testDir.path}/${DateTime.now().millisecondsSinceEpoch}.jpg',
//                   sensors.first,
//                 );
//               },
//               videoOptions: VideoOptions(
//                 enableAudio: true,
//                 ios: CupertinoVideoOptions(fps: 10),
//                 android: AndroidVideoOptions(
//                   bitrate: 6000000,
//                   fallbackStrategy: QualityFallbackStrategy.lower,
//                 ),
//               ),
//               //  exifPreferences: ExifPreferences(saveGPSLocation: true),
//             ),
//             sensorConfig: SensorConfig.single(
//               sensor: Sensor.position(SensorPosition.back),
//               flashMode: FlashMode.auto,
//               aspectRatio: CameraAspectRatios.ratio_4_3,
//               zoom: 0.0,
//             ),
//             enablePhysicalButton: true,
//           ),

//           // Add file picker button
//           Positioned(
//             bottom: 90,
//             right: 20,
//             child: FloatingActionButton(
//               onPressed: pickMedia, // Use the file picker
//               child: Icon(Icons.file_present),
//             ),
//           ),

//           // Add button to navigate to the preview screen for captured media
//           Positioned(
//             bottom: 20,
//             right: 20,
//             child: FloatingActionButton(
//               onPressed: () {
//                 if (capturedMedia.isNotEmpty) {
//                   final lastFile = capturedMedia.last;
//                   final isVideo = lastFile.path.endsWith(".mp4");

//                   if (isVideo) {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (_) => VideoEditor(file: lastFile),
//                       ),
//                     );
//                   } else {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (_) => MediaPreviewScreen(
//                           mediaFile: lastFile,
//                           isVideo: false,
//                         ),
//                       ),
//                     );
//                   }
//                 }
//               },
//               child: Icon(Icons.navigate_next),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MediaPreviewScreen extends StatelessWidget {
//   final XFile mediaFile;
//   final bool isVideo;

//   const MediaPreviewScreen({
//     Key? key,
//     required this.mediaFile,
//     required this.isVideo,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: GestureDetector(
//               onTap: () {
//                 Get.to(FlutterStoryEditorExample());
//               },
//               child: const Text("Media Preview"))),
//       body: Center(
//         child: isVideo
//             ? Icon(Icons.videocam,
//                 size: 200, color: Colors.red) // Placeholder for video
//             : Image.file(
//                 File(mediaFile.path)), // Display image if it's not a video
//       ),
//     );
//   }
// }

// class VideoEditor extends StatelessWidget {
//   final XFile file;

//   const VideoEditor({
//     Key? key,
//     required this.file,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text("Media Preview")), body: Center());
//   }
// }
import 'dart:io'; // For working with file system directories
import 'package:camerawesome/camerawesome_plugin.dart'; // CameraAwesome plugin for camera functionality
import 'package:camerawesome/pigeon.dart'; // Additional dependencies for CameraAwesome
import 'package:chats/utils/images.dart';
import 'package:chats/view/Camara/video_edit.dart'; // Video editing screen
import 'package:flutter/material.dart'; // Flutter UI components
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart'; // GetX for navigation
import 'package:path_provider/path_provider.dart'; // For accessing directories
import 'package:file_picker/file_picker.dart'; // For selecting files from the file system
import 'package:image_picker/image_picker.dart'; // For picking images or videos as XFile

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  List<XFile> capturedMedia =
      []; // List to store captured images and videos as XFile

  Future<void> pickMedia() async {
    // Allow the user to pick images or videos
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.media, // Set the file picker to media type
      allowMultiple: false, // Single file selection
    );

    if (result != null) {
      final xfile = XFile(result.files.single.path!); // Convert result to XFile
      final isVideo =
          result.files.single.extension == 'mp4'; // Check if it's a video

      if (isVideo) {
        // If it's a video, navigate to the video editor page
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => VideoEditor(file: xfile),
          ),
        );
      } else {
        // If it's an image, add it to the captured media
        setState(() {
          capturedMedia.add(xfile);
        });

        // Navigate to the preview screen for the image
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => MediaPreviewScreen(
              mediaFile: xfile,
              isVideo: false,
            ),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Camera preview using CameraAwesomeBuilder
          CameraAwesomeBuilder.awesome(
            onMediaCaptureEvent: (event) {
              // Handle media capture event
              switch ((event.status, event.isPicture, event.isVideo)) {
                case (MediaCaptureStatus.success, true, false):
                  // If media capture is successful and it's a picture
                  event.captureRequest.when(
                    single: (single) {
                      // For single capture
                      if (single.file != null) {
                        setState(() {
                          capturedMedia.add(XFile(single.file!
                              .path)); // Add picture to capturedMedia list
                        });
                      }
                    },
                    multiple: (multiple) {
                      // For multiple capture (if applicable)
                      multiple.fileBySensor.forEach((key, value) {
                        if (value != null) {
                          setState(() {
                            capturedMedia.add(XFile(
                                value.path)); // Add each image to the list
                          });
                        }
                      });
                    },
                  );
                  break;
                case (MediaCaptureStatus.success, false, true):
                  // If media capture is successful and it's a video
                  event.captureRequest.when(
                    single: (single) {
                      if (single.file != null) {
                        final videoFile =
                            XFile(single.file!.path); // Get video file
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => VideoEditor(
                                file: videoFile), // Navigate to video editor
                          ),
                        );
                      }
                    },
                    multiple: (multiple) {
                      multiple.fileBySensor.forEach((key, value) {
                        if (value != null) {
                          final videoFile = XFile(value.path); // Get video file
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => VideoEditor(
                                  file: videoFile), // Navigate to video editor
                            ),
                          );
                        }
                      });
                    },
                  );
                  break;
                default:
                  break; // Do nothing for other statuses
              }
            },
            saveConfig: SaveConfig.photoAndVideo(
              initialCaptureMode: CaptureMode.photo, // Start in photo mode
              photoPathBuilder: (sensors) async {
                final Directory extDir =
                    await getTemporaryDirectory(); // Get temporary directory
                final testDir = await Directory('${extDir.path}/camerawesome')
                    .create(
                        recursive: true); // Create a directory to store images
                return SingleCaptureRequest(
                  '${testDir.path}/${DateTime.now().millisecondsSinceEpoch}.jpg', // Generate unique file name
                  sensors.first,
                );
              },
              videoOptions: VideoOptions(
                enableAudio: true, // Enable audio recording
                ios: CupertinoVideoOptions(fps: 10), // iOS video options
                android: AndroidVideoOptions(
                  bitrate: 6000000, // Video bitrate
                  fallbackStrategy:
                      QualityFallbackStrategy.lower, // Lower quality on error
                ),
              ),
            ),
            sensorConfig: SensorConfig.single(
              sensor:
                  Sensor.position(SensorPosition.back), // Use the back camera
              flashMode: FlashMode.auto, // Set flash mode to auto
              aspectRatio: CameraAspectRatios.ratio_4_3, // Set aspect ratio
              zoom: 0.0, // Set initial zoom level
            ),
            enablePhysicalButton: true, // Allow using physical camera button
          ),

          // Add button to navigate to the preview screen for captured media
          Positioned(
            bottom: 90, // Move to accommodate file picker button
            right: 20,
            child: FloatingActionButton(
              onPressed: () {
                if (capturedMedia.isNotEmpty) {
                  final lastFile =
                      capturedMedia.last; // Get the last captured media
                  final isVideo =
                      lastFile.path.endsWith(".mp4"); // Check if it's a video

                  if (isVideo) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => VideoEditor(
                            file: lastFile), // Navigate to video editor
                      ),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => MediaPreviewScreen(
                          mediaFile: lastFile,
                          isVideo: false, // Preview image if it's not a video
                        ),
                      ),
                    );
                  }
                }
              },
              child: Icon(Icons.navigate_next), // Icon for navigation
            ),
          ),

          // Add file picker button at the bottom of the screen
          Positioned(
            bottom: 20, // Place it at the bottom of the screen
            right: 20,
            child: FloatingActionButton(
                backgroundColor: Colors.amber,
                onPressed: pickMedia, // Use the file picker to pick media
                child: SvgPicture.asset(AppImages.upload)
                // Icon(Icons.file_present), // Icon for file picker
                ),
          ),
        ],
      ),
    );
  }
}

// Media preview screen class
class MediaPreviewScreen extends StatelessWidget {
  final XFile mediaFile; // File to preview
  final bool isVideo; // Whether the file is a video or not

  const MediaPreviewScreen({
    Key? key,
    required this.mediaFile,
    required this.isVideo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: GestureDetector(
              onTap: () {}, child: const Text("Media Preview"))),
      body: Center(
        child: isVideo
            ? Icon(Icons.videocam,
                size: 200, color: Colors.red) // Placeholder for video
            : Image.file(
                File(mediaFile.path)), // Display image if it's not a video
      ),
    );
  }
}

// Video editor screen class
class VideoEditor extends StatelessWidget {
  final XFile file; // File to edit

  const VideoEditor({
    Key? key,
    required this.file,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Video Editor")), // Title of the screen
      body: Center(
        child: Text('Video editing functionality goes here'), // Placeholder
      ),
    );
  }
}

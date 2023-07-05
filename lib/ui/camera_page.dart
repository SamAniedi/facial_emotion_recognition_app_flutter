import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:emoscope/main.dart';
import 'package:flutter_tflite/flutter_tflite.dart';
import 'package:google_fonts/google_fonts.dart';

import 'details_page.dart';

import 'dart:typed_data';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  CameraImage? cameraImage;
  CameraController? cameraController;
  String output = "";

  @override
  void initState() {
    super.initState();
    loadCamera();
    loadModel();
  }

  @override
  void dispose() {
    if (mounted) {
      super.dispose();
      if (cameraController != null && cameraController!.value.isInitialized) {
        cameraController!.stopImageStream();
        cameraController!.dispose();
      }
    }
  }

  loadCamera() async {
    cameraController = CameraController(cameras![1], ResolutionPreset.medium);
    await cameraController?.initialize();

    if (mounted) {
      setState(() {
        Future.delayed(const Duration(seconds: 3), () {
          cameraController?.startImageStream((imageStream) {
            cameraImage = imageStream;
            runModel();
          });
        });
      });
    }
  }

  runModel() async {
    if (cameraImage != null) {
      var predictions = await Tflite.runModelOnFrame(
          bytesList: cameraImage!.planes.map((plane) {
            return plane.bytes;
          }).toList(),
          imageHeight: cameraImage!.height,
          imageWidth: cameraImage!.width,
          imageMean: 127.5,
          imageStd: 127.5,
          rotation: 90,
          numResults: 2,
          threshold: 0.1,
          asynch: false);
      for (var element in predictions!) {
        setState(() {
          output = element["label"];
        });
        if (output.isNotEmpty) {
          // Stop the camera and dispose the camera controller
          cameraController?.stopImageStream();

          // await Future.delayed(const Duration(seconds: 3));

          // ignore: use_build_context_synchronously
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsPage(output: output),
            ),
          );
        }
      }
    }
  }

  loadModel() async {
    await Tflite.loadModel(
        model: "lib/assets/model_unquant.tflite", labels: "lib/assets/labels.txt");
  }

  Color themeColor = const Color(0xFF92E3A9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColor,
        title: const Text("Facial Emotion Detection"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            "Input your face in the square below",
            style: GoogleFonts.roboto(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              child: cameraController != null &&
                      !cameraController!.value.isInitialized
                  ? Container()
                  : AspectRatio(
                      aspectRatio: cameraController!.value.aspectRatio,
                      child: CameraPreview(cameraController!),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}


// THIS IS THE WORKING CODE NOW FOR THE MODEL


// class CameraPage extends StatefulWidget {
//   const CameraPage({Key? key}) : super(key: key);

//   @override
//   State<CameraPage> createState() => _CameraPageState();
// }

// class _CameraPageState extends State<CameraPage> {
//   CameraImage? cameraImage;
//   CameraController? cameraController;
//   String output = "";

//   @override
//   void initState() {
//     super.initState();
//     loadCamera();
//     loadModel();
//   }

//   @override
//   void dispose() {
//     if (mounted) {
//       super.dispose();
//       if (cameraController != null && cameraController!.value.isInitialized) {
//         cameraController!.stopImageStream();
//         cameraController!.dispose();
//       }
//     }
//   }

//   loadCamera() async {
//     cameraController = CameraController(cameras![1], ResolutionPreset.medium);
//     await cameraController?.initialize();

//     if (mounted) {
//       setState(() {
//         Future.delayed(const Duration(seconds: 3), () {
//           cameraController?.startImageStream((imageStream) {
//             cameraImage = imageStream;
//             runModel();
//           });
//         });
//       });
//     }
//   }

//   runModel() async {
//     if (cameraImage != null) {
//       var predictions = await Tflite.runModelOnFrame(
//           bytesList: cameraImage!.planes.map((plane) {
//             return plane.bytes;
//           }).toList(),
//           imageHeight: cameraImage!.height,
//           imageWidth: cameraImage!.width,
//           imageMean: 127.5,
//           imageStd: 127.5,
//           rotation: 90,
//           numResults: 2,
//           threshold: 0.1,
//           asynch: false);
//       for (var element in predictions!) {
//         setState(() {
//           output = element["label"];
//         });
//         if (output.isNotEmpty) {
//           // Stop the camera and dispose the camera controller
//           cameraController?.stopImageStream();

//           // await Future.delayed(const Duration(seconds: 3));

//           // ignore: use_build_context_synchronously
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => DetailsPage(output: output),
//             ),
//           );
//         }
//       }
//     }
//   }

//   loadModel() async {
//     await Tflite.loadModel(
//         model: "lib/assets/model_unquant.tflite",
//         labels: "lib/assets/labels.txt");
//   }

//   Color themeColor = const Color(0xFF92E3A9);
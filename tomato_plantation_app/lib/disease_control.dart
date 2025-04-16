import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' show join;

class DiseaseControlPage extends StatefulWidget {
  const DiseaseControlPage({super.key});

  @override
  State<DiseaseControlPage> createState() => _DiseaseControlPageState();
}

class _DiseaseControlPageState extends State<DiseaseControlPage> {
  CameraController? _controller;
  XFile? _imageFile;
  String _resultText = " ";

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    final camera = cameras.first;

    _controller = CameraController(camera, ResolutionPreset.medium);
    await _controller?.initialize();
    setState(() {});
  }

  Future<String> getTemporaryImagePath(String imageName) async {
    final Directory tempDir = await getTemporaryDirectory();
    final Directory tempDirectory = Directory(join(tempDir.path, 'temp'));

    // Create the temp directory if it doesn't exist
    if (!await tempDirectory.exists()) {
      await tempDirectory.create(recursive: true);
    }

    return join(tempDirectory.path, imageName);
  }

  Future<void> saveCapturedImage(Uint8List imageBytes) async {
    final String imagePath = await getTemporaryImagePath('captured_image_${DateTime.now().millisecondsSinceEpoch}.png');
    final File imageFile = File(imagePath);
    await imageFile.writeAsBytes(imageBytes);
  }

  Future<void> _takePicture() async {
    if (!_controller!.value.isInitialized) {
      return;
    }

    // Take the picture and get the image bytes
    final image = await _controller!.takePicture();
    final Uint8List imageBytes = await image.readAsBytes();

    // Save the captured image
    await saveCapturedImage(imageBytes);

    // Get the path of the saved image
    final String savedImagePath = await getTemporaryImagePath('captured_image_${DateTime.now().millisecondsSinceEpoch}.jpg');

    setState(() {
      _imageFile = XFile(savedImagePath); // Update _imageFile with the new path
      _resultText = "Analysing.........";

      // Mock analysis result
      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          _resultText = "Early Blight Detected"; // Replace with actual analysis result
        });
      });
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tomato Leaf Scanner"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Text(
              "Scan tomato leaves to detect disease using Machine Learning",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            _controller != null && _controller!.value.isInitialized
                ? AspectRatio(
              aspectRatio: _controller!.value.aspectRatio,
              child: CameraPreview(_controller!),
            )
                : const CircularProgressIndicator(),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _takePicture,
              child: const Text("Capture Image"),
            ),
            const SizedBox(height: 20),
            if (_imageFile != null)
              Column(
                children: [
                  Image.file(
                    File(_imageFile!.path),
                    height: 200,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    _resultText,
                    style: const TextStyle(fontSize: 18, color: Colors.green),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
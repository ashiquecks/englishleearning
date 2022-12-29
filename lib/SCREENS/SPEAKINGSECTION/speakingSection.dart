import 'package:avatar_glow/avatar_glow.dart';
import 'package:englishexpert/RESOURSE/appColor.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class SpeakingSection extends StatefulWidget {
  const SpeakingSection({super.key});

  @override
  State<SpeakingSection> createState() => _SpeakingSectionState();
}

class _SpeakingSectionState extends State<SpeakingSection> {
  stt.SpeechToText? _speech;
  bool _isListening = false;
  String _textSpeach = "Press the  button";

  void onListen() async {
    if (!_isListening) {
      bool availabel = await _speech!.initialize(
        onStatus: (val) => print('onStatus : $val'),
        onError: (val) => print('onError: $val'),
      );
      if (availabel) {
        setState(() {
          _isListening = true;
        });
        _speech!.listen(onResult: (val) {
          setState(() {
            _textSpeach = val.recognizedWords;
          });
        });
      }
    } else {
      setState(() {
        _isListening = false;
        _speech!.stop();
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _speech = stt.SpeechToText();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        animate: _isListening,
        duration: const Duration(microseconds: 2000),
        repeatPauseDuration: Duration(milliseconds: 100),
        repeat: true,
        child: FloatingActionButton(
          onPressed: () {
            onListen();
          },
          child: Icon(_isListening ? Icons.mic : Icons.mic_none),
        ),
        endRadius: 80,
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 150),
          child: Text(
            _textSpeach,
            style: const TextStyle(fontSize: 32),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:jitsi_meet_flutter_sdk/jitsi_meet_flutter_sdk.dart';
import 'package:meetie/resources/auth_methods.dart';
import 'package:meetie/resources/jitsi_meet_methods.dart';
import 'package:meetie/utils/colors.dart';
import 'package:meetie/widgets/meeting_options.dart';

class VideoCallScreen extends StatefulWidget {
  const VideoCallScreen({super.key});

  @override
  State<VideoCallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  final _authMethods = AuthMethods();
  late TextEditingController meetingIDController;
  late TextEditingController nameController;
  final JitsiMeetMethods _jitsiMeetMethods = JitsiMeetMethods();

  bool isAudioMuted = true;
  bool isVideoMuted = true;

  @override
  void initState() {
    meetingIDController = TextEditingController();
    // nameController = TextEditingController(text: _authMethods.user.displayName );
    nameController = TextEditingController(text: 'Shlok M Sharma');
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    meetingIDController.dispose();
    nameController.dispose();
  }

  _joinMeeting() {
    _jitsiMeetMethods.createNewMeeting(
        roomName: meetingIDController.text,
        isAudioMuted: isAudioMuted,
        isVideoMuted: isVideoMuted,
        username: nameController.text,
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        title: const Text(
          'Join a Meeting',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 60,
            child: TextField(
              controller: meetingIDController,
              maxLines: 1,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  fillColor: secondaryBackgroundColor,
                  filled: true,
                  hintText: 'Room ID',
                  contentPadding: EdgeInsets.fromLTRB(16, 8, 0, 0)),
            ),
          ),
          SizedBox(
            height: 60,
            child: TextField(
              controller: nameController,
              maxLines: 1,
              textAlign: TextAlign.center,
              // keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  fillColor: secondaryBackgroundColor,
                  filled: true,
                  hintText: 'Name',
                  contentPadding: EdgeInsets.fromLTRB(16, 8, 0, 0)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: _joinMeeting,
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  'Join',
                  style: TextStyle(fontSize: 16),
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          MeetingOptions(
            text: 'Mute Audio',
            isMute: isAudioMuted,
            onChange: onAudioMuted,
          ),
          MeetingOptions(
            text: 'Turn off my Video',
            isMute: isVideoMuted,
            onChange: onVideoMuted,
          ),
        ],
      ),
    );
  }

  onAudioMuted(bool val) {
    setState(() {
      isAudioMuted = val;
    });
  }

  onVideoMuted(bool val) {
    setState(() {
      isVideoMuted = val;
    });
  }
}

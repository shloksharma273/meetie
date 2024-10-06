import 'dart:math';
import 'package:flutter/material.dart';
import 'package:meetie/resources/jitsi_meet_methods.dart';
import '../widgets/home_meeting_button.dart';

class MeetingScreen extends StatelessWidget {
  MeetingScreen({super.key});

  final JitsiMeetMethods _jitsiMeetMethods = JitsiMeetMethods();

  createNewMeeting() async {
    var random = Random();
    String roomName = (random.nextInt(100000000) + 10000000).toString();
    _jitsiMeetMethods.createNewMeeting(
        roomName: roomName, isAudioMuted: true, isVideoMuted: true);
  }

  joinMeeting(BuildContext context) {
    Navigator.pushNamed(context, '/video-call');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeMeetingButton(
                onPressed: createNewMeeting,
                text: 'New Meeting',
                icon: Icons.videocam),
            HomeMeetingButton(
                onPressed: () => joinMeeting(context),
                text: 'Join Meeting',
                icon: Icons.add_box_rounded),
            HomeMeetingButton(
                onPressed: () {},
                text: 'Schedule a Meet',
                icon: Icons.calendar_today),
            HomeMeetingButton(
              onPressed: () {},
              text: 'Share Screen',
              icon: Icons.arrow_upward_rounded,
            ),
          ],
        ),
        const Expanded(
          child: Center(
            child: Text(
              'Create/Join Meetings with just a click!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ),
      ],
    );
    ;
  }
}

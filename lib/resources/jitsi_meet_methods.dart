import 'package:flutter/foundation.dart';
import 'package:jitsi_meet_flutter_sdk/jitsi_meet_flutter_sdk.dart';
import 'package:meetie/resources/auth_methods.dart';

class JitsiMeetMethods {
  final AuthMethods _authMethods = AuthMethods();

  List<String> participants = [];
  final _jitsiMeetPlugin = JitsiMeet();

  Future<void> createNewMeeting({
    required String roomName,
    required bool isAudioMuted,
    required bool isVideoMuted,
  }) async {
    var options = JitsiMeetConferenceOptions(
      serverURL: "https://meet.jit.si",
      room: roomName,
      configOverrides: {
        "startWithAudioMuted": isAudioMuted,
        "startWithVideoMuted": isVideoMuted,
        "subject" : "JitsiwithFlutter",
        "localSubject" : "localJitsiwithFlutter",
      },
      featureFlags: {
        "unsaferoomwarning.enabled": false,
        "security-options.enabled": false
      },
      userInfo: JitsiMeetUserInfo(
          displayName: "Flutter user",
          email: "user@example.com"
      ),
    );
    _jitsiMeetPlugin.join(options);
  }
  }


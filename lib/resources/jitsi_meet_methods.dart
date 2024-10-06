import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:jitsi_meet_flutter_sdk/jitsi_meet_flutter_sdk.dart';
import 'package:meetie/resources/auth_methods.dart';
import 'package:meetie/resources/firestore_methods.dart';

class JitsiMeetMethods {
  final AuthMethods _authMethods = AuthMethods();
  final FirestoreMethods _firestoreMethods = FirestoreMethods();

  List<String> participants = [];
  final _jitsiMeetPlugin = JitsiMeet();

  Future<void> createNewMeeting({
    required String roomName,
    required bool isAudioMuted,
    required bool isVideoMuted,
    String username = ''
  }) async {

    String? name;
    if (username.isEmpty){
      name = _authMethods.user.displayName!;
    }else{
      name = username;
    }
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
          displayName: name,
          email: "user@example.com"
      ),
    );

    _firestoreMethods.addToMeetingHistory(roomName);
    _jitsiMeetPlugin.join(options);
  }
  }


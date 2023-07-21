import 'package:facility_management/core/shared_widgets/button_appbar.dart';
import 'package:facility_management/features/chat/presentation/views/widgets/chat_body.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarButtom(),
        body: ChatBody(),
      ),
    );
  }
}

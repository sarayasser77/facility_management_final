import 'package:facility_management/core/shared_widgets/appbar2.dart';
import 'package:facility_management/features/chat/presentation/views/widgets/chat_success.dart';
import 'package:flutter/material.dart';

class ChatSuccess extends StatelessWidget {
  const ChatSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarButtom2(text: 'Message center',),
      body: SucessBody(),
    );
  }
}

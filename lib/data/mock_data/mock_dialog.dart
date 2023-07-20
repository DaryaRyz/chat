import 'package:chat/data/mock_data/mock_user.dart';

class MockDialog {
  static Map<String, dynamic> value(int id) => {
        'id': id,
        "userInfo": MockUser.value[id],
        "chatStatus": {
          'status': 'open',
        },
      };
}

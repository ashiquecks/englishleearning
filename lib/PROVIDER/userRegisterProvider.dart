import 'package:flutter/cupertino.dart';

class UserRegisterProvider with ChangeNotifier {
  String? userName;
  String? userEmail;
  String? userGender;
  String? userDOB;
  String? userCity;

  void setUserName({required String stateUserName}) {
    this.userName = stateUserName;
    notifyListeners();
  }

  void setUserEmail({required String stateUserEmail}) {
    this.userEmail = stateUserEmail;
    notifyListeners();
  }

  void setUserGender({required String stateUserGender}) {
    this.userGender = stateUserGender;
    notifyListeners();
  }

  void setUserDOB({required String stateUserDOB}) {
    this.userDOB = stateUserDOB;
    notifyListeners();
  }

  void setUserCity({required String stateUserCity}) {
    this.userCity = stateUserCity;
    notifyListeners();
  }
}

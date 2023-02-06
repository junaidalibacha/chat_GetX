import 'package:chat_dbestech/common/entities/user.dart';
import 'package:chat_dbestech/common/store/user.dart';
import 'package:get/get.dart';

import 'index.dart';

class SignInController extends GetxController {
  SignInController();
  final state = SignInState();

  void changePage(int index) async {}

  Future<void> handleSignIn() async {
    // Get.offAndToNamed(AppPages.signIn);
    try {
      var user = await state.googleSignIn.signIn();

      if (user != null) {
        String displayName = user.displayName ?? user.email;
        String email = user.email;
        String id = user.id;
        String photoUrl = user.photoUrl ?? '';
        UserLoginResponseEntity userProfile = UserLoginResponseEntity();
        userProfile.displayName = displayName;
        userProfile.email = email;
        userProfile.photoUrl = photoUrl;
        userProfile.accessToken = id;

        UserStore.to.saveProfile(userProfile);
        var userbase = await state.db
            .collection('users')
            .withConverter(
              fromFirestore: UserData.fromFirestore,
              toFirestore: (UserData userData, options) =>
                  UserData().toFirestore(),
            )
            .where('id', isEqualTo: id)
            .get();
      }
    } catch (e) {}
  }
}

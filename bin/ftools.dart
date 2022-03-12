import 'dart:io';

import 'tools/auth.dart';
import 'tools/unfollow_friends.dart';
import 'tools/unfollow_pages.dart';
import 'tools/unlike_pages.dart';

Future<void> main() async {
  print('Please choose an option:');
  print('0. Exit (default)');
  print('1. Login');
  print('2. Unfollow all friends');
  print('3. Unfollow all pages');
  print('4. Unlike all pages');
  final _options = int.parse(stdin.readLineSync() ?? '0');

  print('\n');
  print('Are you sure? (y/n)');
  final _confirm = stdin.readLineSync();

  if (_confirm == 'y') {
    switch (_options) {
      case 1:
        await login();
        break;
      case 2:
        await unfollowAllFriends();
        break;
      case 3:
        await unfollowAllPages();
        break;
      case 4:
        await unlikeAllPages();
        break;
      default:
        exit(0);
    }
  }
}

import 'package:flutter/material.dart';

import '../features/tweet/widgets/tweet_list.dart';

class UIConstants {
  static List<Widget> topTabBarPages = const [
    TweetsList(),
    Text('Search Screen'),
    Text('Notification Screen'),
  ];
}

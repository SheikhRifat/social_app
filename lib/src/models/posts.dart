import 'package:social_app/src/models/friends.dart';

class Post {
  final Friend friend;
  final String imageUrl;
  final String timePosted;
  final String description;
  final String comments;
  final String shared;
  final String like;

  Post(
      {required this.friend,
      required this.imageUrl,
      required this.timePosted,
      required this.description,
      required this.comments,
      required this.shared,
      required this.like
      });
}

final Friend rifat = Friend(
  name: 'Rifat',
  imageUrl: 'assets/img/MH.jpg',
);
final Friend shohag = Friend(
  name: 'Shohag',
  imageUrl: 'assets/img/FSM.jpg',
);
final Friend ramjan = Friend(
  name: 'Ramjan',
  imageUrl: 'assets/img/RM.jpg',
);
final Friend zillur = Friend(
  name: 'Zillur',
  imageUrl: 'assets/img/ZL.jpg',
);

List<Post> posts = [
  Post(
    friend: rifat,
    imageUrl: 'assets/img/posts/Rifat.jpg',
    timePosted: '3 hour ago',
    description:
        'App developer using flutter framework.2 year knowledge develop mobile app.',
    comments: '20',
    shared: '5',
    like: '20'
  ),
  Post(
    friend: shohag,
    imageUrl: 'assets/img/posts/fsm.jpg',
    timePosted: '5 hour ago',
    description:
        'App developer and web developer.Fullstack developer.5 year knowledge develop mobile app.In additional that knowledge backend laravel,php,noodjs etc..',
    comments: '50',
    shared: '15',
    like: '50'
  ),
  Post(
    friend: ramjan,
    imageUrl: 'assets/img/posts/ramjan.jpg',
    timePosted: '10 hour ago',
    description:
        'App developer using flutter framework.Fullstack developer.2 year knowledge develop mobile app.',
    comments: '20',
    shared: '5',
    like: '15'
  ),
  Post(
    friend: zillur,
    imageUrl: 'assets/img/posts/zillur.jpg',
    timePosted: '8 hour ago',
    description:
        'Grapic Designer and web develper.Still now One Bank Employee.',
    comments: '15',
    shared: '10',
    like: '20'
  ),
];

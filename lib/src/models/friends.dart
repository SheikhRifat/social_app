class Friend {
  String name;
  String imageUrl;
  String? numPosts;
  String? numFollower;
  String? numFollowing;

  Friend(
      {required this.name,
      required this.imageUrl,
      this.numPosts,
      this.numFollower,
      this.numFollowing});
}

List<Friend> favorite = [
  Friend(
    name: ' Rifat',
    imageUrl: 'assets/img/MH.jpg',
  ),
  Friend(
    name: 'Shohag',
    imageUrl: 'assets/img/FSM.jpg',
  ),
  Friend(
    name: 'Ramjan',
    imageUrl: 'assets/img/RM.jpg',
  ),
  Friend(
    name: 'zillur',
    imageUrl: 'assets/img/ZL.jpg',
  ),
];

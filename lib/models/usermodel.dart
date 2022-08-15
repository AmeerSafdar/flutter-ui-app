class UserModel{
  String? img;
  String ? name;
  String ? text;
  String? time;
  UserModel({this.img,this.name,this.text,this.time});
}

List<UserModel> users=[
UserModel(
  img: 'assets/images/1.png',
  name: 'Ameer Safdar',
  text: 'i will send you today class notes',
  time: '8:32'
),

UserModel(
  img: 'assets/images/2.png',
  name: 'Rana Danial',
  text: 'I love the tribe mode today',
  time: '9:34'
),

UserModel(
  img: 'assets/images/3.png',
  name: 'Liaquat Ali',
  text: 'Joining football tommorow',
  time: '11:22'
),
];
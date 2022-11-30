//model class in user defined data type like structures in c or sceama in nodejs
class ProfileModel {
  late final String image;
  late final String title;
  late final String massage;
  late final int count;
  ProfileModel(
      {required this.image,
      required this.title,
      required this.massage,
      required this.count});
}

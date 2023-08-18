class UserModel {

  String? uid;
  String? nameName;
  String? email;
  String? country;
  String? mobNo;
  List<dynamic>? posts;
  

  UserModel({
    this.uid, 
    this.nameName, 
    this.email,
    this.country, 
    this.mobNo,
  });

  UserModel.fromMap( Map<String, dynamic> map) {
    uid = map["uid"];
    nameName = map["nameName"];
    email = map["email"];
    country = map["country"];
    mobNo = map["mobNo"];
    posts = map['myPost'];
  }

  Map<String, dynamic> toMap() {
    return {
      "uid": uid,
      "nameName": nameName,
      "email": email,
      "country": country,
      "mobNo": mobNo,
    };
  }

}
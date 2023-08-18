class PostModel {

  String? uid;
  String? animalType;
  String? breed;
  String? gender;
  String? postDesc;
  

  PostModel({
    this.uid, 
    this.animalType, 
    this.breed,
    this.gender, 
    this.postDesc,  
  });

  PostModel.fromMap( Map<String, dynamic> map) {
    uid = map["uid"];
    animalType = map["animalType"];
    breed = map["breed"];
    gender = map["gender"];
    postDesc = map["postDesc"];
  }

  Map<String, dynamic> toMap() {
    return {
      "uid": uid,
      "animalType": animalType,
      "breed": breed,
      "gender": gender,
      "postDesc": postDesc,
    };
  }

}
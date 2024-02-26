

class Disease{

  String? id;
  String? name;
  String? explanation;
  String? overview;
  String? benefits;
  String? recommendations;
  String? contraIndications;

  Disease({this.name, this.explanation, this.overview, this.benefits, this.recommendations, this.contraIndications});

  Disease.fromMap(Map snapshot, String? id) :
      this.id = id ?? '',
      name = snapshot['name'],
      explanation = snapshot['explanation'],
      overview = snapshot['overview'],
      benefits = snapshot['benefits'],
      recommendations = snapshot['recommendations'],
      contraIndications = snapshot['contraIndications'];

  toJson(){
    return {
      'id' : id,
      'name': name,
      'explanation': explanation,
      'overview': overview,
      'benefits': benefits,
      'recommendations': recommendations,
      'contraIndications': contraIndications,
    };
  }

  toFirebase(){
    return {
      'name': name,
      'explanation': explanation,
      'overview': overview,
      'benefits': benefits,
      'recommendations': recommendations,
      'contraIndications': contraIndications,
    };
  }
}
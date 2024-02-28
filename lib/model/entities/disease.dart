

class Disease{

  String? id;
  String name;
  String explanation;
  String overview;
  String benefits;
  String recommendations;
  String contraIndications;

  Disease({
    required this.name,
    required this.explanation,
    required this.overview,
    required this.benefits,
    required this.recommendations,
    required this.contraIndications
    });

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
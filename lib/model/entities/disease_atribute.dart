class DiseaseAtribute{

  String title;
  String description;

  DiseaseAtribute({
    required this.title,
    required this.description
  });

  DiseaseAtribute.fromMap(Map snapshot) :
    title = snapshot['title'],
    description = snapshot['description'];
  
  toJson(){
    return{
      'title' : title,
      'description' : description
    };
  }
}
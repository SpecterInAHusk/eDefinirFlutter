class DiseaseAttribute{

  String title;
  String description;

  DiseaseAttribute({
    required this.title,
    required this.description
  });

  DiseaseAttribute.fromMap(Map snapshot) :
    title = snapshot['title'],
    description = snapshot['description'];
  
  toJson(){
    return{
      'title' : title,
      'description' : description
    };
  }
}
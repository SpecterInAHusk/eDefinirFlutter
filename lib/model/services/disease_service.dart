import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edefinir/model/entities/disease.dart';

class DiseaseService{
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String path = "doencas";

  Future<QuerySnapshot<Map<String, dynamic>>> getAll() async{
    return await _firestore.collection(path).get();
  }

  create(Disease disease) {
    return _firestore.collection(path).add(disease.toFirebase());
  }

  read(String id) {
    return _firestore.collection(path).doc(id);
  }

  update(Disease disease, String id) {
    return _firestore.collection(path).doc(id).update(disease.toFirebase());
  }

  delete(String id) {
    return _firestore.collection(path).doc(id).delete();
  }

}
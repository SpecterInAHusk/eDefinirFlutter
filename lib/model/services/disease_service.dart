import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edefinir/model/entities/disease.dart';

class DoencaService{
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String path = "doencas";

  getAll() {
    return _firestore.collection(path).get();
  }

  create(Disease disease) {
    return _firestore.collection(path).add(disease.toJson());
  }

  read(String id) {
    return _firestore.collection(path).doc(id);
  }

  update(Disease disease, String id) {
    return _firestore.collection(path).doc(id).update(disease.toJson());
  }

  delete(String id) {
    return _firestore.collection(path).doc(id).delete();
  }

}
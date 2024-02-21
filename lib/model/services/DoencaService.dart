import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edefinir/model/entities/Doenca.dart';

class DoencaService{
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String path = "doencas";

  getAll() {
    return _firestore.collection(path).get();
  }

  create(Doenca doenca) {
    return _firestore.collection(path).add(doenca.toJson());
  }

  read(String id) {
    return _firestore.collection(path).doc(id);
  }

  update(Doenca doenca, String id) {
    return _firestore.collection(path).doc(id).update(doenca.toJson());
  }

  delete(String id) {
    return _firestore.collection(path).doc(id).delete();
  }

}
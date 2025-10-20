import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PessoaRecord extends FirestoreRecord {
  PessoaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "senha" field.
  String? _senha;
  String get senha => _senha ?? '';
  bool hasSenha() => _senha != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _email = snapshotData['email'] as String?;
    _senha = snapshotData['senha'] as String?;
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pessoa');

  static Stream<PessoaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PessoaRecord.fromSnapshot(s));

  static Future<PessoaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PessoaRecord.fromSnapshot(s));

  static PessoaRecord fromSnapshot(DocumentSnapshot snapshot) => PessoaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PessoaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PessoaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PessoaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PessoaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPessoaRecordData({
  String? nome,
  String? email,
  String? senha,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'email': email,
      'senha': senha,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class PessoaRecordDocumentEquality implements Equality<PessoaRecord> {
  const PessoaRecordDocumentEquality();

  @override
  bool equals(PessoaRecord? e1, PessoaRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.email == e2?.email &&
        e1?.senha == e2?.senha &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(PessoaRecord? e) =>
      const ListEquality().hash([e?.nome, e?.email, e?.senha, e?.uid]);

  @override
  bool isValidKey(Object? o) => o is PessoaRecord;
}

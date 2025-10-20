import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RelatorioRecord extends FirestoreRecord {
  RelatorioRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _tipo = snapshotData['tipo'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('relatorio');

  static Stream<RelatorioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RelatorioRecord.fromSnapshot(s));

  static Future<RelatorioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RelatorioRecord.fromSnapshot(s));

  static RelatorioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RelatorioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RelatorioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RelatorioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RelatorioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RelatorioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRelatorioRecordData({
  String? tipo,
  String? descricao,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tipo': tipo,
      'descricao': descricao,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class RelatorioRecordDocumentEquality implements Equality<RelatorioRecord> {
  const RelatorioRecordDocumentEquality();

  @override
  bool equals(RelatorioRecord? e1, RelatorioRecord? e2) {
    return e1?.tipo == e2?.tipo &&
        e1?.descricao == e2?.descricao &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(RelatorioRecord? e) =>
      const ListEquality().hash([e?.tipo, e?.descricao, e?.uid]);

  @override
  bool isValidKey(Object? o) => o is RelatorioRecord;
}

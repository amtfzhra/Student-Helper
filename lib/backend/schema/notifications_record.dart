import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationsRecord extends FirestoreRecord {
  NotificationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "task_ref" field.
  DocumentReference? _taskRef;
  DocumentReference? get taskRef => _taskRef;
  bool hasTaskRef() => _taskRef != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "viewed" field.
  bool? _viewed;
  bool get viewed => _viewed ?? false;
  bool hasViewed() => _viewed != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _message = snapshotData['message'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _type = snapshotData['type'] as String?;
    _taskRef = snapshotData['task_ref'] as DocumentReference?;
    _userId = snapshotData['user_id'] as String?;
    _viewed = snapshotData['viewed'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notifications');

  static Stream<NotificationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationsRecord.fromSnapshot(s));

  static Future<NotificationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationsRecord.fromSnapshot(s));

  static NotificationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationsRecordData({
  String? title,
  String? message,
  DateTime? timestamp,
  String? type,
  DocumentReference? taskRef,
  String? userId,
  bool? viewed,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'message': message,
      'timestamp': timestamp,
      'type': type,
      'task_ref': taskRef,
      'user_id': userId,
      'viewed': viewed,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationsRecordDocumentEquality
    implements Equality<NotificationsRecord> {
  const NotificationsRecordDocumentEquality();

  @override
  bool equals(NotificationsRecord? e1, NotificationsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.message == e2?.message &&
        e1?.timestamp == e2?.timestamp &&
        e1?.type == e2?.type &&
        e1?.taskRef == e2?.taskRef &&
        e1?.userId == e2?.userId &&
        e1?.viewed == e2?.viewed;
  }

  @override
  int hash(NotificationsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.message,
        e?.timestamp,
        e?.type,
        e?.taskRef,
        e?.userId,
        e?.viewed
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationsRecord;
}

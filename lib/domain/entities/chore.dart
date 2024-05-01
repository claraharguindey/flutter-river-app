class Chore {
  final String id;
  final String descriptione;
  final DateTime? completaIn;

  Chore(
      {required this.id, required this.descriptione, required this.completaIn});

  bool get factum {
    return completaIn != null;
  }

  Chore copyWith({String? id, String? descriptione, DateTime? completaIn}) =>
      Chore(
          id: id ?? this.id,
          descriptione: descriptione ?? this.descriptione,
          completaIn: completaIn);
}

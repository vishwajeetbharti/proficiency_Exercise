class DataModel {
  DataModel({
    this.title,
    required this.rows,
  });

  String? title;
  List<Rows> rows;

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        title: json["title"],
        rows: json["rows"] == null
            ? []
            : List<Rows>.from(json["rows"].map((x) => Rows.fromJson(x))),
      );
}

class Rows {
  Rows({
    this.title,
    this.description,
    this.imageHref,
  });

  String? title;
  String? description;
  String? imageHref;

  factory Rows.fromJson(Map<String, dynamic> json) => Rows(
        title: json["title"] ?? 'NA',
        description: json["description"] ?? 'NA',
        imageHref: json["imageHref"],
      );
}

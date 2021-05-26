class Response {
  int? code;
  dynamic data;

  Response({this.code, this.data});

  Response.fromJson(Map<String, dynamic> json) {
    this.code = json["code"];
    this.data = json["data"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["code"] = this.code;
    data["data"] = this.data;
    return data;
  }
}

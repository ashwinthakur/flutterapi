class RegistraionResponseModel {
  final String token;
  final String error;

  RegistraionResponseModel({this.token, this.error});

  factory RegistraionResponseModel.fromJson(Map<String, dynamic> json) {
    return RegistraionResponseModel(
      token: json["token"] != null ? json["token"] : "",
      error: json["error"] != null ? json["error"] : "",
    );
  }
}

class RegistraionRequestModel {
  String username;
  String email;
  String password;

  RegistraionRequestModel({
     this.username,
    this.email,
    this.password,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'username':username.trim(),
      'email': email.trim(),
      'password': password.trim(),
    };

    return map;
  }
}

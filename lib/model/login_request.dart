/// username : "8857870272"
/// password : "Abhi123+"
/// isMobile : true

class LoginRequest {
  LoginRequest({
      String? username, 
      String? password, 
      bool? isMobile,}){
    _username = username;
    _password = password;
    _isMobile = isMobile;
}

  LoginRequest.fromJson(dynamic json) {
    _username = json['username'];
    _password = json['password'];
    _isMobile = json['isMobile'];
  }
  String? _username;
  String? _password;
  bool? _isMobile;
LoginRequest copyWith({  String? username,
  String? password,
  bool? isMobile,
}) => LoginRequest(  username: username ?? _username,
  password: password ?? _password,
  isMobile: isMobile ?? _isMobile,
);
  String? get username => _username;
  String? get password => _password;
  bool? get isMobile => _isMobile;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = _username;
    map['password'] = _password;
    map['isMobile'] = _isMobile;
    return map;
  }

}
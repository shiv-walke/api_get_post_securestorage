/// status : 200
/// statusMessage : "Welcome...!"
/// data : {"userId":2354,"userProfileId":2129,"fullName":"AbhiShek Deshpande","profileId":1,"email":null,"mobileNumber":"8857870272","languageId":1,"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IkFiaGlTaGVrIERlc2hwYW5kZSIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvdXNlcmRhdGEiOiIyMzU0IiwidW5pcXVlX25hbWUiOiJBYmhpU2hlayBEZXNocGFuZGUiLCJyb2xlIjoiMjEyOSIsImFjdG9ydCI6IjEiLCJqdGkiOiI5ZTE2ZTRiMC0yMDIwLTQzNTYtYWYxNi1mYzUyMDJhZjJlZTMiLCJuYmYiOjE2NTQ2ODI1MDAsImV4cCI6MTY1NTk3ODUwMCwiaWF0IjoxNjU0NjgyNTAwLCJpc3MiOiJodHRwOi8vb2VjLmNvbSIsImF1ZCI6Imh0dHA6Ly9vZWMuY29tIn0.46_d20BusvjKOcoYt3JxzcQCHuAGnUeptTzR0tDC60I","isScubscriptionComplete":true,"isFromAdmin":false,"validTill":"2022-06-23T10:01:40.6077819Z","stepId":6,"subStepId":0}

class LoginResponse {
  LoginResponse({
      int? status,
      String? statusMessage,
      Data? data,}){
    _status = status;
    _statusMessage = statusMessage;
    _data = data;
}

  LoginResponse.fromJson(dynamic json) {
    _status = json['status'];
    _statusMessage = json['statusMessage'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  int? _status;
  String? _statusMessage;
  Data? _data;
LoginResponse copyWith({  int? status,
  String? statusMessage,
  Data? data,
}) => LoginResponse(  status: status ?? _status,
  statusMessage: statusMessage ?? _statusMessage,
  data: data ?? _data,
);
  int? get status => _status;
  String? get statusMessage => _statusMessage;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['statusMessage'] = _statusMessage;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// userId : 2354
/// userProfileId : 2129
/// fullName : "AbhiShek Deshpande"
/// profileId : 1
/// email : null
/// mobileNumber : "8857870272"
/// languageId : 1
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IkFiaGlTaGVrIERlc2hwYW5kZSIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvdXNlcmRhdGEiOiIyMzU0IiwidW5pcXVlX25hbWUiOiJBYmhpU2hlayBEZXNocGFuZGUiLCJyb2xlIjoiMjEyOSIsImFjdG9ydCI6IjEiLCJqdGkiOiI5ZTE2ZTRiMC0yMDIwLTQzNTYtYWYxNi1mYzUyMDJhZjJlZTMiLCJuYmYiOjE2NTQ2ODI1MDAsImV4cCI6MTY1NTk3ODUwMCwiaWF0IjoxNjU0NjgyNTAwLCJpc3MiOiJodHRwOi8vb2VjLmNvbSIsImF1ZCI6Imh0dHA6Ly9vZWMuY29tIn0.46_d20BusvjKOcoYt3JxzcQCHuAGnUeptTzR0tDC60I"
/// isScubscriptionComplete : true
/// isFromAdmin : false
/// validTill : "2022-06-23T10:01:40.6077819Z"
/// stepId : 6
/// subStepId : 0

class Data {
  Data({
      int? userId, 
      int? userProfileId, 
      String? fullName, 
      int? profileId, 
      dynamic email, 
      String? mobileNumber, 
      int? languageId, 
      String? token, 
      bool? isScubscriptionComplete, 
      bool? isFromAdmin, 
      String? validTill, 
      int? stepId, 
      int? subStepId,}){
    _userId = userId;
    _userProfileId = userProfileId;
    _fullName = fullName;
    _profileId = profileId;
    _email = email;
    _mobileNumber = mobileNumber;
    _languageId = languageId;
    _token = token;
    _isScubscriptionComplete = isScubscriptionComplete;
    _isFromAdmin = isFromAdmin;
    _validTill = validTill;
    _stepId = stepId;
    _subStepId = subStepId;
}

  Data.fromJson(dynamic json) {
    _userId = json['userId'];
    _userProfileId = json['userProfileId'];
    _fullName = json['fullName'];
    _profileId = json['profileId'];
    _email = json['email'];
    _mobileNumber = json['mobileNumber'];
    _languageId = json['languageId'];
    _token = json['token'];
    _isScubscriptionComplete = json['isScubscriptionComplete'];
    _isFromAdmin = json['isFromAdmin'];
    _validTill = json['validTill'];
    _stepId = json['stepId'];
    _subStepId = json['subStepId'];
  }
  int? _userId;
  int? _userProfileId;
  String? _fullName;
  int? _profileId;
  dynamic _email;
  String? _mobileNumber;
  int? _languageId;
  String? _token;
  bool? _isScubscriptionComplete;
  bool? _isFromAdmin;
  String? _validTill;
  int? _stepId;
  int? _subStepId;
Data copyWith({  int? userId,
  int? userProfileId,
  String? fullName,
  int? profileId,
  dynamic email,
  String? mobileNumber,
  int? languageId,
  String? token,
  bool? isScubscriptionComplete,
  bool? isFromAdmin,
  String? validTill,
  int? stepId,
  int? subStepId,
}) => Data(  userId: userId ?? _userId,
  userProfileId: userProfileId ?? _userProfileId,
  fullName: fullName ?? _fullName,
  profileId: profileId ?? _profileId,
  email: email ?? _email,
  mobileNumber: mobileNumber ?? _mobileNumber,
  languageId: languageId ?? _languageId,
  token: token ?? _token,
  isScubscriptionComplete: isScubscriptionComplete ?? _isScubscriptionComplete,
  isFromAdmin: isFromAdmin ?? _isFromAdmin,
  validTill: validTill ?? _validTill,
  stepId: stepId ?? _stepId,
  subStepId: subStepId ?? _subStepId,
);
  int? get userId => _userId;
  int? get userProfileId => _userProfileId;
  String? get fullName => _fullName;
  int? get profileId => _profileId;
  dynamic get email => _email;
  String? get mobileNumber => _mobileNumber;
  int? get languageId => _languageId;
  String? get token => _token;
  bool? get isScubscriptionComplete => _isScubscriptionComplete;
  bool? get isFromAdmin => _isFromAdmin;
  String? get validTill => _validTill;
  int? get stepId => _stepId;
  int? get subStepId => _subStepId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userId'] = _userId;
    map['userProfileId'] = _userProfileId;
    map['fullName'] = _fullName;
    map['profileId'] = _profileId;
    map['email'] = _email;
    map['mobileNumber'] = _mobileNumber;
    map['languageId'] = _languageId;
    map['token'] = _token;
    map['isScubscriptionComplete'] = _isScubscriptionComplete;
    map['isFromAdmin'] = _isFromAdmin;
    map['validTill'] = _validTill;
    map['stepId'] = _stepId;
    map['subStepId'] = _subStepId;
    return map;
  }

}
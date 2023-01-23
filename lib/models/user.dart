class User
{
  int user_id;
  int user_name;
  int user_email;
  int user_password;

  User(
     this.user_id,
     this.user_name,
     this.user_email,
     this.user_password,
  
  );

 
  factory User.fromJson(Map<String, dynamic> json)=> User(
    int.parse(json["user_id"]),
    json["user_name"],
    json["user_email"],
    json["user_password"],
  );
  Map<String, dynamic>toJson()=>
  {
    'user_id':user_id.toString(),
    'user_name':user_name.toString(),
    'user_email':user_email.toString(),
    'user_password':user_password.toString(),
  
  };
}
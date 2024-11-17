import 'package:t_store/utils/formatters/formatter.dart';

class UserModel {
  final String id;
  String firstName;
  String lastName;
  final String username;
  final String email;
  String phoneNumber;
  String profilePicture;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  // Helper function to get full name
  String get fullName => '$firstName $lastName';

  //Helper function to format phone number
  String get formaattedPhone => AppFormatter.formatPhoneNumber(phoneNumber);

  // static function to spilt full name into first and last name
  static List<String> nameParts(fullname) => fullname.split(" ");

  // static function to generate a username from the full name
  static String generateUserName(fullName) {
    List<String> nameParts = fullName.split(" ");
    final firstName = nameParts[0].toLowerCase();
    final lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : '';

    String camlCaseUsername = '$firstName$lastName';
    String usernameWithPrefix = 'cwt_$camlCaseUsername';
    return usernameWithPrefix;
  }

  // static function to create an empty user model;
  static UserModel empty() => UserModel(
        id: '',
        firstName: '',
        lastName: '',
        username: '',
        email: '',
        phoneNumber: '',
        profilePicture: '',
      );

  // Covert UserModel to Json Structre for Stroing data in Firebase
  Map<String, dynamic> toJson() {
    return {
      'FirstName': firstName,
      'LastName': lastName,
      'UserName': username,
      'Email': email,
      'PhoneNumber': phoneNumber,
      'ProfilePicture': profilePicture,
    };
  }

  // Factory method to create user model from a Firebase document snapshot
  // factory UserModel.fromSnapShot(
  //     DocumentSnapshot<Map<String, dynamic>> document) {
  //   if (document.data() != null) {
  //     final data = document.data()!;
  //     return UserModel(
  //       id: document.id,
  //       firstName: data['FirstName'] ?? '',
  //       lastName: data['LastName'] ?? '',
  //       username: data['UserName'] ?? '',
  //       email: data['Email'] ?? '',
  //       phoneNumber: data['PhoneNumber'] ?? '',
  //       profilePicture: data['ProfilePicture'] ?? '',
  //     );
  //   } else {
  //     return null!;
  //   }
  // }
}

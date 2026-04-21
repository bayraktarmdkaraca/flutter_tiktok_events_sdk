/// Represents user identification data for the TikTok SDK.
///
/// This class is used to pass user-related information to the TikTok SDK, such as an external ID,
/// username, phone number, and email. These details help the SDK track user activity and events
/// more accurately.
///
/// Usage example:
/// ```dart
/// TikTokIdentifier identifier = TikTokIdentifier(
///   externalId: '12345',
///   externalUserName: 'john_doe',
///   phoneNumber: '+1234567890',
///   email: 'john.doe@example.com',
/// );
/// ```
class TikTokIdentifier {
  /// The external ID of the user, typically a unique identifier from your system.
  final String externalId;

  /// The username of the user, as recognized by your system.
  final String? externalUserName;

  /// The phone number of the user, in a valid international format (e.g., `+1234567890`).
  final String? phoneNumber;

  /// The email address of the user.
  final String? email;

  /// Creates an instance of [TikTokIdentifier] with the required user identification data.
  ///
  /// - [externalId]: A unique identifier for the user in your system.
  /// - [externalUserName]: The username associated with the user.
  /// - [phoneNumber]: The user's phone number in a valid international format.
  /// - [email]: The user's email address.
  const TikTokIdentifier({
    required this.externalId,
    this.externalUserName,
    this.email,
    this.phoneNumber,
  });

  /// Creates a copy of this [TikTokIdentifier] instance with the specified fields updated.
  ///
  /// This method is useful for modifying specific fields without changing the rest.
  ///
  /// Example:
  /// ```dart
  /// TikTokIdentifier updated = identifier.copyWith(email: 'new@example.com');
  /// ```
  TikTokIdentifier copyWith({
    String? externalId,
    String? externalUserName,
    String? phoneNumber,
    String? email,
  }) {
    return TikTokIdentifier(
      externalId: externalId ?? this.externalId,
      externalUserName: externalUserName ?? this.externalUserName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
    );
  }

  /// Converts this [TikTokIdentifier] instance to a map.
  ///
  /// This is useful for serializing the identifier to pass to native code.
  ///
  /// Example:
  /// ```dart
  /// Map<String, dynamic> identifierMap = identifier.toMap();
  /// ```
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalId': externalId,
      'externalUserName': externalUserName,
      'phoneNumber': phoneNumber,
      'email': email,
    };
  }

  @override
  bool operator ==(covariant TikTokIdentifier other) {
    if (identical(this, other)) return true;

    return other.externalId == externalId &&
        other.externalUserName == externalUserName &&
        other.phoneNumber == phoneNumber &&
        other.email == email;
  }

  @override
  int get hashCode {
    return externalId.hashCode ^
        externalUserName.hashCode ^
        phoneNumber.hashCode ^
        email.hashCode;
  }
}

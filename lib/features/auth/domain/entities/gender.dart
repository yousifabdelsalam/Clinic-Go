enum Gender {
  male('male', 'Male'),
  female('female', 'Female');

  final String value; // Stored in Firestore
  final String label; // Rendered in UI

  const Gender(this.value, this.label);

  /// Helper to convert raw Firestore string back to Enum
  static Gender fromString(String? value) {
    return Gender.values.firstWhere(
          (e) => e.value.toLowerCase() == value?.toLowerCase(),
      orElse: () => Gender.male,
    );
  }
}
class CEUCourse {
  String id; // Unique identifier for the course
  String name;
  String description;
  DateTime dateCompleted;
  int numberOfUnits;
  String providerDetails;
  String location;
  String contactInfo;
  List<String> topics; // List of topics or PT categories
  List<String> ptCategories;
  // Additional fields can be added as needed

  CEUCourse({
    required this.id,
    required this.name,
    required this.description,
    required this.dateCompleted,
    required this.numberOfUnits,
    required this.providerDetails,
    required this.location,
    required this.contactInfo,
    required this.topics,
    required this.ptCategories,
  });

  // Methods for serialization/deserialization and other functionalities
}

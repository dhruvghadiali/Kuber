class DemoRequestModel {
  String mockFilePath;
  int statusCode;

  DemoRequestModel({
    required this.mockFilePath,
    required this.statusCode,
  });

  static DemoRequestModel defaultValues() => DemoRequestModel(
        mockFilePath: 'assets/mock_data/success.json',
        statusCode: 200,
      );
}

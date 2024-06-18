class MockRequestModel {
  String mockFilePath;
  int statusCode;

  MockRequestModel({
    required this.mockFilePath,
    required this.statusCode,
  });

  static MockRequestModel defaultValues() => MockRequestModel(
        mockFilePath: 'assets/mock_data/success.json',
        statusCode: 200,
      );
}

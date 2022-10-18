import 'package:tugas/index.dart';

class TugasLayoutRepository {
  final TugasLayoutProvider _tugasLayoutProvider = TugasLayoutProvider();

  TugasLayoutRepository();

  void test(bool isError) {
    _tugasLayoutProvider.test(isError);
  }
}
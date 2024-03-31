import 'package:flutter/cupertino.dart';
import 'package:sani_cv/configs/app_dimensions.dart';

class ScrollProvider extends ChangeNotifier {
  final scrollController = ScrollController();

  ScrollController get controller => scrollController;
  bool _isOntop = true;
  get isOntop => _isOntop;
  setIsOnTop(bool isOntop) {
    _isOntop = isOntop;
    notifyListeners();
  }

  bool _hasMessage = true;
  get hasMessage => _hasMessage;
  sethasMessage(bool hasMessage) {
    _hasMessage = hasMessage;
    notifyListeners();
  }

  String _currentState = "Greatings";
  get currentState => _currentState;
  set_currentState(String currentState) {
    _currentState = currentState;
    notifyListeners();
  }

  List<Map<String, List<String>>> messages = [
    {
      "WorkSection": ["", ""],
      "Greatings": ["", ""],
      "DEKKO/SAVE": ["", ""],
      "IDLESection": ["", ""],
      "EndSection": ["", ""],
    }
  ];

  scroll(int index) {
    double offset = (index == 0)
        ? 0
        : (index == 1)
            ? 600
            : (index == 2)
                ? 650
                : (index == 3)
                    ? 1250
                    : (index == 4)
                        ? 1500
                        : (index == 5)
                            ? 1500
                            : 0;
    controller.animateTo(
      offset,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  scrollMobile(int index) {
    double offset = index == 1
        ? 290
        : index == 2
            ? 360
            : index == 3
                ? 300
                : 310;
    controller.animateTo(
      AppDimensions.normalize(
        offset * index.toDouble(),
      ),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}

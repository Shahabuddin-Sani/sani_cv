import 'package:flutter/material.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/models/projects.dart';

class Employment {
  final String employeerName;
  final String employeerLogo;
  final String employeerDuration;
  final String employeerPosition;
  final String employeerEmail;
  final String employeeResponsibility;
  final String employeeCompanyType;
  final List<String> platformLogos;
  final List<String> platformLogosText;
  final List<Projects> projects;

  Employment({
    required this.employeerName,
    required this.employeerLogo,
    required this.employeerDuration,
    required this.employeerPosition,
    required this.employeerEmail,
    required this.employeeResponsibility,
    required this.employeeCompanyType,
    required this.platformLogos,
    required this.platformLogosText,
    required this.projects,
  });
}

import 'package:flutter/material.dart';

class Employment {
  final String employeerName;
  final String employeerLogo;
  final String employeerDuration;
  final String employeerPosition;
  final String employeerEmail;
  final List<WorkProjects> workProjects;

  Employment({
    required this.employeerName,
    required this.employeerLogo,
    required this.employeerDuration,
    required this.employeerPosition,
    required this.employeerEmail,
    required this.workProjects,
  });
}

class WorkProjects {
  final String projectName;
  final String projectDetailsOrFeatures;
  final String numberOfCoworker;
  final String technologyUsed;

  WorkProjects({
    required this.projectName,
    required this.projectDetailsOrFeatures,
    required this.numberOfCoworker,
    required this.technologyUsed,
  });
}

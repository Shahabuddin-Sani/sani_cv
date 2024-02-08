import 'package:flutter/material.dart';

class Projects {
  final String name;
  final String description;
  final String client;
  final String clientLogo;
  final String technology;
  final String features;
  final String noOfCollegues;
  final List<String> platformLogos;

  Projects({
    required this.name,
    required this.description,
    required this.client,
    required this.clientLogo,
    required this.technology,
    required this.features,
    required this.noOfCollegues,
    required this.platformLogos,
  });
}

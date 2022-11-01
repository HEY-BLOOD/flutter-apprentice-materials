import 'package:flutter/material.dart';
import '../components/components.dart';
import '../models/models.dart';
import '../api/mock_fooderlich_service.dart';

class ExploreScreen extends StatelessWidget {
  final mockService = MockFooderlichService();
  ExploreScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: Add TodayRecipeListView FutureBuilder
    return const Center(
      child: Text('Explore Screen'),
    );
  }
}

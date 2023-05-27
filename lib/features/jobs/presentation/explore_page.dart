import 'package:flutter/material.dart';
import 'package:portfolioapp/widgets/list_tile_column_widget.dart';
import 'package:portfolioapp/widgets/search_job_textfield.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: ListView(
        children: [
          Column(
            children: [
              const Text('Design Jobs'),
              const SearchJobTextFieldWidget(),
              // ListView.builder(
              //   itemCount: 6,
              //   itemBuilder: (context, index) => const TrendingJobsListTile(),
              // )
            ],
          )
        ],
      ),
    );
  }
}

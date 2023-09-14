import 'package:booka/core/utilities/styles_of_text.dart';
import 'package:booka/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:booka/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          Text(
            'Search Result',
            style: StylesOfText.textStyle16,
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

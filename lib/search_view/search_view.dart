import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_demo/account/text_options.dart';
import 'package:quiz_demo/search_view/bloc/search_bloc.dart';
import 'package:quiz_demo/search_view/bloc/search_event.dart';
import 'package:quiz_demo/search_view/bloc/search_state.dart';
import 'package:quiz_demo/utils/extensions.dart';
import 'package:quiz_demo/widget/search_edittext.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  static const String route = '/search/view';

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final _textController = TextEditingController();
  var _debouncer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              width: double.infinity,
              color: HexColor.fromHex('#00573D'),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Expanded(
                    child: Text(
                      'Search',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'OpenSens',
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
              width: double.infinity,
              color: HexColor.fromHex('#00573D'),
              child: SearchEditText(
                hintText: 'Search',
                textController: _textController,
                getString: (String value) {
                  if (_debouncer != null) _debouncer.cancel();
                  _debouncer = Timer(const Duration(seconds: 1), () {
                    print("Delayed $value");

                    context.read<SearchBloc>().add(LoadSearchEvent(value));
                    //call api or other search functions here
                  });
                },
              ),
            ),
            BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
              print("Print ============>${state.isSearching}");
              if (state.isSearching) {

                return Container(child: const CircularProgressIndicator());
              }

              if(state.products.isNotEmpty){
                return Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: ListView.builder(itemBuilder: (context,count){
                      return TextViewOptions(
                          name: state.products[count].title!, isDividerVisible: true);
                    },itemCount: state.products.length,),
                  ),
                );
              }
              return Container();
            })
          ],
        ),
      ),
    );
  }
}

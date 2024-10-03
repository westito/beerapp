import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:beer_app/src/app/router.dart';
import 'package:beer_app/src/presentation/select_beer/bloc/select_beer_bloc.dart';
import 'package:beer_app/src/presentation/select_beer/bloc/select_beer_events.dart';
import 'package:beer_app/src/presentation/select_beer/bloc/select_beer_state.dart';
import 'package:beer_app/src/presentation/widgets/beer_image.dart';
import 'package:beer_app/src/presentation/widgets/beer_info_card.dart';
import 'package:beer_app/src/presentation/widgets/select_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';

part 'select_beer_body.dart';

@RoutePage()
class SelectBeerPage extends StatelessWidget {
  const SelectBeerPage();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Beer'),
      ),
      backgroundColor: theme.colorScheme.primaryContainer,
      body: const _SelectBeerPageBody(),
    );
  }
}

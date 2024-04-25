import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/values/app_colors.dart';
import '../../../core/values/show_message_internal.dart';
import '../../../core/values/text_styles.dart';
import '../../../core/widgets/button/primary_button.dart';
import '../../../main_router.dart';
import '../cubit/home_cubit.dart';
import '../cubit/home_state.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(),
      child: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<HomeCubit, HomeState>(
          listenWhen: (previous, current) =>
              previous.message != current.message,
          listener: (context, state) {
            if (state.message != null) {
              ShowMessageInternal.showOverlay(context, state.message!);
            }
          },
        ),
      ],
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: AppColors.colorFF28384B,
            body: Column(
              children: [
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: PrimaryButton(
                        onTap: () {
                          context.pushRoute(const ConvertViewRoute());
                        },
                        backgroundColor: AppColors.colorFFFFFFFF,
                        textColor: AppColors.colorFF000000,
                        textSize: 32,
                        title: 'Start',
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: PrimaryButton(
                        onTap: () {},
                        backgroundColor: AppColors.colorFFFFFFFF,
                        textColor: AppColors.colorFF000000,
                        textSize: 32,
                        title: 'Stop',
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "X",
                      style: TextStyles.boldWhiteS20.copyWith(fontSize: 200),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/values/app_colors.dart';
import '../../../core/values/show_message_internal.dart';
import '../../../core/values/text_styles.dart';
import '../../../core/widgets/appBar/custom_appbar.dart';
import '../../../core/widgets/button/primary_button.dart';
import '../../../core/widgets/drawer/app_drawer.dart';
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
  final GlobalKey<ScaffoldState> _key = GlobalKey();
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
          final cubit = context.read<HomeCubit>();
          return Scaffold(
            key: _key,
            resizeToAvoidBottomInset: false,
            backgroundColor: AppColors.colorFF28384B,
            appBar: CustomAppBar(
              leading: IconButton(
                onPressed: () {
                  _key.currentState?.openDrawer();
                },
                icon: const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(
                    Icons.list,
                    color: AppColors.colorFFFFFFFF,
                  ),
                ),
              ),
              title: 'HomeView',
            ),
            drawer: AppDrawer(
              onHomeTap: () {
                _key.currentState?.closeDrawer();
              },
              onDeviceTap: () {
                _key.currentState?.closeDrawer();
                context.pushRoute( ListBluetoothViewRoute(homeCubit: cubit));
              },
              onConvertTap: (){
                _key.currentState?.closeDrawer();
                context.pushRoute(const ConvertViewRoute());
              },
            ),
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
                          cubit.startListerner();
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

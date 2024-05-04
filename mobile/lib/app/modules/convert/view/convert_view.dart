import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/values/app_colors.dart';
import '../../../core/values/text_styles.dart';
import '../../../core/widgets/appBar/custom_appbar.dart';
import '../cubit/convert_cubit.dart';
import '../cubit/convert_state.dart';

class ConvertView extends StatefulWidget {
  const ConvertView({super.key});

  @override
  State<ConvertView> createState() => _ConvertViewState();
}

class _ConvertViewState extends State<ConvertView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ConvertCubit(),
      child: _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    return BlocBuilder<ConvertCubit, ConvertState>(
      builder: (context, state) {
        final cubit = context.read<ConvertCubit>();
        return Scaffold(
          appBar: CustomAppBar(
            leading: IconButton(
              onPressed: () => context.router.pop(),
              icon: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.colorFFFFFFFF,
                ),
              ),
            ),
            title: 'Translate Sign Language',
          ),
          backgroundColor: AppColors.colorFFFFFFFF,
          body: const SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hello Arduino",
                  style: TextStyles.mediumBlackS20,
                ),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: AppColors.colorFF000000.withOpacity(0.3),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "Volumn",
                          style: TextStyles.mediumBlackS14,
                        ),
                        const SizedBox(height: 8),
                        SliderTheme(
                          data: SliderThemeData(
                            trackHeight: 2,
                            thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 6),
                            overlayShape: SliderComponentShape.noOverlay,
                          ),
                          child: Slider(
                            onChanged: (value) {
                              cubit.setVolumn(value);
                            },
                            value: state.volumn,
                            min: 0,
                            max: 1,
                            divisions: 100,
                            thumbColor: AppColors.colorFFFFFFFF,
                            activeColor: AppColors.colorFF28384B,
                            inactiveColor: AppColors.colorFFc1bebe,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "Pitch",
                          style: TextStyles.mediumBlackS14,
                        ),
                        const SizedBox(height: 8),
                        SliderTheme(
                          data: SliderThemeData(
                            trackHeight: 2,
                            thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 6),
                            overlayShape: SliderComponentShape.noOverlay,
                          ),
                          child: Slider(
                            onChanged: (value) {
                              cubit.setPitch(value);
                            },
                            value: state.pitch,
                            min: 0,
                            max: 2,
                            divisions: 100,
                            thumbColor: AppColors.colorFFFFFFFF,
                            activeColor: AppColors.colorFF28384B,
                            inactiveColor: AppColors.colorFFc1bebe,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "Speed",
                          style: TextStyles.mediumBlackS14,
                        ),
                        const SizedBox(height: 8),
                        SliderTheme(
                          data: SliderThemeData(
                            trackHeight: 2,
                            thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 6),
                            overlayShape: SliderComponentShape.noOverlay,
                          ),
                          child: Slider(
                            onChanged: (value) {
                              cubit.setSpeed(value);
                            },
                            value: state.speed,
                            min: 0,
                            max: 2,
                            divisions: 100,
                            thumbColor: AppColors.colorFFFFFFFF,
                            activeColor: AppColors.colorFF28384B,
                            inactiveColor: AppColors.colorFFc1bebe,
                          ),
                        ),
                        const SizedBox(height: 32),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    cubit.speak();
                  },
                  icon: Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                          color: AppColors.colorFF28384B,
                          shape: BoxShape.circle),
                      child: const Icon(
                        Icons.mic,
                        color: AppColors.colorFFFFFFFF,
                      )),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

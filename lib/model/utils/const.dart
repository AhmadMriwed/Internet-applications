

import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../../view/manager/constants/const.dart';
import '../../view/manager/constants/style_manager.dart';
import '../../view/resource/color.dart';
import '../../view/manager/widgets/custome_button.dart';
import 'sizer.dart';

class Const{
  static LOADIG(context){
    Get.dialog(
        Center(
      child: Container(
          alignment: Alignment.center,
          width: Sizer.getW(context) * 0.2,
          height: Sizer.getW(context) * 0.2,
          decoration: BoxDecoration(
              color: ColorManager.white,
              borderRadius: BorderRadius.circular(AppSize.s8)),
          child: LoadingAnimationWidget.waveDots(
              color: ColorManager.primary,
              size: Sizer.getW(context) * 0.1)),
    ),
    barrierDismissible: false
    );
  }



  static TOAST(BuildContext context,{String textToast = "This Is Toast"}){
    showToast(
        textToast,
      context: context,
    animation:StyledToastAnimation.fadeScale,
      textStyle: getRegularStyle(color: ColorManager.white)
    );

  }

  static SHOWDELETEDIALOOG(BuildContext context){
    Get.dialog(

      Center(
        child: Material(
          color: Colors.transparent,
          child: Container(
            margin: const EdgeInsets.symmetric(
                horizontal: AppMargin.m10,
                vertical: AppMargin.m20),
            padding: EdgeInsets.symmetric(
                horizontal: AppPadding.p20,
                vertical: AppPadding.p10),
            width: Sizer.getW(context),
            decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius:
                BorderRadius.circular(AppSize.s14)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: AppSize.s30,),
                Text(
                  'delete',
                  style: getRegularStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                      fontSize: Sizer.getW(context) * 0.045
                  ),
                ),
                const SizedBox(height: AppSize.s40,),
                Row(
                  children: [
                    ButtonApp(
                      text: 'ok',
                      onTap: (){
                        Navigator.pop(context);
                        Const.TOAST(context,textToast: 'rate');
                      },
                    ),
                    ButtonApp(
                      text: 'no',
                      onTap: (){
                        Navigator.pop(context);
                        Const.TOAST(context,textToast: 'rate');
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

    static SHOWLOADINGINDECATOR(){
      return Center(
        child: CircularProgressIndicator(
        ),
      );
    }

}
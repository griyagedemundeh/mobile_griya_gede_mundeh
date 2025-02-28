import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';

class TextInput extends StatefulWidget {
  const TextInput({
    super.key,
    this.controller,
    this.label,
    this.placeHolder,
    this.isEnabled,
    this.type,
    this.isPassword,
    this.isMoney,
    this.validatorMessage,
    this.textInputAction,
    this.onEditingComplete,
    this.autoFill,
    this.autoFocus,
    this.focusNode,
    this.onChange,
    this.maxLines,
    this.minLines,
    this.errorMessage,
    this.onPasswordTap,
    this.isPassVisible,
    this.isRequired,
    this.readOnly,
  });

  final TextEditingController? controller;
  final String? label;
  final String? placeHolder;
  final bool? isEnabled;
  final TextInputType? type;
  final bool? isPassword;
  final bool? isMoney;
  final String? validatorMessage;
  final TextInputAction? textInputAction;
  final VoidCallback? onEditingComplete;
  final Iterable<String>? autoFill;
  final bool? autoFocus;
  final FocusNode? focusNode;
  final void Function(String)? onChange;
  final int? maxLines;
  final int? minLines;

  final String? errorMessage;
  final VoidCallback? onPasswordTap;
  final bool? isPassVisible;
  final bool? isRequired;
  final bool? readOnly;

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: widget.label != null,
          child: Row(
            children: [
              Text(
                widget.label ?? "",
                style: const TextStyle(
                  fontSize: AppFontSizes.bodySmall,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Visibility(
                visible: widget.isRequired == true,
                child: const Text(
                  "*",
                  style: TextStyle(
                    color: AppColors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppDimens.marginSmall),
        Container(
          padding: widget.isEnabled == false
              ? null
              : const EdgeInsets.only(
                  left: AppDimens.marginMedium,
                ),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color:
                  widget.errorMessage != null ? AppColors.red : AppColors.gray1,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(AppDimens.paddingSmall),
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(AppDimens.paddingSmall),
            ),
            child: TextFormField(
              autofillHints: widget.autoFill,
              textInputAction: widget.textInputAction,
              onEditingComplete: widget.onEditingComplete,
              focusNode: widget.focusNode,
              maxLines: widget.maxLines ?? 1,
              minLines: widget.minLines,
              onChanged: widget.onChange,
              readOnly: widget.readOnly ?? false,
              autofocus: widget.autoFocus ?? false,
              obscureText: widget.isPassword != null &&
                  widget.isPassword == true &&
                  widget.isPassVisible == false,
              enabled: widget.isEnabled ?? true,
              controller: widget.controller,
              cursorColor: AppColors.primary1,
              keyboardType: widget.type,
              decoration: InputDecoration(
                focusColor: AppColors.primary1,
                suffixIcon: widget.errorMessage != null
                    ? const Icon(
                        Icons.error,
                        color: AppColors.red,
                      )
                    : widget.isPassword != null && widget.isPassword == true
                        ? GestureDetector(
                            onTap: widget.onPasswordTap,
                            child: Icon(
                              widget.isPassVisible == true
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: AppColors.gray2,
                              size: AppDimens.paddingMediumLarge,
                            ),
                          )
                        : null,
                contentPadding: widget.isEnabled == false
                    ? const EdgeInsets.symmetric(
                        horizontal: AppDimens.marginMedium,
                        vertical: AppDimens.paddingMicro)
                    : null,
                filled: widget.isEnabled == false,
                fillColor: AppColors.gray1.withOpacity(0.35),
                border: InputBorder.none,
                hintText: widget.placeHolder,
                hintStyle: TextStyle(
                  color: widget.isEnabled == false
                      ? AppColors.gray2
                      : AppColors.gray2.withOpacity(0.5),
                  fontSize: AppFontSizes.labelSmall,
                ),
              ),
            ),
          ),
        ),
        widget.errorMessage != null
            ? Column(
                children: [
                  const SizedBox(height: AppDimens.paddingMicro),
                  Text(
                    widget.errorMessage ?? "",
                    style: const TextStyle(
                      color: AppColors.red,
                      fontSize: AppFontSizes.labelSmall,
                    ),
                  ),
                ],
              )
            : const SizedBox(),
      ],
    );
  }
}

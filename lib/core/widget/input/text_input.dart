import 'package:flutter/material.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/colors.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/dimens.dart';
import 'package:mobile_griya_gede_mundeh/core/constant/font_size.dart';

class TextInput extends StatefulWidget {
  const TextInput({
    super.key,
    required this.controller,
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
    this.isError,
    this.errorMessage,
    this.onPasswordTap,
    this.isPassVisible,
    this.isRequired,
    this.readOnly,
  });

  final TextEditingController controller;
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
  final bool? isError;
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
                style: const TextStyle(fontSize: AppFontSizes.bodyMedium),
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
                  top: AppDimens.paddingMicro,
                  bottom: AppDimens.paddingMicro,
                  left: AppDimens.marginMedium,
                ),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: widget.isError == true ? AppColors.red : AppColors.gray1,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(AppDimens.marginMedium),
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(AppDimens.marginMedium),
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
              cursorColor: AppColors.gray2,
              keyboardType: widget.type,
              decoration: InputDecoration(
                suffixIcon: widget.isError == true
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
                            ),
                          )
                        : null,
                contentPadding: widget.isEnabled == false
                    ? const EdgeInsets.symmetric(
                        horizontal: AppDimens.marginMedium,
                        vertical: AppDimens.paddingMicro)
                    : null,
                filled: widget.isEnabled == false,
                fillColor: AppColors.gray2.withOpacity(0.5),
                border: InputBorder.none,
                hintText: widget.placeHolder,
                hintStyle: TextStyle(
                  color: widget.isEnabled == false
                      ? AppColors.gray2
                      : AppColors.gray2.withOpacity(0.5),
                ),
              ),
            ),
          ),
        ),
        widget.isError == true
            ? Column(
                children: [
                  const SizedBox(height: AppDimens.paddingMicro),
                  Text(
                    widget.errorMessage ?? "",
                    style: const TextStyle(
                      color: AppColors.red,
                      fontSize: AppFontSizes.bodySmall,
                    ),
                  ),
                ],
              )
            : const SizedBox(),
      ],
    );
  }
}

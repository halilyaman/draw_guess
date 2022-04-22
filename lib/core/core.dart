// external files
export 'package:flutter/material.dart';
export 'package:flutter_hooks/flutter_hooks.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:hooks_riverpod/hooks_riverpod.dart';
export 'package:firebase_core/firebase_core.dart';
export 'package:cloud_firestore/cloud_firestore.dart';
export 'package:dartz/dartz.dart' hide State, Task;
export 'package:firebase_auth/firebase_auth.dart';
export 'package:google_sign_in/google_sign_in.dart';
export 'package:flutter/services.dart';
export 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
export 'package:flash/flash.dart';
export 'package:firebase_storage/firebase_storage.dart';
export 'dart:async' hide AsyncError;


// internal files
export 'package:draw_guess/firebase_options.dart';
export 'package:draw_guess/core/presentation/app.dart';
export 'package:draw_guess/core/presentation/app_padding.dart';
export 'package:draw_guess/core/presentation/app_colors.dart';
export 'package:draw_guess/core/shared/app_router.gr.dart';
export 'package:draw_guess/core/domain/failure.dart';
export 'package:draw_guess/core/infrastructure/safe_call.dart';
export 'package:draw_guess/core/shared/providers.dart';
export 'package:draw_guess/core/presentation/popups.dart';

// core atomic widgets
export 'package:draw_guess/core/presentation/widgets/empty_height.dart';
export 'package:draw_guess/core/presentation/widgets/empty_width.dart';
export 'package:draw_guess/core/presentation/widgets/border_radius_box.dart';
export 'package:draw_guess/core/presentation/widgets/keyboard_unfocus_widget.dart';
export 'package:draw_guess/core/presentation/widgets/custom_text_field.dart';
export 'package:draw_guess/core/presentation/widgets/loading_indicator.dart';
export 'package:draw_guess/core/presentation/widgets/upload_task_popup.dart';

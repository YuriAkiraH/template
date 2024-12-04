// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginController on LoginControllerBase, Store {
  late final _$_didInitAtom =
      Atom(name: 'LoginControllerBase._didInit', context: context);

  bool get didInit {
    _$_didInitAtom.reportRead();
    return super._didInit;
  }

  @override
  bool get _didInit => didInit;

  @override
  set _didInit(bool value) {
    _$_didInitAtom.reportWrite(value, super._didInit, () {
      super._didInit = value;
    });
  }

  late final _$_errorMessageAtom =
      Atom(name: 'LoginControllerBase._errorMessage', context: context);

  ObservableList<String> get errorMessage {
    _$_errorMessageAtom.reportRead();
    return super._errorMessage;
  }

  @override
  ObservableList<String> get _errorMessage => errorMessage;

  @override
  set _errorMessage(ObservableList<String> value) {
    _$_errorMessageAtom.reportWrite(value, super._errorMessage, () {
      super._errorMessage = value;
    });
  }

  late final _$loginAsyncAction =
      AsyncAction('LoginControllerBase.login', context: context);

  @override
  Future<void> login(String username, String password) {
    return _$loginAsyncAction.run(() => super.login(username, password));
  }

  @override
  String toString() {
    return '''

    ''';
  }
}

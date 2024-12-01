// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TodosController on TodosControllerBase, Store {
  late final _$_didInitAtom =
      Atom(name: 'TodosControllerBase._didInit', context: context);

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

  late final _$_todosAtom =
      Atom(name: 'TodosControllerBase._todos', context: context);

  TodosViewModel? get todos {
    _$_todosAtom.reportRead();
    return super._todos;
  }

  @override
  TodosViewModel? get _todos => todos;

  @override
  set _todos(TodosViewModel? value) {
    _$_todosAtom.reportWrite(value, super._todos, () {
      super._todos = value;
    });
  }

  late final _$initAsyncAction =
      AsyncAction('TodosControllerBase.init', context: context);

  @override
  Future<void> init() {
    return _$initAsyncAction.run(() => super.init());
  }

  @override
  String toString() {
    return '''

    ''';
  }
}

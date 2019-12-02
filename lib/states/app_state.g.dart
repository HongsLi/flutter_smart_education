// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppState on _AppState, Store {
  final _$allTopicsAtom = Atom(name: '_AppState.allTopics');

  @override
  List get allTopics {
    _$allTopicsAtom.context.enforceReadPolicy(_$allTopicsAtom);
    _$allTopicsAtom.reportObserved();
    return super.allTopics;
  }

  @override
  set allTopics(List value) {
    _$allTopicsAtom.context.conditionallyRunInAction(() {
      super.allTopics = value;
      _$allTopicsAtom.reportChanged();
    }, _$allTopicsAtom, name: '${_$allTopicsAtom.name}_set');
  }

  final _$currentTopicsAtom = Atom(name: '_AppState.currentTopics');

  @override
  List get currentTopics {
    _$currentTopicsAtom.context.enforceReadPolicy(_$currentTopicsAtom);
    _$currentTopicsAtom.reportObserved();
    return super.currentTopics;
  }

  @override
  set currentTopics(List value) {
    _$currentTopicsAtom.context.conditionallyRunInAction(() {
      super.currentTopics = value;
      _$currentTopicsAtom.reportChanged();
    }, _$currentTopicsAtom, name: '${_$currentTopicsAtom.name}_set');
  }

  final _$learningTypeAtom = Atom(name: '_AppState.learningType');

  @override
  String get learningType {
    _$learningTypeAtom.context.enforceReadPolicy(_$learningTypeAtom);
    _$learningTypeAtom.reportObserved();
    return super.learningType;
  }

  @override
  set learningType(String value) {
    _$learningTypeAtom.context.conditionallyRunInAction(() {
      super.learningType = value;
      _$learningTypeAtom.reportChanged();
    }, _$learningTypeAtom, name: '${_$learningTypeAtom.name}_set');
  }

  final _$currentTopicIdAtom = Atom(name: '_AppState.currentTopicId');

  @override
  int get currentTopicId {
    _$currentTopicIdAtom.context.enforceReadPolicy(_$currentTopicIdAtom);
    _$currentTopicIdAtom.reportObserved();
    return super.currentTopicId;
  }

  @override
  set currentTopicId(int value) {
    _$currentTopicIdAtom.context.conditionallyRunInAction(() {
      super.currentTopicId = value;
      _$currentTopicIdAtom.reportChanged();
    }, _$currentTopicIdAtom, name: '${_$currentTopicIdAtom.name}_set');
  }

  final _$currentTopicNameAtom = Atom(name: '_AppState.currentTopicName');

  @override
  String get currentTopicName {
    _$currentTopicNameAtom.context.enforceReadPolicy(_$currentTopicNameAtom);
    _$currentTopicNameAtom.reportObserved();
    return super.currentTopicName;
  }

  @override
  set currentTopicName(String value) {
    _$currentTopicNameAtom.context.conditionallyRunInAction(() {
      super.currentTopicName = value;
      _$currentTopicNameAtom.reportChanged();
    }, _$currentTopicNameAtom, name: '${_$currentTopicNameAtom.name}_set');
  }

  final _$domainIdAtom = Atom(name: '_AppState.domainId');

  @override
  int get domainId {
    _$domainIdAtom.context.enforceReadPolicy(_$domainIdAtom);
    _$domainIdAtom.reportObserved();
    return super.domainId;
  }

  @override
  set domainId(int value) {
    _$domainIdAtom.context.conditionallyRunInAction(() {
      super.domainId = value;
      _$domainIdAtom.reportChanged();
    }, _$domainIdAtom, name: '${_$domainIdAtom.name}_set');
  }

  final _$domainNameAtom = Atom(name: '_AppState.domainName');

  @override
  String get domainName {
    _$domainNameAtom.context.enforceReadPolicy(_$domainNameAtom);
    _$domainNameAtom.reportObserved();
    return super.domainName;
  }

  @override
  set domainName(String value) {
    _$domainNameAtom.context.conditionallyRunInAction(() {
      super.domainName = value;
      _$domainNameAtom.reportChanged();
    }, _$domainNameAtom, name: '${_$domainNameAtom.name}_set');
  }

  final _$currentStudentIdAtom = Atom(name: '_AppState.currentStudentId');

  @override
  int get currentStudentId {
    _$currentStudentIdAtom.context.enforceReadPolicy(_$currentStudentIdAtom);
    _$currentStudentIdAtom.reportObserved();
    return super.currentStudentId;
  }

  @override
  set currentStudentId(int value) {
    _$currentStudentIdAtom.context.conditionallyRunInAction(() {
      super.currentStudentId = value;
      _$currentStudentIdAtom.reportChanged();
    }, _$currentStudentIdAtom, name: '${_$currentStudentIdAtom.name}_set');
  }

  final _$termIdAtom = Atom(name: '_AppState.termId');

  @override
  int get termId {
    _$termIdAtom.context.enforceReadPolicy(_$termIdAtom);
    _$termIdAtom.reportObserved();
    return super.termId;
  }

  @override
  set termId(int value) {
    _$termIdAtom.context.conditionallyRunInAction(() {
      super.termId = value;
      _$termIdAtom.reportChanged();
    }, _$termIdAtom, name: '${_$termIdAtom.name}_set');
  }

  final _$assembleTypeAtom = Atom(name: '_AppState.assembleType');

  @override
  String get assembleType {
    _$assembleTypeAtom.context.enforceReadPolicy(_$assembleTypeAtom);
    _$assembleTypeAtom.reportObserved();
    return super.assembleType;
  }

  @override
  set assembleType(String value) {
    _$assembleTypeAtom.context.conditionallyRunInAction(() {
      super.assembleType = value;
      _$assembleTypeAtom.reportChanged();
    }, _$assembleTypeAtom, name: '${_$assembleTypeAtom.name}_set');
  }

  final _$assemblesOfCurrentTopicAtom =
      Atom(name: '_AppState.assemblesOfCurrentTopic');

  @override
  List get assemblesOfCurrentTopic {
    _$assemblesOfCurrentTopicAtom.context
        .enforceReadPolicy(_$assemblesOfCurrentTopicAtom);
    _$assemblesOfCurrentTopicAtom.reportObserved();
    return super.assemblesOfCurrentTopic;
  }

  @override
  set assemblesOfCurrentTopic(List value) {
    _$assemblesOfCurrentTopicAtom.context.conditionallyRunInAction(() {
      super.assemblesOfCurrentTopic = value;
      _$assemblesOfCurrentTopicAtom.reportChanged();
    }, _$assemblesOfCurrentTopicAtom,
        name: '${_$assemblesOfCurrentTopicAtom.name}_set');
  }

  final _$appTitleAtom = Atom(name: '_AppState.appTitle');

  @override
  String get appTitle {
    _$appTitleAtom.context.enforceReadPolicy(_$appTitleAtom);
    _$appTitleAtom.reportObserved();
    return super.appTitle;
  }

  @override
  set appTitle(String value) {
    _$appTitleAtom.context.conditionallyRunInAction(() {
      super.appTitle = value;
      _$appTitleAtom.reportChanged();
    }, _$appTitleAtom, name: '${_$appTitleAtom.name}_set');
  }

  final _$selectedNavigationItemAtom =
      Atom(name: '_AppState.selectedNavigationItem');

  @override
  int get selectedNavigationItem {
    _$selectedNavigationItemAtom.context
        .enforceReadPolicy(_$selectedNavigationItemAtom);
    _$selectedNavigationItemAtom.reportObserved();
    return super.selectedNavigationItem;
  }

  @override
  set selectedNavigationItem(int value) {
    _$selectedNavigationItemAtom.context.conditionallyRunInAction(() {
      super.selectedNavigationItem = value;
      _$selectedNavigationItemAtom.reportChanged();
    }, _$selectedNavigationItemAtom,
        name: '${_$selectedNavigationItemAtom.name}_set');
  }

  final _$_AppStateActionController = ActionController(name: '_AppState');

  @override
  void setTopicId(dynamic cid) {
    final _$actionInfo = _$_AppStateActionController.startAction();
    try {
      return super.setTopicId(cid);
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAppTitle(dynamic title) {
    final _$actionInfo = _$_AppStateActionController.startAction();
    try {
      return super.setAppTitle(title);
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTopicName(dynamic tn) {
    final _$actionInfo = _$_AppStateActionController.startAction();
    try {
      return super.setTopicName(tn);
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSelectedNavigationItem(dynamic it) {
    final _$actionInfo = _$_AppStateActionController.startAction();
    try {
      return super.setSelectedNavigationItem(it);
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLearningType(dynamic lt) {
    final _$actionInfo = _$_AppStateActionController.startAction();
    try {
      return super.setLearningType(lt);
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void fetchAssembles() {
    final _$actionInfo = _$_AppStateActionController.startAction();
    try {
      return super.fetchAssembles();
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void fetchAllTopics() {
    final _$actionInfo = _$_AppStateActionController.startAction();
    try {
      return super.fetchAllTopics();
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void fetchLearningPath() {
    final _$actionInfo = _$_AppStateActionController.startAction();
    try {
      return super.fetchLearningPath();
    } finally {
      _$_AppStateActionController.endAction(_$actionInfo);
    }
  }
}

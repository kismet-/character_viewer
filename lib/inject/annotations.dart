import 'package:inject_annotation/inject_annotation.dart';

const providedServiceList = Qualifier(#providedServiceList);
const lifecycleServiceList = Qualifier(#lifecycleServiceList);
const repositoryList = Qualifier(#repositoryList);
const deepLink = Qualifier(#deepLink);
const flavorName = Qualifier(#flavorName);

// State machines:
const signInHsm = Qualifier(#signInHsm);

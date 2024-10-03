import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';

T useBlocWithParam<T extends BlocBase<dynamic>>(
  dynamic param, [
  List<dynamic> keys = const <dynamic>[],
]) {
  final bloc = useMemoized(
    () => GetIt.I.get<T>(param1: param),
    [param, ...keys],
  );

  useEffect(() => bloc.close, [bloc]);

  return bloc;
}

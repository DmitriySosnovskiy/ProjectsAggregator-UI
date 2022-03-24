import 'sr_mixin.dart';
import 'package:bloc/bloc.dart';

abstract class SrBloc<Event, State, SR> extends Bloc<Event, State>
    with SingleResultMixin<Event, State, SR> {
  SrBloc(State state) : super(state);
}

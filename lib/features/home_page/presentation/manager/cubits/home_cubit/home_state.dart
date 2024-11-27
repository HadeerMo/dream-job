part of 'home_cubit.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

final class HomeInitial extends HomeState {}

final class HomeFailure extends HomeState {
  final String errMsg;
  const HomeFailure(this.errMsg);
}

final class HomeSuccess extends HomeState {
  final List<Jobs> jobs;

  const HomeSuccess(this.jobs);
}

final class HomeLoading extends HomeState {}

import 'package:bloc/bloc.dart';
import 'package:dream_jop/core/models/jobs/jobs.dart';
import 'package:dream_jop/features/home_page/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitial());
  final HomeRepo homeRepo;
  Future<void> fetchAllJobs() async {
    emit(HomeLoading());
    var result = await homeRepo.fetchJobs();
    result.fold((failure) {
      emit(HomeFailure(failure.errorMsg));
    }, (jobs) {
      emit(HomeSuccess(jobs));
    });
  }
}

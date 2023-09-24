abstract class UseCase<Result, Param> {
  Future<Result> execute(Param param);
}

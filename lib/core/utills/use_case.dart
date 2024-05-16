abstract class UseCase<Type, Params> {
  Future<Type> call(Params _);
}

class NoParams {}

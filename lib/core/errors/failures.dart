abstract class Failure{
  final String message;
  const Failure({required this.message});
}

class AuthFailure extends Failure{
  const AuthFailure({required super.message});
}

class BookingFailure extends Failure{
  const BookingFailure({required super.message});
}

class AppointmentsFailure extends Failure{
  const AppointmentsFailure({required super.message});
}

class DoctorsFailure extends Failure{
  const DoctorsFailure({required super.message});
}

class NetworkFailure extends Failure{
  const NetworkFailure({required super.message});
}

class ServerFailure extends Failure{
  const ServerFailure({required super.message});
}

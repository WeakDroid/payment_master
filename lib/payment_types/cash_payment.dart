import '../payment.dart';

class CashPayment<T> extends Payment<T> {
  CashPayment(super.amount);

  @override
  void processPayment() {
    print('\nProcessing cash payment of $amount');
  }
}
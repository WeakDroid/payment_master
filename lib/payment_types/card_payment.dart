import '../payment.dart';

class CardPayment<T> extends Payment<T> {
  final String cardNumber;

  CardPayment(super.amount, this.cardNumber);

  @override
  void processPayment() {
    print('\nProcessing card payment using card $cardNumber of $amount');
  }
}
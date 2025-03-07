import '../payment.dart';

class CryptoPayment<T> extends Payment<T> {
  final String walletAddress;

  CryptoPayment(super.amount, this.walletAddress);

  @override
  void processPayment() {
    print('\nProcessing crypto payment using wallet $walletAddress of $amount');
  }
}

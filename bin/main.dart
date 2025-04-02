import 'package:payment_master/payment.dart';
import 'package:payment_master/payment_method.dart';

void main() {
  var cash = Payment.create(CashPaymentMethod(), 100.0);
      cardNumber: '5363542105714969');
  var crypto = Payment.create(CryptoPaymentMethod(), '0.01 BTC',
      cryptoWallet: '1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa');

  print('Hello from Oleh');
  print('Hello from Oleh');
  print('Hello from Oleh');
  print('Hello from Oleh');

  cash.processPayment();
  crypto.processPayment();
}

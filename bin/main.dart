import 'package:payment_master/payment.dart';
import 'package:payment_master/payment_method.dart';

void main() {
print('Hello, it is Tanya');
print('Hello, it is Tanya');
  var cash = Payment.create(CashPaymentMethod(), 100.0);
  var card = Payment.create(CardPaymentMethod(), 250.50,
      cardNumber: '5363542105714969');
  var crypto = Payment.create(CryptoPaymentMethod(), '0.01 BTC',
      cryptoWallet: '1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa');

  cash.processPayment();
  card.processPayment();
  crypto.processPayment();
}

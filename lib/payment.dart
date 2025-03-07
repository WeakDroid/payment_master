import 'package:payment_master/payment_method.dart';
import 'package:payment_master/payment_types/card_payment.dart';
import 'package:payment_master/payment_types/cash_payment.dart';
import 'package:payment_master/payment_types/crypto_payment.dart';

abstract class Payment<T> {
  final T amount;

  Payment(this.amount);

  factory Payment.create(PaymentMethod method, T amount,
      {String? cardNumber, String? cryptoWallet}) {
    switch (method) {
      case CashPaymentMethod():
        return CashPayment(amount);
      case CardPaymentMethod():
        if (cardNumber != null) {
          return CardPayment(amount, cardNumber);
        } else {
          throw ArgumentError(
              'Sorry, your card is invalid, you are also invalid');
        }
      case CryptoPaymentMethod():
        if (cryptoWallet != null) {
          return CryptoPayment(amount, cryptoWallet);
        } else {
          throw ArgumentError(
              'Sorry, your wallet num is invalid, you are also invalid');
        }
    }
  }

  void processPayment();
}

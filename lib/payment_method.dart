import 'package:payment_master/payment.dart';

sealed class PaymentMethod {
  PaymentMethod();
}

class CashPaymentMethod extends PaymentMethod {
  CashPaymentMethod();
}

class CardPaymentMethod extends PaymentMethod {
  CardPaymentMethod();
}

class CryptoPaymentMethod extends PaymentMethod {
  CryptoPaymentMethod();
}
class CuentaBancaria {
  double _saldo;

  CuentaBancaria(double saldoInicial) : _saldo = saldoInicial {
    if (!saldoInicial.isFinite || saldoInicial < 0) {
      throw ArgumentError('El saldo inicial debe ser válido y no negativo.');
    }
  }

  void depositar(double monto) {
    if (!monto.isFinite || monto <= 0) {
      print('El depósito debe ser un monto positivo válido.');
      return;
    }

    _saldo += monto;
    print('Depósito realizado: $monto');
  }

  void retirar(double monto) {
    if (!monto.isFinite || monto <= 0) {
      print('El retiro debe ser un monto positivo válido.');
      return;
    }

    if (monto > _saldo) {
      print('Saldo insuficiente.');
      return;
    }

    _saldo -= monto;
    print('Retiro realizado: $monto');
  }

  double consultarSaldo() {
    return _saldo;
  }
}

void main() {
  CuentaBancaria cuenta = CuentaBancaria(100000);

  cuenta.depositar(50000);
  cuenta.depositar(25000);

  cuenta.retirar(30000);

  // Este intento se rechaza y no cambia el saldo.
  cuenta.retirar(-10000);

  print(
    'Saldo final: ${cuenta.consultarSaldo().toStringAsFixed(2)}',
  );
}

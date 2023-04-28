enum RadioOptions { option1, option2, option3 }
// Classe que define a configuração de cada opção do botão de rádio
class TestBalloonRadioOption {
  final String label; // Rótulo exibido junto à opção de rádio
  final dynamic value; // Valor associado a essa opção de rádio

  TestBalloonRadioOption({required this.label, required this.value});
}
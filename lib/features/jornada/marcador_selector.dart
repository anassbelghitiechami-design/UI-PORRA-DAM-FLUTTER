import 'package:flutter/material.dart';

class MarcadorSelector extends StatelessWidget {
  const MarcadorSelector({
    super.key,
    required this.valor,
    required this.onChanged,
  });

  final int valor;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$valor',
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        IconButton(
          icon: const Icon(Icons.keyboard_arrow_down),
          onPressed: valor > 0 ? () => onChanged(valor - 1) : null,
        ),
        IconButton(
          icon: const Icon(Icons.keyboard_arrow_up),
          onPressed: () => onChanged(valor + 1),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key, required this.icon});

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: const CircleAvatar(
        backgroundImage: NetworkImage(
            'https://i.pinimg.com/564x/e1/5b/5c/e15b5c8d1039b28215d47717a69930e1.jpg'),
      ),
      title: const Text('Panic! At The Disco - Crazy aaaaaa'),
      subtitle: const Text('<unknown>'),
      trailing: PopupMenuButton<String>(
        tooltip: '',
        onSelected: (value) {
          if (value == 'remove') {}
        },
        itemBuilder: (context) {
          return [
            const PopupMenuItem<String>(
              value: 'remove',
              child: Text('Excluir'),
            ),
          ];
        },
        icon: icon,
      ),
    );
  }
}

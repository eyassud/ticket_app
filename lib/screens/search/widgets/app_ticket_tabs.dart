import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF4F6FD),
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Row(
        children: [
          AppTabs(tabText: 'All tickets'),
          AppTabs(
            tabText: 'Hotels',
            tabBorder: true,
            tabColor: true,
          )
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  const AppTabs(
      {super.key,
      this.tabText = '',
      this.tabBorder = false,
      this.tabColor = false});
  final String tabText;
  final bool tabBorder;
  final bool tabColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      width: size.width * .44,
      decoration: BoxDecoration(
          color: tabColor == false ? Colors.white : Colors.transparent,
          borderRadius: tabBorder == false
              ? const BorderRadius.horizontal(left: Radius.circular(50))
              : const BorderRadius.horizontal(right: Radius.circular(50))),
      child: Center(child: Text(tabText)),
    );
  }
}
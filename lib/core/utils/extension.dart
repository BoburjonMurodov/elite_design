


extension MoneyFormatter on String {String formatMoney() {
    try {
      String cleaned = replaceAll(RegExp(r'[^0-9]'), '');
      int amount = int.tryParse(cleaned) ?? 0;

      return amount.toString().replaceAllMapped(
          RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (match) => '${match[1]} ') + " so'm";
    } catch (e) {
      return this; // Return original string if formatting fails
    }
  }
}

import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class UtilsServices {
  // R$ - Formata preço
  String priceToCurrency(double price) {
    NumberFormat numberFormat = NumberFormat.simpleCurrency(locale: 'pt_BR');
    return numberFormat.format(price);
  }

  // dd/mm/yyyy 00:00
  String formatDateTime(DateTime dateTime) {
    initializeDateFormatting();

    DateFormat dateFormat = DateFormat.yMd('pt_BR').add_Hm();
    return dateFormat.format(dateTime);
  }
}

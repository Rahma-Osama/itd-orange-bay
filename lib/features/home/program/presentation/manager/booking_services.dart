import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class BookingServices extends ChangeNotifier{
  int adultCounter = 0;
  int childCounter = 0;
  int boatCounter = 0;

  void counterIncrement(String counterType) {
    switch (counterType) {
      case 'adultCounter':
        adultCounter++;
        break;
      case 'childCounter':
        childCounter++;
        break;
      case 'boatCounter':
        boatCounter++;
        break;
      default:
      // Handle other counter types if needed
    }
    notifyListeners();
  }

  void counterDecrement(String counterType) {
    switch (counterType) {
      case 'adultCounter':
        adultCounter = adultCounter > 0 ? adultCounter - 1 : adultCounter;
        break;
      case 'childCounter':
        childCounter = childCounter > 0 ? childCounter - 1 : childCounter;
        break;
      case 'boatCounter':
        boatCounter = boatCounter > 0 ? boatCounter - 1 : boatCounter;
        break;
      default:
      // Handle other counter types if needed
    }
    notifyListeners();
  }
}

BookingServices getBookingServices(BuildContext context,{bool listen = true}) =>
    Provider.of<BookingServices>(context, listen:listen);
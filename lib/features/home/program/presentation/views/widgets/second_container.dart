import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/localization/l10n.dart';
import 'package:orange_bay_new/core/theme/app_colors.dart';
import 'package:orange_bay_new/core/theme/text_styles.dart';
import 'package:orange_bay_new/core/utils/number_locale.dart';
import 'package:orange_bay_new/features/home/program/presentation/manager/booking_services.dart';
import 'package:orange_bay_new/features/home/program/presentation/views/widgets/pick_date.dart';
import 'package:orange_bay_new/features/home/program/presentation/views/widgets/pick_time.dart';

class SecondContainer extends StatefulWidget {
  const SecondContainer({Key? key}) : super(key: key);

  @override
  State<SecondContainer> createState() => _SecondContainerState();
}

class _SecondContainerState extends State<SecondContainer> {
  @override
  Widget build(BuildContext context) {
    final locale = getL10n(context);
    final bookServices = getBookingServices(context);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: MediaQuery.of(context).size.height / 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                locale.whenUAreGoing,
                style: TextStyles.textStyle14.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const PickDate2(),
              const SizedBox(
                height: 12,
              ),
              const PickTime(),
              const SizedBox(height: 24),
              Text(
                locale.howManyTickets,
                style: TextStyles.textStyle14
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Text('${locale.adult} (${locale.age} ${numberLocale(context, 12)} - ${numberLocale(context, 99)})',
                      style: TextStyles.textStyle14.copyWith(
                          fontWeight: FontWeight.w500, color: Colors.black)),
                  counterBuilder(context, 'adultCounter'),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                '${numberLocale(context , bookServices.adultCounter * 210.00)} ${locale.eg}',
                style: TextStyles.textStyle14.copyWith(
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF585757)),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Text('${locale.child} (${locale.age} ${numberLocale(context,5)}-${numberLocale(context,11)})',
                      style: TextStyles.textStyle14.copyWith(
                          fontWeight: FontWeight.w500, color: Colors.black)),
                  counterBuilder(context, 'childCounter'),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                '${numberLocale(context,bookServices.childCounter * 53.00)} ${locale.eg}',
                style: TextStyles.textStyle14.copyWith(
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF585757)),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  const Image(image: AssetImage('assets/images/info.png')),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    locale.childrenUnder4,
                    style: TextStyles.textStyle14
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Image(image: AssetImage('assets/images/info.png')),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      locale.refundStrategy,
                      style: TextStyles.textStyle14
                          .copyWith(fontWeight: FontWeight.w400),
                      softWrap: true,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Divider(),
              const SizedBox(
                height: 8,
              ),
              Text(
                locale.additionalServices,
                style: TextStyles.textStyle14
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    '${locale.boat} ${numberLocale(context,250 * bookServices.boatCounter)} ${locale.eg}',
                    style: TextStyles.textStyle14
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  counterBuilder(context, 'boatCounter'),
                  const SizedBox(
                    width: 15.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                locale.boatCruise,
                style: TextStyles.textStyle14.copyWith(
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF585757)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded counterBuilder(BuildContext context, String type) {
    final bookServices = getBookingServices(context);
    int count;
    Function() increment;
    Function() decrement;

    switch (type) {
      case 'adultCounter':
        count =bookServices.adultCounter;
        increment = () => bookServices.counterIncrement('adultCounter');
        decrement = () => bookServices.counterDecrement('adultCounter');
        break;
      case 'childCounter':
        count = bookServices.childCounter;
        increment = () => bookServices.counterIncrement('childCounter');
        decrement = () => bookServices.counterDecrement('childCounter');
        break;
      case 'boatCounter':
        count = bookServices.boatCounter;
        increment = () => bookServices.counterIncrement('boatCounter');
        decrement = () => bookServices.counterDecrement('boatCounter');
        break;
      default:
        count = 0;
        increment = () {};
        decrement = () {};
    }

    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 24,
            height: 24,
            child: FloatingActionButton(
              backgroundColor: count > 0 ? AppColors.deepOrange : Colors.grey,
              heroTag: '$type--',
              onPressed: decrement,
              mini: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Icon(Icons.remove),
            ),
          ),
          const SizedBox(width: 10.0),
          Text(
            '${numberLocale(context, count)}',
            style: TextStyles.textStyle18,
          ),
          const SizedBox(width: 10.0),
          SizedBox(
            width: 24,
            height: 24,
            child: FloatingActionButton(
              backgroundColor: count > 0 ? AppColors.deepOrange : Colors.grey,
              heroTag: '$type++',
              onPressed: increment,
              mini: true,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(8.0), // Set the desired border radius
              ),
              child: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:dream_jop/constant.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:syncfusion_flutter_sliders/sliders.dart';

class SalaryRangeSlider extends StatefulWidget {
  const SalaryRangeSlider({super.key});

  @override
  State<SalaryRangeSlider> createState() => _SalaryRangeSliderState();
}

class _SalaryRangeSliderState extends State<SalaryRangeSlider> {
  SfRangeValues _rangeValues = const SfRangeValues(60.0, 140.0);

  @override
  Widget build(BuildContext context) {
    return SfRangeSlider(
      min: 10.0,
      max: 230.0,
      values: _rangeValues,
      startThumbIcon: const Icon(Icons.circle, color: btnColor,size: 20,),
      endThumbIcon: const Icon(Icons.circle, color: btnColor,size: 20,),
      edgeLabelPlacement: EdgeLabelPlacement.inside,
      inactiveColor:
          const Color.fromARGB(255, 221, 220, 220), // Inactive track color
      activeColor: const Color.fromARGB(255, 221, 220, 220),
      tooltipTextFormatterCallback: (dynamic value, test) {
        return '${value.toStringAsFixed(0)}k'; // Show as string
      },
      enableTooltip: true,
      labelPlacement: LabelPlacement.onTicks,
      showLabels: true,
      labelFormatterCallback: (actualValue, formattedText) {
        String salary = 'Min.salary';
        if (actualValue == 250) {
          salary = 'Max.salary';
          return salary;
        }
        return salary;
      },
      onChanged: (SfRangeValues newValues) {
        setState(() {
          _rangeValues = newValues;
        });
      },
    );
  }
}

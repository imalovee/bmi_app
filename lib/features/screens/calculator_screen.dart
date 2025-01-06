import 'package:bmi_app/shared/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/constants.dart';
import '../../shared/custom_button.dart';
import '../navigation/route_strings.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  int sliderValue = 180;
  int _age = 23;
  int _weight = 70;
  bool isMaleSelected = false;
  bool isFemaleSelected = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     backgroundColor: AppColors.blueGrey,
      body: SafeArea(
          child: Padding(padding: const EdgeInsets.fromLTRB(16, 30, 16, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
                Text('BMI Calculator',
                  style: poppinsTextStyle.copyWith(
                      color: AppColors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                  ),),
                const SizedBox(height: 25,),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            if(!isMaleSelected){
                              isMaleSelected = true;
                              isFemaleSelected = false;
                            }
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
                          decoration: BoxDecoration(
                              color: isMaleSelected? AppColors.oceanBlue : AppColors.deepBlue ,
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.male, color: AppColors.white,),
                              SizedBox(width: 12,),
                              Text('Male',
                                style: poppinsTextStyle.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15
                                ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16,),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            if(!isFemaleSelected){
                              isFemaleSelected = true;
                              isMaleSelected = false;
                            }
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
                          decoration: BoxDecoration(
                              color: isFemaleSelected? AppColors.lightNude: AppColors.white,
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.female, color: AppColors.deepBlue,),
                              SizedBox(width: 12,),
                              Text('Female',
                                style: poppinsTextStyle.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: AppColors.deepBlue
                                ),)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 46,),
                Row(
                  children: [
                    Container(
                      height: 400,
                      padding: const EdgeInsets.fromLTRB(0, 8, 12, 8),
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RotatedBox(
                            quarterTurns: -1,
                            child: SliderTheme(
                              data: const SliderThemeData(
                                  trackHeight: 13
                              ),
                              child: Slider(
                                value: sliderValue.toDouble(),
                                onChanged: (double newValue){
                                  setState(() {
                                    sliderValue = newValue.round();
                                  });
                                },
                                max: 250,
                                min: 100,
                                divisions: null,
                                activeColor: AppColors.deepBlue,
                                inactiveColor: AppColors.blueGrey,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Height',
                                style: poppinsTextStyle.copyWith(
                                    color: AppColors.deepGrey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15
                                ),),
                              Text('$sliderValue',
                                style: poppinsTextStyle.copyWith(
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 64
                                ),)
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Expanded(
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Weight', style: poppinsTextStyle.copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.deepGrey
                                  ),),
                                  Text(_weight.toString(),style: poppinsTextStyle.copyWith(
                                      fontSize: 64,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.black
                                  ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      RoundIconButton(
                                          icon: const Icon(CupertinoIcons.minus, color: AppColors.white,),
                                          onPressed: (){
                                            setState(() {
                                              _weight--;
                                            });
                                          }
                                      ),
                                      RoundIconButton(
                                          icon: const Icon(CupertinoIcons.plus, color: AppColors.white,),
                                          onPressed: (){
                                            setState(() {
                                              _weight++;
                                            });
                                          }
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Age', style: poppinsTextStyle.copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.deepGrey
                                  ),),
                                  Text(_age.toString(),style: poppinsTextStyle.copyWith(
                                      fontSize: 64,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.black
                                  ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      RoundIconButton(
                                          icon: Icon(CupertinoIcons.minus, color: AppColors.white,),
                                          onPressed: (){
                                            setState(() {
                                              _age--;
                                            });
                                          }
                                      ),
                                      RoundIconButton(
                                          icon: Icon(CupertinoIcons.plus, color: AppColors.white,),
                                          onPressed: (){
                                            setState(() {
                                              _age++;
                                            });
                                          }
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                    )
                  ],
                ),
                const SizedBox(height: 36,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context,
                        RouteStrings.resultScreen);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.deepBlue
                    ),
                    child: Text("Let's Go", style: poppinsTextStyle.copyWith(
                        color: AppColors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400
                    ),
                      textAlign: TextAlign.center,),
                  ),
                ),
              ],
            ),
      ),
    ));
  }
}

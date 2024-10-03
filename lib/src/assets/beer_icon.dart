import 'package:flutter/material.dart';

class BeerIconPainter extends CustomPainter {
  final Color color;

  const BeerIconPainter({
    this.color = Colors.black,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(size.width * 0.9781717, size.height * 0.2132727)
      ..cubicTo(
        size.width * 0.9781717,
        size.height * 0.1287576,
        size.width * 0.9094141,
        size.height * 0.06000000,
        size.width * 0.8248990,
        size.height * 0.06000000,
      )
      ..cubicTo(
        size.width * 0.8102929,
        size.height * 0.06000000,
        size.width * 0.7918316,
        size.height * 0.06121212,
        size.width * 0.7738215,
        size.height * 0.06573737,
      )
      ..cubicTo(
        size.width * 0.7441852,
        size.height * 0.02596296,
        size.width * 0.6948855,
        0,
        size.width * 0.6449057,
        0,
      )
      ..cubicTo(
        size.width * 0.6123199,
        0,
        size.width * 0.5808620,
        size.height * 0.01040741,
        size.width * 0.5549057,
        size.height * 0.02924242,
      )
      ..cubicTo(
        size.width * 0.5289529,
        size.height * 0.01040741,
        size.width * 0.4974949,
        0,
        size.width * 0.4649125,
        0,
      )
      ..cubicTo(
        size.width * 0.4126195,
        0,
        size.width * 0.3647778,
        size.height * 0.02666667,
        size.width * 0.3368687,
        size.height * 0.06903367,
      )
      ..cubicTo(
        size.width * 0.3203333,
        size.height * 0.06307744,
        size.width * 0.3028047,
        size.height * 0.05999663,
        size.width * 0.2849192,
        size.height * 0.05999663,
      )
      ..cubicTo(
        size.width * 0.2004040,
        size.height * 0.05999663,
        size.width * 0.1316465,
        size.height * 0.1287576,
        size.width * 0.1316465,
        size.height * 0.2132694,
      )
      ..cubicTo(
        size.width * 0.1316465,
        size.height * 0.2826902,
        size.width * 0.1780539,
        size.height * 0.3414444,
        size.width * 0.2414646,
        size.height * 0.3602323,
      )
      ..lineTo(size.width * 0.2414646, size.height * 0.3843569)
      ..lineTo(size.width * 0.1649226, size.height * 0.3843569)
      ..cubicTo(
        size.width * 0.08602020,
        size.height * 0.3843569,
        size.width * 0.02182828,
        size.height * 0.4530303,
        size.width * 0.02182828,
        size.height * 0.5374377,
      )
      ..lineTo(size.width * 0.02182828, size.height * 0.6821953)
      ..cubicTo(
        size.width * 0.02182828,
        size.height * 0.7666027,
        size.width * 0.08602020,
        size.height * 0.8352727,
        size.width * 0.1649226,
        size.height * 0.8352727,
      )
      ..lineTo(size.width * 0.2414613, size.height * 0.8352727)
      ..lineTo(size.width * 0.2414613, size.height * 0.8469226)
      ..cubicTo(
        size.width * 0.2414613,
        size.height * 0.9313266,
        size.width * 0.3101313,
        size.height,
        size.width * 0.3945387,
        size.height,
      )
      ..lineTo(size.width * 0.7040236, size.height)
      ..cubicTo(
        size.width * 0.7884276,
        size.height,
        size.width * 0.8571010,
        size.height * 0.9313266,
        size.width * 0.8571010,
        size.height * 0.8469226,
      )
      ..lineTo(size.width * 0.8571010, size.height * 0.3631145)
      ..cubicTo(
        size.width * 0.9262020,
        size.height * 0.3482761,
        size.width * 0.9781717,
        size.height * 0.2867340,
        size.width * 0.9781717,
        size.height * 0.2132727,
      )
      ..close()
      ..moveTo(size.width * 0.1649226, size.height * 0.7687205)
      ..cubicTo(
        size.width * 0.1227172,
        size.height * 0.7687205,
        size.width * 0.08838384,
        size.height * 0.7299091,
        size.width * 0.08838384,
        size.height * 0.6821987,
      )
      ..lineTo(size.width * 0.08838384, size.height * 0.5374411)
      ..cubicTo(
        size.width * 0.08838384,
        size.height * 0.4897306,
        size.width * 0.1227172,
        size.height * 0.4509192,
        size.width * 0.1649226,
        size.height * 0.4509192,
      )
      ..lineTo(size.width * 0.2414613, size.height * 0.4509192)
      ..lineTo(size.width * 0.2414613, size.height * 0.7687239)
      ..lineTo(size.width * 0.1649226, size.height * 0.7687239)
      ..close()
      ..moveTo(size.width * 0.7040269, size.height * 0.9334444)
      ..lineTo(size.width * 0.3945421, size.height * 0.9334444)
      ..cubicTo(
        size.width * 0.3468316,
        size.height * 0.9334444,
        size.width * 0.3080202,
        size.height * 0.8946330,
        size.width * 0.3080202,
        size.height * 0.8469226,
      )
      ..lineTo(size.width * 0.3080202, size.height * 0.3647778)
      ..cubicTo(
        size.width * 0.3178754,
        size.height * 0.3632828,
        size.width * 0.3275320,
        size.height * 0.3608721,
        size.width * 0.3368687,
        size.height * 0.3575084,
      )
      ..cubicTo(
        size.width * 0.3647778,
        size.height * 0.3998721,
        size.width * 0.4126195,
        size.height * 0.4265455,
        size.width * 0.4649125,
        size.height * 0.4265455,
      )
      ..cubicTo(
        size.width * 0.5254512,
        size.height * 0.4265455,
        size.width * 0.5779091,
        size.height * 0.3912626,
        size.width * 0.6027946,
        size.height * 0.3401852,
      )
      ..cubicTo(
        size.width * 0.6336027,
        size.height * 0.3589832,
        size.width * 0.6716498,
        size.height * 0.3665455,
        size.width * 0.7049024,
        size.height * 0.3665455,
      )
      ..cubicTo(
        size.width * 0.7255690,
        size.height * 0.3665455,
        size.width * 0.7459966,
        size.height * 0.3623502,
        size.width * 0.7648990,
        size.height * 0.3543064,
      )
      ..cubicTo(
        size.width * 0.7731852,
        size.height * 0.3578350,
        size.width * 0.7817778,
        size.height * 0.3605724,
        size.width * 0.7905455,
        size.height * 0.3625926,
      )
      ..lineTo(size.width * 0.7905455, size.height * 0.8469259)
      ..cubicTo(
        size.width * 0.7905488,
        size.height * 0.8946330,
        size.width * 0.7517374,
        size.height * 0.9334444,
        size.width * 0.7040269,
        size.height * 0.9334444,
      )
      ..close()
      ..moveTo(size.width * 0.8248956, size.height * 0.2999899)
      ..cubicTo(
        size.width * 0.8096768,
        size.height * 0.2999899,
        size.width * 0.7946970,
        size.height * 0.2959731,
        size.width * 0.7815724,
        size.height * 0.2883737,
      )
      ..cubicTo(
        size.width * 0.7712559,
        size.height * 0.2824040,
        size.width * 0.7585421,
        size.height * 0.2824040,
        size.width * 0.7482290,
        size.height * 0.2883737,
      )
      ..cubicTo(
        size.width * 0.7351010,
        size.height * 0.2959731,
        size.width * 0.7201178,
        size.height * 0.2999899,
        size.width * 0.7049057,
        size.height * 0.2999899,
      )
      ..cubicTo(
        size.width * 0.6693670,
        size.height * 0.2999899,
        size.width * 0.6278620,
        size.height * 0.2874882,
        size.width * 0.6152290,
        size.height * 0.2595589,
      )
      ..cubicTo(
        size.width * 0.6087710,
        size.height * 0.2452761,
        size.width * 0.5932256,
        size.height * 0.2374242,
        size.width * 0.5778956,
        size.height * 0.2407407,
      )
      ..cubicTo(
        size.width * 0.5625724,
        size.height * 0.2440404,
        size.width * 0.5516296,
        size.height * 0.2575926,
        size.width * 0.5516296,
        size.height * 0.2732694,
      )
      ..cubicTo(
        size.width * 0.5516296,
        size.height * 0.3210842,
        size.width * 0.5127273,
        size.height * 0.3599865,
        size.width * 0.4649125,
        size.height * 0.3599865,
      )
      ..cubicTo(
        size.width * 0.4281347,
        size.height * 0.3599865,
        size.width * 0.3952492,
        size.height * 0.3366734,
        size.width * 0.3830774,
        size.height * 0.3019764,
      )
      ..cubicTo(
        size.width * 0.3796667,
        size.height * 0.2922593,
        size.width * 0.3719562,
        size.height * 0.2846667,
        size.width * 0.3621852,
        size.height * 0.2814175,
      )
      ..cubicTo(
        size.width * 0.3587542,
        size.height * 0.2802727,
        size.width * 0.3552088,
        size.height * 0.2797138,
        size.width * 0.3516801,
        size.height * 0.2797138,
      )
      ..cubicTo(
        size.width * 0.3451549,
        size.height * 0.2797138,
        size.width * 0.3386902,
        size.height * 0.2816296,
        size.width * 0.3331380,
        size.height * 0.2853569,
      )
      ..cubicTo(
        size.width * 0.3188620,
        size.height * 0.2949293,
        size.width * 0.3021886,
        size.height * 0.2999933,
        size.width * 0.2849192,
        size.height * 0.2999933,
      )
      ..cubicTo(
        size.width * 0.2371010,
        size.height * 0.2999933,
        size.width * 0.1982020,
        size.height * 0.2610909,
        size.width * 0.1982020,
        size.height * 0.2132761,
      )
      ..cubicTo(
        size.width * 0.1982020,
        size.height * 0.1654579,
        size.width * 0.2371010,
        size.height * 0.1265556,
        size.width * 0.2849192,
        size.height * 0.1265556,
      )
      ..cubicTo(
        size.width * 0.3021919,
        size.height * 0.1265556,
        size.width * 0.3188620,
        size.height * 0.1316162,
        size.width * 0.3331347,
        size.height * 0.1411953,
      )
      ..cubicTo(
        size.width * 0.3416869,
        size.height * 0.1469293,
        size.width * 0.3524074,
        size.height * 0.1483872,
        size.width * 0.3621852,
        size.height * 0.1451347,
      )
      ..cubicTo(
        size.width * 0.3719529,
        size.height * 0.1418822,
        size.width * 0.3796667,
        size.height * 0.1342896,
        size.width * 0.3830774,
        size.height * 0.1245758,
      )
      ..cubicTo(
        size.width * 0.3952458,
        size.height * 0.08987542,
        size.width * 0.4281347,
        size.height * 0.06656229,
        size.width * 0.4649125,
        size.height * 0.06656229,
      )
      ..cubicTo(
        size.width * 0.4897643,
        size.height * 0.06656229,
        size.width * 0.5134680,
        size.height * 0.07727946,
        size.width * 0.5299529,
        size.height * 0.09596296,
      )
      ..cubicTo(
        size.width * 0.5362694,
        size.height * 0.1031246,
        size.width * 0.5453569,
        size.height * 0.1072290,
        size.width * 0.5549057,
        size.height * 0.1072290,
      )
      ..cubicTo(
        size.width * 0.5644545,
        size.height * 0.1072290,
        size.width * 0.5735421,
        size.height * 0.1031246,
        size.width * 0.5798620,
        size.height * 0.09596296,
      )
      ..cubicTo(
        size.width * 0.5963468,
        size.height * 0.07727609,
        size.width * 0.6200539,
        size.height * 0.06656229,
        size.width * 0.6449024,
        size.height * 0.06656229,
      )
      ..cubicTo(
        size.width * 0.6791279,
        size.height * 0.06656229,
        size.width * 0.7153939,
        size.height * 0.08968687,
        size.width * 0.7292559,
        size.height * 0.1203535,
      )
      ..cubicTo(
        size.width * 0.7331347,
        size.height * 0.1289226,
        size.width * 0.7404512,
        size.height * 0.1354512,
        size.width * 0.7494040,
        size.height * 0.1383266,
      )
      ..cubicTo(
        size.width * 0.7583603,
        size.height * 0.1411953,
        size.width * 0.7681145,
        size.height * 0.1401549,
        size.width * 0.7762525,
        size.height * 0.1354444,
      )
      ..cubicTo(
        size.width * 0.7858620,
        size.height * 0.1298822,
        size.width * 0.8040471,
        size.height * 0.1265556,
        size.width * 0.8248923,
        size.height * 0.1265556,
      )
      ..cubicTo(
        size.width * 0.8727104,
        size.height * 0.1265556,
        size.width * 0.9116128,
        size.height * 0.1654579,
        size.width * 0.9116128,
        size.height * 0.2132761,
      )
      ..cubicTo(
        size.width * 0.9116162,
        size.height * 0.2610875,
        size.width * 0.8727138,
        size.height * 0.2999899,
        size.width * 0.8248956,
        size.height * 0.2999899,
      )
      ..close()
      ..moveTo(size.width * 0.6865522, size.height * 0.4392694)
      ..cubicTo(
        size.width * 0.6681751,
        size.height * 0.4392694,
        size.width * 0.6532761,
        size.height * 0.4541717,
        size.width * 0.6532761,
        size.height * 0.4725455,
      )
      ..lineTo(size.width * 0.6532761, size.height * 0.8020000)
      ..cubicTo(
        size.width * 0.6532761,
        size.height * 0.8203771,
        size.width * 0.6681751,
        size.height * 0.8352761,
        size.width * 0.6865522,
        size.height * 0.8352761,
      )
      ..cubicTo(
        size.width * 0.7049327,
        size.height * 0.8352761,
        size.width * 0.7198316,
        size.height * 0.8203771,
        size.width * 0.7198316,
        size.height * 0.8020000,
      )
      ..lineTo(size.width * 0.7198316, size.height * 0.4725455)
      ..cubicTo(
        size.width * 0.7198316,
        size.height * 0.4541717,
        size.width * 0.7049327,
        size.height * 0.4392694,
        size.width * 0.6865522,
        size.height * 0.4392694,
      )
      ..close()
      ..moveTo(size.width * 0.5492828, size.height * 0.4392694)
      ..cubicTo(
        size.width * 0.5309057,
        size.height * 0.4392694,
        size.width * 0.5160067,
        size.height * 0.4541717,
        size.width * 0.5160067,
        size.height * 0.4725455,
      )
      ..lineTo(size.width * 0.5160067, size.height * 0.8020000)
      ..cubicTo(
        size.width * 0.5160067,
        size.height * 0.8203771,
        size.width * 0.5309057,
        size.height * 0.8352761,
        size.width * 0.5492828,
        size.height * 0.8352761,
      )
      ..cubicTo(
        size.width * 0.5676633,
        size.height * 0.8352761,
        size.width * 0.5825623,
        size.height * 0.8203771,
        size.width * 0.5825623,
        size.height * 0.8020000,
      )
      ..lineTo(size.width * 0.5825623, size.height * 0.4725455)
      ..cubicTo(
        size.width * 0.5825589,
        size.height * 0.4541717,
        size.width * 0.5676633,
        size.height * 0.4392694,
        size.width * 0.5492828,
        size.height * 0.4392694,
      )
      ..close()
      ..moveTo(size.width * 0.4120101, size.height * 0.4392694)
      ..cubicTo(
        size.width * 0.3936330,
        size.height * 0.4392694,
        size.width * 0.3787340,
        size.height * 0.4541717,
        size.width * 0.3787340,
        size.height * 0.4725455,
      )
      ..lineTo(size.width * 0.3787340, size.height * 0.8020000)
      ..cubicTo(
        size.width * 0.3787340,
        size.height * 0.8203771,
        size.width * 0.3936330,
        size.height * 0.8352761,
        size.width * 0.4120101,
        size.height * 0.8352761,
      )
      ..cubicTo(
        size.width * 0.4303906,
        size.height * 0.8352761,
        size.width * 0.4452896,
        size.height * 0.8203771,
        size.width * 0.4452896,
        size.height * 0.8020000,
      )
      ..lineTo(size.width * 0.4452896, size.height * 0.4725455)
      ..cubicTo(
        size.width * 0.4452896,
        size.height * 0.4541717,
        size.width * 0.4303906,
        size.height * 0.4392694,
        size.width * 0.4120101,
        size.height * 0.4392694,
      )
      ..close();

    final paintFill = Paint()
      ..style = PaintingStyle.fill
      ..color = color;
    canvas.drawPath(path, paintFill);
  }

  @override
  bool shouldRepaint(covariant BeerIconPainter oldDelegate) {
    return true;
  }
}

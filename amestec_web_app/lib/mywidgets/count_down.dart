import 'package:flutter/material.dart';

class CountDownTimer extends StatefulWidget {
  const CountDownTimer({
    Key? key,
    required this.secondsRemaining,
    required this.whenTimeExpires,
    this.countDownFormatter,
    this.countDownTimerStyle,
  }) : super(key: key);

  final int secondsRemaining;
  final VoidCallback whenTimeExpires;
  final TextStyle? countDownTimerStyle;
  final Function(int seconds)? countDownFormatter;

  @override
  State createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<CountDownTimer>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Duration duration;

  List<Widget> get timerDisplayString {
    final dateNow = DateTime.now();
    final festivalDate = DateTime(2023, 7, 18);
    final duration = festivalDate.difference(dateNow);

    final days = duration.inDays.truncate();
    final hours = (duration.inHours - duration.inDays * 24).truncate();
    final minutes =
        (duration.inMinutes - duration.inDays * 24 * 60 - hours * 60)
            .truncate();
    final seconds =
        (duration.inSeconds - minutes * 60 - hours * 360 - days * 360 * 24)
            .truncate();

    final hoursStr = (hours).toString().padLeft(2, '0');
    final minutesStr = (minutes).toString().padLeft(2, '0');
    final secondsStr = (seconds % 60).toString().padLeft(2, '0');
    final daysStr = (days).toString();

    return [
      Text(
        '$daysStr zile ',
        style: widget.countDownTimerStyle,
      ),
      Text(
        '$hoursStr ore ',
        style: widget.countDownTimerStyle,
      ),
      Text(
        '$minutesStr minute  ',
        style: widget.countDownTimerStyle,
      ),
      Text(
        '$secondsStr secunde ',
        style: widget.countDownTimerStyle,
      ),
    ];
    //return '$daysStr zile  : $hoursStr ore  : $minutesStr minute  : $secondsStr secunde';
  }

  @override
  void initState() {
    super.initState();
    duration = Duration(seconds: widget.secondsRemaining);
    _controller = AnimationController(
      vsync: this,
      duration: duration,
    );
    _controller
      ..reverse(from: widget.secondsRemaining.toDouble())
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed ||
            status == AnimationStatus.dismissed) {
          widget.whenTimeExpires();
        }
      });
  }

  @override
  void didUpdateWidget(CountDownTimer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.secondsRemaining != oldWidget.secondsRemaining) {
      setState(() {
        duration = Duration(seconds: widget.secondsRemaining);
        _controller.dispose();
        _controller = AnimationController(
          vsync: this,
          duration: duration,
        );
        _controller
          ..reverse(from: widget.secondsRemaining.toDouble())
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              widget.whenTimeExpires();
            }
          });
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (_, Widget? child) {
          return Row(
            children: timerDisplayString,
          );
        },
      ),
    );
  }
}

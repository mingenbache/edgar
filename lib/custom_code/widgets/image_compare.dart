// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/cupertino.dart';

import 'package:image_compare_slider/image_compare_slider.dart';

class ImageCompare extends StatefulWidget {
  const ImageCompare({
    Key? key,
    this.width,
    this.height,
    this.image1,
    this.image2,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? image1;
  final String? image2;

  @override
  _ImageCompareState createState() => _ImageCompareState();
}

class _ImageCompareState extends State<ImageCompare> {
  SliderDirection direction = SliderDirection.leftToRight;
  Color dividerColor = Colors.white;
  double dividerWidth = 2;
  bool reactOnHover = false;
  bool hideHandle = false;
  double position = 0.5;
  double handlePosition = 0.5;
  double handleSizeHeight = 75;
  double handleSizeWidth = 7.5;
  bool handleFollowsP = false;
  bool fillHandle = true;
  double handleRadius = 10;
  Color? itemOneColor;
  Color? itemTwoColor;
  BlendMode itemOneBlendMode = BlendMode.overlay;
  BlendMode itemTwoBlendMode = BlendMode.darken;
  Widget Function(Widget)? itemOneWrapper;
  Widget Function(Widget)? itemTwoWrapper;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Last Arrangements',
                style: TextStyle(color: Colors.white, fontSize: 30)),
            const Text(
              'Miriam Raya',
              style: TextStyle(color: Colors.blueAccent, fontSize: 15),
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                clipBehavior: Clip.hardEdge,
                child: ImageCompareSlider(
                  itemOne: Image.asset(
                    'https://66.media.tumblr.com/6fb397d822f4f9f4596dff2085b18f2e/tumblr_nzsvb4p6xS1qho82wo1_1280.jpg',
                    colorBlendMode: itemOneBlendMode,
                    color: itemOneColor,
                  ),
                  itemTwo: Image.asset(
                    'https://66.media.tumblr.com/8b69cdde47aa952e4176b4200052abf4/tumblr_o51p7mFFF21qho82wo1_1280.jpg',
                    colorBlendMode: itemTwoBlendMode,
                    color: itemTwoColor,
                  ),

                  /* Optional */
                  changePositionOnHover: reactOnHover,
                  direction: direction,
                  dividerColor: dividerColor,
                  dividerWidth: dividerWidth,
                  position: position,
                  onPositionChange: (p) => setState(() => position = p),
                  hideHandle: hideHandle,
                  handlePosition: handlePosition,
                  fillHandle: fillHandle,
                  handleSize: Size(handleSizeWidth, handleSizeHeight),
                  handleRadius: BorderRadius.all(Radius.circular(handleRadius)),
                  itemOneBuilder: (child) =>
                      itemOneWrapper?.call(child) ?? child,
                  itemTwoBuilder: (child) =>
                      itemTwoWrapper?.call(child) ?? child,
                  handleFollowsPosition: handleFollowsP,
                ),
              ),
            ),
            const SizedBox(height: 10),
            slider('Position: ${position.toStringAsFixed(2)}', position, (v) {
              setState(() => position = v);
            }),
            Center(
              child: switcher('React on hover', reactOnHover, (v) {
                setState(() => reactOnHover = v);
              }),
            ),
            _DividerWithText(
              text: 'Divider',
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        slider('Width: ${dividerWidth.toStringAsFixed(2)}',
                            dividerWidth, (v) {
                          setState(() => dividerWidth = v);
                        }, max: 25, min: 0),
                        slider(
                          'R',
                          dividerColor.red.toDouble(),
                          (v) => setState(() =>
                              dividerColor = dividerColor.withRed(v.toInt())),
                          max: 255,
                          min: 0,
                        ),
                        slider(
                          'G',
                          dividerColor.green.toDouble(),
                          (v) => setState(() =>
                              dividerColor = dividerColor.withGreen(v.toInt())),
                          max: 255,
                          min: 0,
                        ),
                        slider(
                          'B',
                          dividerColor.blue.toDouble(),
                          (v) => setState(() =>
                              dividerColor = dividerColor.withBlue(v.toInt())),
                          max: 255,
                          min: 0,
                        ),
                        slider(
                          'A',
                          dividerColor.opacity,
                          (v) => setState(
                              () => dividerColor = dividerColor.withOpacity(v)),
                          max: 1,
                          min: 0,
                        ),
                      ],
                    ),
                    const Spacer(),
                    directionArrow(),
                    const Spacer(),
                  ],
                ),
              ],
            ),
            _DividerWithText(
              text: 'Handle',
              children: [
                switcher('Hide handle', hideHandle, (v) {
                  setState(() => hideHandle = v);
                }),
                switcher('Fill handle', fillHandle, (v) {
                  setState(() => fillHandle = v);
                }),
                switcher('Follows position', handleFollowsP, (v) {
                  setState(() => handleFollowsP = v);
                }),
                slider('Position: ${handlePosition.toStringAsFixed(2)}',
                    handlePosition, (v) {
                  setState(() => handlePosition = v);
                }),
                slider(
                    'Radius: ${handleRadius.toStringAsFixed(2)}', handleRadius,
                    (v) {
                  setState(() => handleRadius = v);
                }, max: 50, min: 0),
                slider('Size H: ${handleSizeHeight.toStringAsFixed(2)}',
                    handleSizeHeight, (v) {
                  setState(() => handleSizeHeight = v);
                }, max: 100, min: 0),
                slider('Size W: ${handleSizeWidth.toStringAsFixed(2)}',
                    handleSizeWidth, (v) {
                  setState(() => handleSizeWidth = v);
                }, max: 100, min: -50),
              ],
            ),
            _DividerWithText(
              text: 'Items',
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        slider(
                          'R',
                          itemOneColor?.red.toDouble() ?? 0,
                          (v) => setState(() => itemOneColor =
                              itemOneColor?.withRed(v.toInt()) ?? Colors.white),
                          max: 255,
                          min: 0,
                        ),
                        slider(
                          'G',
                          itemOneColor?.green.toDouble() ?? 0,
                          (v) => setState(() => itemOneColor =
                              itemOneColor?.withGreen(v.toInt()) ??
                                  Colors.white),
                          max: 255,
                          min: 0,
                        ),
                        slider(
                          'B',
                          itemOneColor?.blue.toDouble() ?? 0,
                          (v) => setState(() => itemOneColor =
                              itemOneColor?.withBlue(v.toInt()) ??
                                  Colors.white),
                          max: 255,
                          min: 0,
                        ),
                        slider(
                          'A',
                          itemOneColor?.opacity.toDouble() ?? 0,
                          (v) => setState(() => itemOneColor =
                              itemOneColor?.withOpacity(v) ?? Colors.white),
                          max: 1,
                          min: 0,
                        ),
                        PopupMenuButton<BlendMode>(
                          color: Colors.grey.shade800,
                          child: Row(
                            children: [
                              text('Blend mode: '),
                              text(itemOneBlendMode.toString().split('.').last),
                            ],
                          ),
                          onSelected: (v) =>
                              setState(() => itemOneBlendMode = v),
                          itemBuilder: (context) => BlendMode.values
                              .map(
                                (e) => PopupMenuItem(
                                  value: e,
                                  child: text(e.toString().split('.')[1]),
                                ),
                              )
                              .toList(),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                    Column(
                      children: [
                        slider(
                          'R',
                          itemTwoColor?.red.toDouble() ?? 0,
                          (v) => setState(() => itemTwoColor =
                              itemTwoColor?.withRed(v.toInt()) ?? Colors.white),
                          max: 255,
                          min: 0,
                        ),
                        slider(
                          'G',
                          itemTwoColor?.green.toDouble() ?? 0,
                          (v) => setState(() => itemTwoColor =
                              itemTwoColor?.withGreen(v.toInt()) ??
                                  Colors.white),
                          max: 255,
                          min: 0,
                        ),
                        slider(
                          'B',
                          itemTwoColor?.blue.toDouble() ?? 0,
                          (v) => setState(() => itemTwoColor =
                              itemTwoColor?.withBlue(v.toInt()) ??
                                  Colors.white),
                          max: 255,
                          min: 0,
                        ),
                        slider(
                          'A',
                          itemTwoColor?.opacity.toDouble() ?? 0,
                          (v) => setState(() => itemTwoColor =
                              itemTwoColor?.withOpacity(v) ?? Colors.white),
                          max: 1,
                          min: 0,
                        ),
                        PopupMenuButton<BlendMode>(
                          color: Colors.grey.shade800,
                          child: Row(
                            children: [
                              text('Blend mode: '),
                              text(itemTwoBlendMode.toString().split('.').last),
                            ],
                          ),
                          onSelected: (v) =>
                              setState(() => itemTwoBlendMode = v),
                          itemBuilder: (context) => BlendMode.values
                              .map(
                                (e) => PopupMenuItem(
                                  value: e,
                                  child: text(e.toString().split('.')[1]),
                                ),
                              )
                              .toList(),
                        ),
                        const SizedBox(height: 10),
                        switcher('Add Color Filter', itemTwoWrapper != null,
                            (v) {
                          setState(
                            () => itemTwoWrapper = v
                                ? (child) => ColorFiltered(
                                      colorFilter: const ColorFilter.mode(
                                          Colors.red, BlendMode.color),
                                      child: child,
                                    )
                                : null,
                          );
                        }),
                      ],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 100)
          ],
        ),
      ),

      /*
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade900,
        child: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            '© 2022 Miriam Raya\nConcept by: Lynn Chen',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),*/
    );
  }

  Widget slider(String title, double value, Function(double) onChanged,
      {double max = 1, double min = 0}) {
    return Row(
      children: [
        text(title),
        const SizedBox(width: 5),
        SizedBox(
          //width: 100,
          child: CupertinoSlider(
            value: value,
            max: max,
            min: min,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }

  Widget switcher(String title, bool value, Function(bool) onChanged) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        text(title),
        const SizedBox(width: 10),
        SizedBox(
          child: CupertinoSwitch(
            value: value,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }

  Widget text(String text) {
    return Text(text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ));
  }

  Widget directionArrow() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        SliderDirection.values.length,
        (index) {
          final dir = SliderDirection.values[index];
          late IconData icon;

          switch (dir) {
            case SliderDirection.leftToRight:
              icon = Icons.arrow_forward;
              break;
            case SliderDirection.rightToLeft:
              icon = Icons.arrow_back;
              break;
            case SliderDirection.topToBottom:
              icon = Icons.arrow_downward;
              break;
            case SliderDirection.bottomToTop:
              icon = Icons.arrow_upward;
              break;
          }
          return IconButton(
            icon: Icon(
              icon,
              color: dir == direction ? Colors.blueAccent : Colors.white,
            ),
            onPressed: () => setState(() => direction = dir),
          );
        },
      ),
    );
  }
}

class _DividerWithText extends StatefulWidget {
  const _DividerWithText({
    required this.text,
    required this.children,
  });

  final String text;
  final List<Widget> children;

  @override
  State<_DividerWithText> createState() => _DividerWithTextState();
}

class _DividerWithTextState extends State<_DividerWithText> {
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CupertinoButton(
          padding: const EdgeInsets.all(0),
          onPressed: () => setState(() => show = !show),
          child: Row(children: [
            const Expanded(child: Divider(color: Colors.white)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                widget.text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Expanded(child: Divider(color: Colors.white)),
          ]),
        ),
        if (show) ...widget.children,
      ],
    );
  }
}

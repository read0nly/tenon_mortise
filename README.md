# tenon_mortise

Easily build your Widgets, Avoid parenthesis nesting, easy to build UI, A little like swift-ui.

## Getting Started

## Usage

To use this plugin, add `tenon_mortise` as
a [dependency in your pubspec.yaml file](https://flutter.dev/platform-plugins/).

### Example

<?code-excerpt "basic.dart (basic-example)"?>

``` dart
    import 'package:tenon_mortise/tenon_mortise.dart';

 [
          ["row Item1 ".toText(), 20.inRow, "row item 2".toText()].toRow(),
          20.inColumn,
          [
            "row Item1".toText().applyContainer(color: Colors.red),
            "row item 2".toText().applyContainer(color: Colors.green),
            "row item 2"
                .toText()
                .applyContainer(color: Colors.tealAccent)
                .expanded,
          ].toRow(),
          20.inColumn,
          [const Icon(Icons.info), 10.inColumn, "column test ".toText()]
              .toColumn(),
          20.inColumn,
          "aligment left".toText().applyAlign(alignment: Alignment.centerLeft),
          "aligment right"
              .toText()
              .applyAlign(alignment: Alignment.centerRight),
          20.inColumn,
          [
            "GridItem1"
                .toText()
                .applyContainer(color: Colors.tealAccent)
                .applyRadiusAll(10),
            "GridItem2".toText().applyContainer(color: Colors.red).applyRadius(
                borderRadius:
                    const BorderRadius.only(topLeft: Radius.circular(10))),
            "GridItem3".toText().applyContainer(color: Colors.green),
            "GridItem4".toText().applyContainer(color: Colors.blue),
            "GridItem5".toText().applyContainer(color: Colors.yellow),
          ]
              .toGridView(
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 4,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
              )
              .applySizeBox(
                height: 100,
                width: double.infinity,
              ),
          20.inColumn,
          [
            "Wrap1 opacity:0.5"
                .toText()
                .applyContainer(color: Colors.tealAccent, width: 120)
                .applyOpacity(opacity: 0.5),
            "Wrap2 opacity:0.8"
                .toText()
                .applyContainer(color: Colors.red, width: 130)
                .applyOpacity(opacity: 0.8),
            "Wrap3".toText().applyContainer(color: Colors.green, width: 100),
            "Wrap4".toText().applyContainer(color: Colors.blue, width: 100),
            "Wrap5".toText().applyContainer(color: Colors.yellow, width: 100),
            "Wrap6".toText().applyContainer(color: Colors.yellow, width: 100),
            "Wrap7".toText().applyContainer(color: Colors.yellow, width: 100),
          ].toWrap(),
          [
            Switch(
                value: flag1,
                onChanged: (value) {
                  setState(() {
                    flag1 = value;
                  });
                }),
            flag1.toWidget(
              builder: () =>
                  "flag 1 to widget".toText().applyColor(color: Colors.red),
            ),
            20.inRow,
            "flag 1 to widget where flag ==false".toText().where(flag1 == false)
          ].toRow(),
          20.inColumn,
          [
            "inkwell:true click".toText().onClick(
                  inkWell: true,
                  click: () {
                    print("inkwell:true click");
                  },
                ),
            "inkwell:false click".toText().onClick(
                  inkWell: false,
                  click: () {
                    print("inkwell:false click");
                  },
                ),
          ].toRow(mainAxisAlignment: MainAxisAlignment.spaceEvenly),
          20.inColumn,
          [
            "applyInkWell".toText().applyInkWell(
              onTap: () {
                print("applyInkWell");
              },
            ),
            "applyGestureDetector".toText().applyGestureDetector(
              onTap: () {
                print("applyGestureDetector");
              },
            ),
          ].toRow(mainAxisAlignment: MainAxisAlignment.spaceEvenly)
        ].toListView(),
```

See the example app for more complex examples.


![demo](https://github.com/read0nly/tenon_mortise/blob/main/demo.png)

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/), a specialized package that includes
platform-specific implementation code for Android and/or iOS.

For help getting started with Flutter development, view the
[online documentation](https://flutter.dev/docs), which offers tutorials, samples, guidance on
mobile development, and a full API reference.


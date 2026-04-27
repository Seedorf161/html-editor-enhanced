import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:html_editor_enhanced/html_editor.dart';

void main() => runApp(HtmlEditorExampleApp());

class HtmlEditorExampleApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      home: HtmlEditorExample(title: 'Flutter HTML Editor Example'),
    );
  }
}

class HtmlEditorExample extends StatefulWidget {
  HtmlEditorExample({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HtmlEditorExampleState createState() => _HtmlEditorExampleState();
}

class _HtmlEditorExampleState extends State<HtmlEditorExample> {
  String result = '';
  final HtmlEditorController controller = HtmlEditorController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                if (kIsWeb) {
                  controller.reloadWeb();
                } else {
                  controller.editorController!.reload();
                }
              })
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     controller.toggleCodeView();
      //   },
      //   child: Text(r'<\>',
      //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
      // ),
      body: HtmlEditor(
        controller: controller,
        callbacks: Callbacks(
          onChangeContent: (content) {},
        ),
        htmlEditorOptions: HtmlEditorOptions(
          initialText: "<b>This is your product instructions</b>",
          darkMode: true,
          cursorColor: Colors.red,
        ),
        htmlToolbarOptions: HtmlToolbarOptions(
          iconSize: 18,
          buttonSpacing:
              5, // Sets the space between buttons in the same section!
          buttonBorderRadius: BorderRadius.circular(
              8), // Sets the hover/splash and selected radius!
          buttonSelectedColor: Colors.red,
          buttonFillColor: Colors.green,
          buttonColor: Colors.blue,
          separatorWidget: VerticalDivider(
            color: Colors.grey,
            indent: 2,
            endIndent: 2,
            // thickness: 1,
            // width: 1,
          ),
          toolbarPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          toolbarBoxDecoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            color: Colors.grey.shade900, // Background color
            border: Border(
              bottom: BorderSide(
                color: Colors.red, // Separator border color
                width: 1.0,
              ),
            ),
          ),
          mediaUploadInterceptor: (file, type) {
            if (type == InsertFileType.image) {
              final base64Data = base64Encode(file.bytes!);
              final html =
                  '<img src="data:image/${file.extension};base64,$base64Data" data-filename="${file.name}" style="display:block;margin-left:auto;margin-right:auto;max-width:100%;height:auto">';
              controller.insertHtml(html);
              return false;
            }
            return true;
          },
          mediaLinkInsertInterceptor: (path, type) {
            if (type == InsertFileType.image) {
              final html =
                  '<img src="$path" style="display:block;margin-left:auto;margin-right:auto;max-width:100%;height:auto">';
              controller.insertHtml(html);
              return false;
            }
            return true;
          },
          defaultToolbarButtons: const [
            FontButtons(
              clearAll: false,
              strikethrough: false,
              superscript: false,
              subscript: false,
            ),
            ParagraphButtons(
                decreaseIndent: false,
                increaseIndent: false,
                caseConverter: false,
                textDirection: false,
                lineHeight: false,
                alignJustify: false),
            ListButtons(listStyles: false),
            InsertButtons(audio: false, video: false, hr: false)
          ],
        ),
        otherOptions: OtherOptions(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}

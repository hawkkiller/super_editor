import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:super_editor/super_editor.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late final document = MutableDocument(nodes: [
    ParagraphNode(id: Editor.createNodeId(), text: AttributedText('A')),
    ParagraphNode(id: Editor.createNodeId(), text: AttributedText('B')),
    ParagraphNode(id: Editor.createNodeId(), text: AttributedText('C')),
    ParagraphNode(id: Editor.createNodeId(), text: AttributedText('D')),
    ParagraphNode(id: Editor.createNodeId(), text: AttributedText('E')),
    ParagraphNode(id: Editor.createNodeId(), text: AttributedText('F')),
    ParagraphNode(id: Editor.createNodeId(), text: AttributedText('G')),
  ]);
  late final composer = MutableDocumentComposer();
  late final documentEditor = createDefaultDocumentEditor(document: document, composer: composer);
  late final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    initAllLogs(Level.ALL);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            SizedBox(
              height: 300,
              child: SuperEditor(
                editor: documentEditor,
                document: document,
                composer: composer,
              ),
            ),
            ColoredBox(
              color: Colors.black,
              child: SizedBox(
                height: 300,
                width: 300,
              ),
            ),
            ColoredBox(
              color: Colors.orange,
              child: SizedBox(
                height: 300,
                width: 300,
              ),
            ),
            ColoredBox(
              color: Colors.black,
              child: SizedBox(
                height: 300,
                width: 300,
              ),
            ),
            ColoredBox(
              color: Colors.orange,
              child: SizedBox(
                height: 300,
                width: 300,
              ),
            ),
            ColoredBox(
              color: Colors.black,
              child: SizedBox(
                height: 300,
                width: 300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

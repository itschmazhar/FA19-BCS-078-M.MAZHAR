import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:file_picker/file_picker.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

String uri;
void passurl(final URL) {
  uri = URL['url'];
}

class projectlist extends StatefulWidget {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  _projectlistState createState() => _projectlistState();
}

class _projectlistState extends State<projectlist> {
  FirebaseStorage storage = FirebaseStorage.instance;

  Future<List<Map<String, dynamic>>> _loadPDF() async {
    List<Map<String, dynamic>> files = [];

    final ListResult result = await storage.ref().list();
    final List<Reference> allFiles = result.items;

    await Future.forEach<Reference>(allFiles, (file) async {
      final String fileUrl = await file.getDownloadURL();
      final FullMetadata fileMeta = await file.getMetadata();
      files.add({
        "url": fileUrl,
        "path": file.fullPath,
        "uploaded_project": fileMeta.customMetadata['uploaded_project'],
        "description_project": fileMeta.customMetadata['description_project']
      });
    });

    return files;
  }

  Future<void> _delete(String ref) async {
    await storage.ref(ref).delete();
    // Rebuild the UI
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepPurple,
        title: new Text("View Projects"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: _loadPDF(),
                builder: (context,
                    AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        final PDF = snapshot.data[index];
                        return Card(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: ListTile(
                            dense: false,
                            leading: Image.asset('assets/img/12.png',
                                width: 50.0, height: 50.0),
                            title: Text(PDF['uploaded_project'] ?? 'File'),
                            subtitle: Text(
                                PDF['description_project'] ?? 'Description'),
                            trailing: IconButton(
                              onPressed: () {
                                setState(() {
                                  passurl(snapshot.data[index]);
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) => pdfopen()));
                                });
                              },
                              icon: Icon(
                                Icons.table_view_sharp,
                                color: Colors.deepPurpleAccent,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }

                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class pdfopen extends StatefulWidget {
  const pdfopen({Key key}) : super(key: key);

  @override
  _pdfopenState createState() => _pdfopenState();
}

class _pdfopenState extends State<pdfopen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child:
                SfPdfViewer.network(uri, enableDocumentLinkAnnotation: false)));
  }
}

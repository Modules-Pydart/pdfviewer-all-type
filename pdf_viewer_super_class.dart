

class GridViewModule extends StatelessWidget {
  GridViewModule({super.key});

  // This url is test
  // TODO : provide your file url
  String fileUrl = "https://www.orimi.com/pdf-test.pdf";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("PDF View"),
          foregroundColor: Colors.black,
          backgroundColor: Colors.red,
        ),
        body: PDF(
          // TODO : Change these option
          onPageChanged: (page, total) {
            // print(page  / total)
          },
          onViewCreated: (controller) {
            // print view created
          },
          onError: (error) {
            // print error with exception
          },

          enableSwipe: true,
          swipeHorizontal: false,

          // Can load with 3 method
          // TODO : Change these option
          // from internet
        ).cachedFromUrl(fileUrl)

        // from file
        // ).fromPath("internal storage path"));

        // from assets
        // ).fromAsset("assets/....")

        );
  }
}

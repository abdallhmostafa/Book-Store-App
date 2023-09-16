import 'package:booka/core/components/custom_button.dart';
import 'package:booka/core/utilities/function/lunch_url.dart';
import 'package:booka/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;

  // Future<void> _launchUrl() async {
  //   Uri url = Uri.parse(bookModel.volumeInfo!.previewLink!);
  //   if (await canLaunchUrl(url)) {
  //     await launchUrl(url);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: CustomButton(
          backgroundColor: Colors.white,
          color: Colors.black,
          text: 'Free',
          onPressed: () {},
          isLeft: true,
        )),
        Expanded(
            child: CustomButton(
          fontSize: 16.0,
          backgroundColor: const Color(0xffEF8262),
          color: Colors.white,
          text: getText(bookModel),
          onPressed: ()  {
             launchCustomUrl(context: context, url: bookModel.volumeInfo!.previewLink!);
          },
          isLeft: false,
        ))
      ],
    );
  }
}

String getText(BookModel bookModel) {
  if (bookModel.volumeInfo!.previewLink == null) {
    return "Sorry, Book Not Avaliable";
  } else {
    return 'Preview';
  }
}

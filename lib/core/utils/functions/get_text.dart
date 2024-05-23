import 'package:bookly/features/home/data/models/book_model/book_model.dart';

String  getText (BookModel bookModel){
   if(bookModel.volumeInfo.previewLink == null){
    return ' Preview..Not Available';
   }
   return 'Preview';
  } 

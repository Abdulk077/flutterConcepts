import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidgettest extends StatelessWidget {
  const ImageWidgettest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget Test'),
      ),
      body: Center(
        child:Container(
          height: 200,
          width: 300,
          child: CachedNetworkImage(
            imageUrl: 'https://images.app.goo.gl/LBPXtP1uSwZaaUE87',
            placeholder: (context, url) =>
              Center(
                child: CircularProgressIndicator(

                ),

              ),
            errorWidget: (context, url , error) => Icon.(Icons.error),
            
          )
        ) ,)
    ) ;
  }
}
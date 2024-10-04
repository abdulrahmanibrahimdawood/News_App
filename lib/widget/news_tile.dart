import 'package:flutter/material.dart';
import 'package:news/models/artical_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articalModel});
  final ArticalModel articalModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: articalModel.image != null && articalModel.image!.isNotEmpty
              ? Image.network(
                  articalModel.image!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              : Image.asset(
                  'assets/health.avif',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articalModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: Colors.black, fontSize: 20),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articalModel.description ?? "",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:news/models/artical_model.dart';
// import 'package:news/views/web_view.dart';

// class NewsTile extends StatelessWidget {
//   const NewsTile({super.key, required this.articalModel});
//   final ArticalModel articalModel;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         GestureDetector(
//           onTap: () {
//             if (articalModel.url != null) {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => WebViewPage(
//                       url: articalModel
//                           .url!), // Correct WebViewPage instantiation
//                 ),
//               );
//             }
//           },
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(6),
//             child: articalModel.image != null && articalModel.image!.isNotEmpty
//                 ? Image.network(
//                     articalModel.image!,
//                     height: 200,
//                     width: double.infinity,
//                     fit: BoxFit.cover,
//                   )
//                 : Image.asset(
//                     'assets/health.avif',
//                     height: 200,
//                     width: double.infinity,
//                     fit: BoxFit.cover,
//                   ),
//           ),
//         ),
//         const SizedBox(
//           height: 12,
//         ),
//         Text(
//           articalModel.title,
//           maxLines: 2,
//           overflow: TextOverflow.ellipsis,
//           style: const TextStyle(color: Colors.black, fontSize: 20),
//         ),
//         const SizedBox(
//           height: 8,
//         ),
//         Text(
//           articalModel.description ?? "",
//           maxLines: 2,
//           overflow: TextOverflow.ellipsis,
//           style: const TextStyle(
//             color: Colors.grey,
//             fontSize: 12,
//           ),
//         ),
//       ],
//     );
//   }
// }

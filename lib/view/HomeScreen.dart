//
//
// import 'package:custom_navigation_bar/custom_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:project/App_Responsive/Size_Config.dart';
// import 'package:project/App_Style/app_style.dart';
//
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//
//   int currentIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Homescreen(),
//         floatingActionButtonLocation:
//         FloatingActionButtonLocation.centerFloat,
//         floatingActionButton: SizedBox(
//             height: 64,
//            child: CustomNavigationBar(
//             isFloating: true,
//             borderRadius: BorderRadius.circular(40),
//             selectedColor: Kwhite,
//             unSelectedColor: KGrey,
//             backgroundColor: KBrown,
//             strokeColor: Colors.transparent,
//             scaleFactor: 0.1,
//             iconSize: 40,
//             items: [
//               CustomNavigationBarItem(
//                   icon: currentIndex == 0;
//                   ? SvgPicture.asset('assets/svg/home_icon_selected')
//                   : SvgPicture.asset('assets/svg/home_icon_unselected'),
//               ),
//               CustomNavigationBarItem(
//                   icon: currentIndex ==1;
//                   ? SvgPicture.asset('assets/svg/home_icon_selected')
//                   : SvgPicture.asset('assets/svg/home_icon_unselected'),
//               ),
//               CustomNavigationBarItem(
//                   icon: currentIndex == 2;
//                   ? SvgPicture.asset('assets/svg/home_icon_selected')
//                   : SvgPicture.asset('assets/svg/home_icon_unselected'),
//               ),
//               CustomNavigationBarItem(
//                   icon: currentIndex == 3;
//                   ? SvgPicture.asset('assets/svg/home_icon_selected')
//                   : SvgPicture.asset('assets/svg/home_icon_unselected'),
//               ),
//             ],
//             currentIndex: _currentIndex,
//             onTap: (index){
//               setState(() {
//                 _currentIndex = index;
//               });
//             },
//           ),
//         )
//       ),
//     );
//   }
// }
//
// class Homescreen extends StatefulWidget {
//   const Homescreen({Key? key}) : super(key: key);
//
//   @override
//   State<Homescreen> createState() => _HomescreenState();
// }
//
// class _HomescreenState extends State<Homescreen> {
//   @override
//   Widget build(BuildContext context) {
//
//     List<String> categories = [
//       "All Items",
//       "Dress",
//       "Hat",
//       "Watch",
//     ];
//     List<String> icons = [
//       'all_items_icon',
//       'dress_icon',
//       'hat_icon',
//       'watch_icon',
//     ];
//     List<String> images = [
//       'image-01',
//       'image-02',
//       'image-03',
//       'image-04',
//       'image-05',
//       'image-06',
//       'image-07',
//       'image-08',
//     ];
//
//     int current =1;
//     SizeConfig().init(context);
//     return SafeArea(
//         child: ListView(
//            children: [
//              Padding(
//                padding: const EdgeInsets.symmetric(horizontal: KPaddingHorizontal),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                  crossAxisAlignment: CrossAxisAlignment.center,
//                  children: [
//                    Column(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: [
//                        Text('Hello WelCome ',
//                          style: KEncodeSansRagular.copyWith(
//                            color: KDarkBrown,
//                            fontSize: SizeConfig.blockSizeHorizontal!*3.5,
//                          ),
//                        ),
//                        Text('Albert Stevano ',
//                          style: KEncodeSansBold.copyWith(
//                            color: KDarkBrown,
//                            fontSize: SizeConfig.blockSizeHorizontal!*4,
//                          ),
//                        ),
//                      ],
//                    ),
//                    const CircleAvatar(
//                      radius: 20,
//                      backgroundColor: KGrey,
//                      backgroundImage: NetworkImage('https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
//                    )
//                  ],
//                ),
//              ),
//              const SizedBox(
//                height: 24,
//              ),
//              Padding(
//                padding: const EdgeInsets.symmetric(
//                  horizontal: KPaddingHorizontal
//                ),
//                child: Row(
//                  children: [
//                    Expanded(
//                        child: TextFormField(
//                     controller: TextEditingController(),
//                          style: KEncodeSansRagular.copyWith(
//                            color: KDarkGrey,
//                            fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
//                          ),
//                          decoration: InputDecoration(
//                            contentPadding: const EdgeInsets.symmetric(horizontal: 13),
//                            prefixIcon: const IconTheme(data: IconThemeData(
//                              color: KDarkGrey,
//                             ),
//                              child: Icon(Icons.search),
//                            ),
//                            hintText: 'Search Clothes....',
//                            border: KInputBorder,
//                            errorBorder: KInputBorder,
//                            disabledBorder: KInputBorder,
//                            focusedBorder: KInputBorder,
//                            focusedErrorBorder: KInputBorder,
//                            enabledBorder: KInputBorder,
//                            hintStyle: KEncodeSansRagular.copyWith(
//                              color: KDarkGrey,
//                              fontSize: SizeConfig.blockSizeHorizontal!*3.5,
//                            )
//                          ),
//                     )
//                    ),
//                   const SizedBox(
//                     width: 16,
//                   ),
//                   Container(
//                     width: 49,
//                     height: 49,
//                     padding: const EdgeInsets.all(12),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(kBorderRadius),
//                       color: KBlack
//                     ),
//                     child: SvgPicture.asset('assets/svg/filter_icon.svg'),
//                   )
//                  ],
//                ),
//              ),
//              const SizedBox(
//                height: 24,
//              ),
//              SizedBox(
//                width: double.infinity,
//                height: 36,
//                child: ListView.builder(
//                    physics: const BouncingScrollPhysics(),
//                    itemCount: categories.length,
//                    scrollDirection: Axis.horizontal,
//                  itemBuilder: (context, index){
//                    return GestureDetector(
//                      onTap: (){
//                        setState(() {
//                          current = index;
//                        });
//                      },
//                      child: Container(
//                        margin: EdgeInsets.only(
//                            left: index == 0 ? KPaddingHorizontal : 15,
//                            right: index == categories.length -1 ? KPaddingHorizontal : 0
//                        ),
//                        padding: const EdgeInsets.symmetric(horizontal: 10),
//                        height: 36,
//                        decoration: BoxDecoration(
//                            color: current == index ? KBrown : Kwhite,
//                            borderRadius: BorderRadius.circular(8),
//                            border: current == index ? null :
//                            Border.all(
//                              color: KLightGrey,
//                              width: 1,
//                            )
//                        ),
//                        child: Row(
//                          children: [
//                            SvgPicture.asset(current == index ? 'assets/svg/${icons[index]}_selected.svg' :
//                            'assets/svg/${icons[index]}_unselected.svg'
//                            ),
//                            const SizedBox(
//                              width: 4,
//                            ),
//                            Text(categories[index],
//                                style: KEncodeSansMedium.copyWith(
//                                  color: current == index ? Kwhite : KDarkBrown,
//                                  fontSize: SizeConfig.blockSizeHorizontal!*3,
//                                )
//                            )
//                          ],
//                        ),
//                      ),
//                    );
//                  },
//                    ),
//              ),
//              const SizedBox(
//                height: 32,
//              ),
//              MasonryGridView.count(
//                crossAxisSpacing: 15,
//                mainAxisSpacing: 23,
//                shrinkWrap: true,
//                physics: const NeverScrollableScrollPhysics(),
//                crossAxisCount: 2,
//                itemCount: images.length,
//                padding: EdgeInsets.symmetric(horizontal: KPaddingHorizontal),
//                itemBuilder: (context, index){
//                  return Column(
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: [
//                      Stack(
//                        children: [
//                          Positioned(
//                              child: ClipRRect(
//                                borderRadius: BorderRadius.circular(kBorderRadius),
//                                child: Image.asset('assets/image/${images[index]}.png',fit: BoxFit.cover,),
//                              )
//                          ),
//                          Positioned(
//                            right: 12,
//                            top:  10,
//                              child: GestureDetector(
//                                child: SvgPicture.asset('assets/svg/favorite_cloth_icon_unselected.svg'),
//                              )
//                          )
//                        ],
//                      ),
//                     const SizedBox(
//                        height: 8,
//                      ),
//                      Text(
//                        'Modern light Clothes',
//                        maxLines: 2,
//                        overflow: TextOverflow.ellipsis,
//                        style: KEncodeSansSemiBold.copyWith(
//                          color: KDarkBrown,
//                          fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
//                        ),
//                      ),
//                      Text(
//                      'Dress Modern',
//                      maxLines: 1,
//                      overflow: TextOverflow.ellipsis,
//                      style: KEncodeSansRagular.copyWith(
//                      color: KGrey,
//                      fontSize: SizeConfig.blockSizeHorizontal! * 2.5
//                       ),
//                      ),
//                      const SizedBox(
//                        height: 8,
//                      ),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        crossAxisAlignment: CrossAxisAlignment.center,
//                        children: [
//                          Text(
//                            '\$212.99',
//                            style: KEncodeSansSemiBold.copyWith(
//                              color: KDarkBrown,
//                              fontSize: SizeConfig.blockSizeHorizontal! * 3.5
//                            ),
//                          ),
//                          Row(
//                            children: [
//                              const Icon(Icons.star,
//                              color: Kyellow,
//                              size: 16,
//                              ),
//                              const SizedBox(
//                                width: 8,
//                              ),
//                              Text(
//                                '5.0',
//                                style: KEncodeSansRagular.copyWith(
//                                    color: KDarkBrown,
//                                    fontSize: SizeConfig.blockSizeHorizontal! * 3
//                                ),
//                              )
//                            ],
//                          )
//                        ],
//                      )
//                    ],
//                  );
//                },
//              )
//            ],
//     ));
//   }
// }
//

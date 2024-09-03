import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/appbar/tabbar.dart';
import 'package:e_commerce_app/common/widgets/common_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/common_shapes/container/search_container.dart';
import 'package:e_commerce_app/common/widgets/images/t_cicular_images.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounterIcon(
              onPressed: () {},
              iconColor: Colors.blue,
            )
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: THelperFunctions.isDarkMode(context)
                      ? TColors.black
                      : TColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        /// -- Search bar
                        const SizedBox(height: TSizes.spaceBtwItems),
                        const TSearchContainer(
                          text: '',
                          showBorder: true,
                          showBackground: false,
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),
      
                        // featured brand
                        TSectionHeading(
                          title: 'Featured Brand',
                          showActionButton: true,
                          onPressed: () {},
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwItems / 1.5,
                        ),
                        TGridLayout(
                          itemCount: 4,
                          mainAxisElement: 80,
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: TRoundedContainer(
                                padding: const EdgeInsets.all(TSizes.sm),
                                showBorder: true,
                                backgroundColor: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: TCircularImage(
                                        isNetworkImage: false,
                                        image: TImages.clothIcon,
                                        backgroundColor: Colors.transparent,
                                        overlayColor:
                                            THelperFunctions.isDarkMode(context)
                                                ? TColors.white
                                                : TColors.black,
                                      ),
                                    ),
      
                                    const SizedBox(
                                      width: TSizes.spaceBtwItems / 2,
                                    ),
      
                                    // Text
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const TBrandTitleWithVerifiedIcon(
                                            title: 'Nike',
                                            brandTextSizes: TextSizes.large,
                                          ),
                                          Text(
                                            '256 product',
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                  bottom:  TTabBar(tabs: [
                    Tab(
                      child: Text('Sports'),
                    ),
                    Tab(
                      child: Text('Furniture'),
                    ),
                    Tab(
                      child: Text('Electronics'),
                    ),
                    Tab(
                      child: Text('Clothes'),
                    ),
                    Tab(
                      child: Text('Cosmetics'),
                    )
                  ]),
                )
              ];
            },
            body: Container()),
      ),
    );
  }
}

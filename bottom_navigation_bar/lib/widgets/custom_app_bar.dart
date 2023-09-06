import 'package:flutter/material.dart';

import '../custom_textField.dart';
import '../global.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  final bool? showSearchbar;
  final bool? showNotification;
  final bool? showWishlist;
  final bool? showCart;
  final TextEditingController? rankController;
  final String? labelText;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  final List<Widget> actionsIcon;

  const CustomAppbar({
    Key? key,
    required this.title,
    this.showSearchbar = false,
    this.showNotification = false,
    this.showWishlist = false,
    this.showCart = false,
    this.rankController,
    this.labelText,
    this.validator,
    this.onSaved,
    required this.actionsIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
          fontSize: 20,
          shadows: [
            Shadow(color: Colors.black12, blurRadius: 1.5, offset: Offset(1, 1)),
          ],
        ),
      ),
      actions: [
        // Wishlist
        showWishlist!
            ? IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
        )
            : Container(),

        // Notifications
        showNotification!
            ? PopupMenuButton(
          icon: const Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          position: PopupMenuPosition.under,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
          onSelected: (value) {
            print(value);
          },
          itemBuilder: (context) => [
            const PopupMenuItem(
              value: 1,
              child: Text("Notification 1"),
            ),
            const PopupMenuItem(
              value: 2,
              child: Text("Notification 2"),
            ),
            const PopupMenuItem(
              value: 3,
              child: Text("Notification 3"),
            ),
          ],
        )
            : Container(),

        // Shopping Bag
        showCart!
            ? IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
        )
            : Container(),
      ],
      // decoration
      elevation: 0,
      shadowColor: Colors.grey.shade400,
      backgroundColor: Colors.blue,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.01, 1],
            colors: [
              gradientColor1,
              gradientColor2,
            ],
          ),
        ),
      ),

      bottom: showSearchbar!
          ? PreferredSize(
        preferredSize: const Size(double.infinity, kToolbarHeight * 2),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 32,
          ),
          child: CustomTextField(
            controller: rankController!,
            labelText: "Enter Rank...",
            validator: validator,
            onSaved: onSaved,
            fieldSuffixIcon: const Icon(Icons.search),
          ),
        ),
      )
          : PreferredSize(preferredSize: const Size(0, 0), child: Container()),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rainhadobel/Styles/styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBar({Key? key})
      : preferredSize = const Size.fromHeight(220.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 220,
      backgroundColor: Color(0xFF501C09),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Localização", style: SansNormal(16)),
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined, color: Color(0xFFFCAF3C)),
                      Text("Presidente Altino, Osasco", style: SansNormal(18))
                    ],
                  )
                ],
              ),
              IconButton(
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (_)=> ShoppingCart()));
                },
                icon: const Icon(Icons.shopping_cart_outlined, color: Color(0xFFFCAF3C)),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Text("Olá, Bem-vindo.", style: SansMedium(18)),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(92, 151, 151, 151),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.all(12),
                  prefixIcon: Icon(Icons.search, color: Colors.white),
                  hintText: 'Pesquisar',
                  hintStyle: GoogleFonts.dmSans(
                    color: Colors.white,
                  ),
                ),
                style: GoogleFonts.dmSans(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

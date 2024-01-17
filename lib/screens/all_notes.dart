import 'package:flutter/material.dart';

class AllNotes extends StatelessWidget {
  const AllNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 30.0,
        right: 30.0,
        top: 28.0,
      ),
      child: Column(
        children: [
          Container(
            height: 72,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(
              left: 16.0,
              top: 12.0,
              bottom: 12.0,
            ),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(247, 247, 247, 1),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome to Notes',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 6.0,
                  ),
                  child: const Text(
                    '14 January 2023',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      color: Color.fromRGBO(129, 129, 129, 1),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

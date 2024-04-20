import 'package:flutter/material.dart';
import 'package:notes_app/dummy/notes_dummy.dart';

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
        child: ListView.builder(
            itemCount: NotesDummy.notes.length,
            itemBuilder: (BuildContext context, int index) {
              var data = NotesDummy.notes[index];
              return Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(
                  top: 16.0,
                ),
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 12.0,
                  bottom: 12.0,
                ),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(247, 247, 247, 1),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['title'],
                            style: const TextStyle(
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
                            child: Text(
                              data['updatedAt'],
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins',
                                color: Color.fromRGBO(129, 129, 129, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    data['image'] != null
                        ? Container(
                            height: 80,
                            width: 60,
                            key: const ValueKey("Notes Image"),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                              image: DecorationImage(
                                image: AssetImage(data['image']),
                                fit: BoxFit.fill,
                                filterQuality: FilterQuality.high,
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
              );
            }));
  }
}

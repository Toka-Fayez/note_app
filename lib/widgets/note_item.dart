import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Note_Item extends StatelessWidget {
  const Note_Item({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        padding: const EdgeInsets.only(top: 24, left: 16, bottom: 24),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 244, 209, 91),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Note App',
                style: TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(
                  top: 18.0,
                  bottom: 18,
                ),
                child: Text(
                  'This is a note app This is a note app This is ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(154, 0, 0, 0),
                  ),
                ),
              ),
              trailing: IconButton(
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 24,
                ),
                onPressed: () {},
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                right: 24,
              ),
              child: Text(
                "20May,2020",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(109, 0, 0, 0),
                ),
              ),
            ),
            /*  SizedBox(
              height: 24,
            )*/
          ],
        ),
      ),
    );
  }
}

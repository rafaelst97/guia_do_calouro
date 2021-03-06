import 'package:flutter/material.dart';

class CardNoticia extends StatelessWidget {
  const CardNoticia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white54,
      shadowColor: Colors.black,
      elevation: 20,
      child: SizedBox(
        width: double.infinity,
        height: 200,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/news.png",
                width: 140,
                height: 140,
                alignment: Alignment.topCenter,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  width: 228,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Flexible(
                      child: Text(
                        "Vagas de emprego",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontFamily: "Roboto",
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 228,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Flexible(
                      child: Text(
                        "Novas vagas de emprego estão surgindo na cidade, busque mais informações no SINE",
                        overflow: TextOverflow.visible,
                        textWidthBasis: TextWidthBasis.parent,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

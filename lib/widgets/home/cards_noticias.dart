import 'package:flutter/material.dart';

class CardNoticia extends StatelessWidget {
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
            Image.asset(
              "assets/images/login.png",
              width: 140,
              height: 140,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 244,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
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
                  width: 244,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Flexible(
                      child: Text(
                          "Novas vagas de emprego estão surgindo na cidade, busque mais informações no SINE",
                      overflow: TextOverflow.visible,
                      textWidthBasis: TextWidthBasis.parent,),
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

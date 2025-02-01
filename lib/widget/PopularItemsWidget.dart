import "package:flutter/material.dart";

class PopularItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(children: [
          
          // ========= single Item Card =======
          for (int i = 0; i < 10; i++)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                width: 170,
                height: 225,
                decoration: BoxDecoration(
                    color: Colors.white,
// Suggested code may be subject to a license. Learn more: ~LicenseLog:193194970.
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/images/oli/MPX2.jpg",
                          height: 130.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(
                        "AHM MPX",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Oli Paling Best Seller",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\Rp.40.000",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.redAccent,
                            size: 20,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          // ========= single Item Card =======
        ]),
      ),
    );
  }
}

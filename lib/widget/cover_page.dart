import 'package:flutter/material.dart';
import 'package:travel_ui/models/travel.dart';

class CoverPage extends StatefulWidget {
  // ignore: non_constant_identifier_names
  final travel_list = Travel.generatedTravelList();

  @override
  State<CoverPage> createState() => _CoverPageState();
}

class _CoverPageState extends State<CoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: widget.travel_list.length,
        itemBuilder: (context, index) {
          var travel = widget.travel_list[index];
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 5, right: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    travel.image,
                    height: double.infinity,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  bottom: 20,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        travel.name,
                        style: TextStyle(
                            color: travel.name == "Minion"
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        travel.address,
                        style: TextStyle(
                            color: travel.name == "Minion"
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )
                    ],
                  )),
              Positioned(
                  bottom: 2,
                  right: 20,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.blue,
                    child: Center(
                        child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 12,
                    )),
                  ))
            ],
            clipBehavior: Clip.none,
          );
        },
      ),
    );
  }
}

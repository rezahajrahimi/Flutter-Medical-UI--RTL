import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard(
      {Key? key,
      required this.doctorImageName,
      required this.starRate,
      required this.doctorName,
      required this.positionName})
      : super(key: key);
  final String doctorImageName;
  final String starRate;
  final String doctorName;
  final String positionName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                "assets/images/doctor/$doctorImageName",
                height: 100,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[600],
                ),
                Text(starRate,
                    style: const TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              doctorName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(positionName),
          ],
        ),
      ),
    );
  }
}

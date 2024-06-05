import 'package:flutter/material.dart';

class popuppage extends StatelessWidget {
  const popuppage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              contentPadding: const EdgeInsets.all(0),
              content: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffB7A5A5),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(28))
                ),
                child: Column(
                  children: [
                    Stack(children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(28),
                            topRight: Radius.circular(28)),
                        child: Container(
                          height: 237,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/trial.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                       Positioned(
                          right: 10,
                          top: 10,
                          child: InkWell(
                            onTap: () => Navigator.of(context).pop(),
                            child: const Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                          )),
                    ]),
                    const SizedBox(height: 20,),
                    Text('Essential Trekking Gear for a Successful Hike',
                    style: Theme.of(context).textTheme.bodyLarge,),
                    const Text("Embarking on a trekking adventure requires not just enthusiasm and energy but also the right gear to ensure your safety, comfort, and overall experience. Whether you're a seasoned hiker or a beginner, having the appropriate trekking gear can make a significant difference in your journey. Here, we’ve compiled a comprehensive guide on essential trekking gear to help you prepare for your next hike.",
                    style: TextStyle(fontSize: 9),)
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 232,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            image: const DecorationImage(
              image: AssetImage('assets/images/trial.jpg'),
              fit: BoxFit.cover,
            ),
            ),
      ),
    );
  }
}

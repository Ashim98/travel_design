import 'package:flutter/material.dart';
import 'firstpage.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'CATEGORIES',
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                    'Essential Equipment: Must-Haves for Your Trekking Adventure',
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center),
              ),
              const SizedBox(
                height: 15,
              ),
              popuppage(),
              Text(
                'Hike',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'Explore the travel pack',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_voice_assistant/pallete.dart';

import 'reuseable_wdget.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.wc),
        title: Text(
          'Christian',
          style: textStyle.titleMedium,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Gap(),
          const Center(child: FlutterLogo(size: 100)),
          const SizedBox(height: 30),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(20).copyWith(topLeft: Radius.zero),
                border: Border.all(color: Pallete.borderColor)),
            child: Text(
              'Good Morning, what task can i do for you',
              style: textStyle.bodyLarge!.copyWith(
                  color: Pallete.mainFontColor, fontWeight: FontWeight.w500),
            ),
          ),
          const Gap(),
          Text(
            'Here are few features',
            style: textStyle.bodyMedium!.copyWith(
                color: Pallete.mainFontColor, fontWeight: FontWeight.bold),
          ),
          const Gap(),
          ResuableCompenet(
            textStyle: textStyle,
            title: 'ChatGPT',
            des: 'A Smarter way to stay organized and informed  with ChatGpt',
            color: Pallete.firstSuggestionBoxColor,
          ),
          const Gap(),
          ResuableCompenet(
            textStyle: textStyle,
            title: 'Dall-E',
            des:
                'Get inspired and stay creative with your personal assisant powered by Dall-E',
            color: Pallete.secondSuggestionBoxColor,
          ),
          const Gap(),
          ResuableCompenet(
            textStyle: textStyle,
            title: 'Smart Voice Assisant',
            des:
                'Get the best of both worlds with a voice  assisant powered by ChatGPT and Dall-E',
            color: Pallete.thirdSuggestionBoxColor,
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {},
        child: const Icon(Icons.mic),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CaringActivity extends StatelessWidget {
  const CaringActivity({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tomato Plantation Care'),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image 4.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            Section(
              title: 'Stage of Plantation',
              description:
              'Select tomatoes to plant that are small, about the diameter of a pencil. '
                  'It’s tempting to buy the biggest tomato seedling that has flowers or fruit on it. '
                  'This can set establishment back as the plant has to divide resources between growing fruit and growing roots. '
                  'Remove any flowers or fruit at planting (I know it’s hard!) or select plants that don’t have them yet. '
                  'Prepare your garden space and harden off your tomatoes by bringing the out in increasing increments over about a week.'
            'Tomatoes are one of the few vegetables in our garden  that have a superpower. '
                  'They can grow adventitious roots along their stems. '
                  'This means that if you plant the tomato horizontally in a trench in your soil  it will produce new roots along that buried stem.'
                  ' Simply remove all but the top 5-7 leaves and plant in a shallow trench. '
                  'These new roots will sprout from the stem which will create a hardier and happier tomato plant.',
              backgroundColor: Colors.green.shade100,
            ),
            Section(
              title: 'Fertilizer',
              description:
              'Fertilizing tomatoes can be a tricky proposition. '
                  'Many of us think of our vegetable gardens as an extension of ourselves (we spend so much time there after all!) '
                  'and so we have a bad habit of anthropomorphizing the plants. '
                  'Since we as humans eat food every day, surely plants need food on a regular basis as well? Unfortunately, it’s not so simple. '
                  'This is when I remind you to refer to the soil test that I’m sure each and every one of you have done this spring or last fall. '
                  'Do you have sufficient Nitrogen, potassium, and phosphorous? If so, you may not need to supplement. '
                  'If you’re adequate to low, tomatoes can benefit from a light feed at planting, '
                  'you can fertilize up to 3 times every 2 weeks, and a final feed when the tomatoes have reached about ½ their mature size. '
                  'So, you may fertilize once in the season, you may fertilize 4 times, but probably won’t need more than that to have success.'
              'Over fertilization of tomatoes can lead to beautiful, lush, green, leafy plants with not a single flower on them. '
                  'This is because you’ve made such comfortable environment for your plant that it thinks it doesn’t even need to procreate '
                  'and ensure survival in the next season. '
                  'A low-level amount of stress is good for a plant and its enthusiasm for reproduction.',
              backgroundColor: Colors.blue.shade100,
            ),
            Section(
              title: 'Harvest',
              description:
              'Tomatoes can technically be harvested at any stage, '
                  'but if you want them to continue to ripen you need to look for “breakers” this is when the blossom end begins to color. '
                  'If you have selected purple, green, yellow etc. '
                  'tomatoes they will look a little different to your standard reds. '
                  'Any that are “pink” can be counter ripened successfully, although the flavor will develop better on the vine than off.'
                  'Avoid pulling tomatoes off the plant, this can tear the vine and potentially introduce disease and damage new growth. '
                  'Instead use as sharp knife, pair of scissors or other cutting tool to clip tomatoes off the plant. '
                  'Harvest is best performed early or late in the day when intense heat is over.'
            'Of course, I’ve only touched the surface of discussions that we could have about tomatoes, '
                  'if you are curious to know more, please you can visit more sites.',
              backgroundColor: Colors.yellow.shade100,
            ),
            Section(
              title: 'More Information',
              description:
              'Discover additional tips and resources for tomato care.',
              backgroundColor: Colors.orange.shade100,
            ),
          ],
        ),
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String title;
  final String description;
  final Color backgroundColor;

  const Section({super.key,
    required this.title,
    required this.description,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 4,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(fontSize: 16, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
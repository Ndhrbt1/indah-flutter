part of '_index.dart';

class BerandaView extends StatefulWidget {
  const BerandaView({super.key});

  @override
  State<BerandaView> createState() => _BerandaViewState();
}

class _BerandaViewState extends State<BerandaView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: DefaultTabController(
        length: 3,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              actions: const [SearchBox()],
              title: const Text('Welcome to Inka Idn'),
              pinned: true,
              floating: true,
              bottom: PreferredSize(
                preferredSize: const Size(double.infinity, 48),
                child: TabBar(
                  labelColor: Colors.deepPurple.shade700,
                  indicatorColor: Colors.deepPurple.shade700,
                  tabs: const <Widget>[
                    Tab(text: 'FOOD'),
                    Tab(text: 'TECH'),
                    Tab(text: 'LIFE'),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 1000,
                child: TabBarView(
                  children: <Widget>[
                    FoodView(),
                    TechView(),
                    LifeView(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

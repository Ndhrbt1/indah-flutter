part of '_index.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
                width: 150,
                child: Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/indah-flutter.appspot.com/o/Black%20White%20Yellow%20Simple%20Initial%20Name%20Logo%20(1).png?alt=media&token=661726eb-5477-4a74-979a-8d9b082352c0&_gl=1*1oq48lp*_ga*MjQxNzk3My4xNjgzMTIyOTc1*_ga_CW55HF8NVT*MTY5ODQ3ODA2MC41NS4xLjE2OTg0Nzg0MTguNDkuMC4w'),
              ),
              Text(_dt.rxTitle.st),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:appgold/cubit/cubit.dart';
import 'package:appgold/cubit/stetse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class mainScreen extends StatelessWidget {
  const mainScreen({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit()
        ..getGoldPrise()
        ..getSilverPrise(),
      child: BlocConsumer<MainCubit, States>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Colors.grey[800],
              appBar: AppBar(
                backgroundColor: Colors.black,
                title: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'TODAY ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'PRICE ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.orangeAccent,
                        shadows: [
                          Shadow(
                            color: Colors.amber,
                            offset: Offset(1, 1),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              body: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.black),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'images/gold.png',
                          height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width / 2.5,
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        const Text(
                          'GOLD',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 170, 0),
                            fontWeight: FontWeight.bold,
                            fontSize: 33,
                            shadows: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 255, 234, 0),
                                  offset: Offset(1, 1)),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          '${MainCubit.get(context).GoldI}💲',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 196, 0),
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'price_gram_21k',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 204, 0),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 2.5,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'images/silver.png',
                          height: MediaQuery.of(context).size.height / 4.5,
                          width: MediaQuery.of(context).size.width / 2.10,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'SILVER ',
                          style: TextStyle(
                            color: Color.fromARGB(255, 205, 202, 185),
                            fontWeight: FontWeight.bold,
                            fontSize: 33,
                            shadows: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 155, 155, 155),
                                  offset: Offset(1, 1)),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          '${MainCubit.get(context).Selver}💲',
                          style: TextStyle(
                            color: Color.fromARGB(255, 192, 191, 187),
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'price_gram_21k',
                          style: TextStyle(
                            color: Color.fromARGB(255, 192, 191, 187),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

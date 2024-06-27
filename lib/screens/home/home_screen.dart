import 'package:auto_garage_jobcard/screens/home/widgets/customers_card.dart';
import 'package:auto_garage_jobcard/screens/home/widgets/garage_services.dart';
import 'package:auto_garage_jobcard/screens/home/widgets/shadow_circle.dart';
import 'package:auto_garage_jobcard/screens/home/widgets/top_bar_text.dart';
import 'package:flutter/material.dart';
import 'package:auto_garage_jobcard/screens/bottom_bar/nav_bar_items.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.tealAccent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: BottomAppBar(
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const NavBarItems(
                icon: Icons.home_outlined,
                data: 'Home',
                index: 0,
              ),
              const NavBarItems(
                icon: Icons.search_outlined,
                data: 'Search',
                index: 1,
              ),
              const NavBarItems(
                icon: Icons.person,
                data: 'Support',
                index: 2,
              ),
              NavBarItems(
                icon: Icons.read_more_outlined,
                data: 'Logout',
                index: 3,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.deepOrange,
                        blurRadius: 6,
                        spreadRadius: 2,
                        offset: Offset(2, 2),
                      )
                    ],
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.add_outlined,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Create Job card',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white, Colors.tealAccent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              height: double.minPositive,
              width: double.infinity,
            ),
            Positioned(
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.deepOrange, Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: 60,
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TopBarText(
                                textName: 'Total Earning, Jun 25',
                                textSize: 14,
                              ),
                              TopBarText(
                                textName: '\$ 2056.99',
                                textSize: 16,
                                textWeight: FontWeight.bold,
                              ),
                              TopBarText(
                                textName: 'Expires on 31 Dec 20254',
                                textSize: 14,
                              ),
                            ],
                          ),
                          Column(
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TopBarText(
                                textName: 'Total Job Cards',
                                textSize: 14,
                              ),
                              TopBarText(
                                textName: '4500',
                                textSize: 16,
                                textWeight: FontWeight.bold,
                              ),
                              TopBarText(
                                textName: 'Location : Hyderabad',
                                textSize: 14,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ShadowCircle(
                        numbers: '288',
                        jobName: 'Open Job \nCard',
                        circleWidth: 90,
                        circleHeight: 90,
                        borderRadius: BorderRadius.circular(45),
                      ),
                      ShadowCircle(
                        numbers: '188',
                        jobName: 'Complete Job \nCard',
                        circleWidth: 90,
                        circleHeight: 90,
                        borderRadius: BorderRadius.circular(45),
                      ),
                      ShadowCircle(
                        numbers: '105',
                        jobName: 'Close Job \nCard',
                        circleWidth: 90,
                        circleHeight: 90,
                        borderRadius: BorderRadius.circular(45),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomersCard(
                        customerCardHeading: 'Today\'s Due',
                        customerCardSubHeading: 'Check today\'s due',
                        icon: Icons.today_outlined,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CustomersCard(
                        customerCardHeading: 'Pending Balance',
                        customerCardSubHeading: 'Check pending balance',
                        icon: Icons.pending_actions_outlined,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TopBarText(
                    textName: 'What are you looking for?',
                    textColor: Colors.black,
                    textSize: 14,
                    textWeight: FontWeight.w400,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GarageServices(),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    width: 200,
                    child: Lottie.asset(
                      'lib/assets/lottie_files/bullet_bike.json',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const CupertinoSearchTextField(),
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.pinkAccent,
            indicatorWeight: 8,
            tabs: [
              RepeatedTab(
                label: 'Laços',
              ),
              RepeatedTab(
                label: 'Tiaras',
              ),
              RepeatedTab(
                label: 'Viseiras',
              ),
              RepeatedTab(
                label: 'Faixas',
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          Center(
            child: Text('Laços'),
          ),
          Center(
            child: Text('Tiaras'),
          ),
          Center(
            child: Text('Viseiras'),
          ),
          Center(
            child: Text('Faixas'),
          ),
        ]),
      ),
    );
  }
}

class RepeatedTab extends StatelessWidget {
  final String label;
  const RepeatedTab({
    Key? key,
    required this.label
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        label,
        style: TextStyle(color: Colors.grey.shade600),
      ),
    );
  }
}

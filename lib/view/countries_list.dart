import 'package:covid19_tracker_app/Services/states_services.dart';
import 'package:covid19_tracker_app/view/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CountriesListScreen extends StatefulWidget {
  const CountriesListScreen({super.key});

  @override
  State<CountriesListScreen> createState() => _CountriesListScreenState();
}

class _CountriesListScreenState extends State<CountriesListScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    StatesServices statesServices = StatesServices();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextFormField(
              controller: searchController,
              onChanged: (value) {
                setState(() {});
              },
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  hintText: 'Search with country name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
          Expanded(
              child: FutureBuilder(
                  future: statesServices.countriesListApi(),
                  builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
                    if (!snapshot.hasData) {
                      return ListView.builder(
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return Shimmer.fromColors(
                                child: Column(
                                  children: [
                                    ListTile(
                                      title: Container(
                                        height: 10,
                                        width: 80,
                                        color: Colors.white,
                                      ),
                                      subtitle: Container(
                                        height: 10,
                                        width: 80,
                                        color: Colors.white,
                                      ),
                                      leading: Container(
                                        height: 50,
                                        width: 50,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                                baseColor: Colors.grey.shade700,
                                highlightColor: Colors.grey.shade100);
                          });
                    } else {
                      return ListView.builder(
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            String name = snapshot.data![index]['country'];
                            if (searchController.text.isEmpty) {
                              return Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => DetailsScreen(
                                              image: snapshot.data![index]
                                                  ['countryInfo']['flag'],
                                              name: snapshot.data![index]
                                                  ['country'],
                                              totalCases: snapshot.data![index]
                                                  ['cases'],
                                              totalDeaths: snapshot.data![index]
                                                  ['deaths'],
                                              totalRecovered: snapshot.data![index]
                                                  ['recovered'],
                                              active: snapshot.data![index]
                                                  ['active'],
                                              critical: snapshot.data![index]
                                                  ['critical'],
                                              todayRecovered:
                                                  snapshot.data![index]
                                                      ['todayRecovered'],
                                              test: snapshot.data![index]
                                                  ['tests']),
                                        ),
                                      );
                                    },
                                    child: ListTile(
                                      title: Text(
                                          snapshot.data![index]['country']),
                                      subtitle: Text(snapshot.data![index]
                                              ['cases']
                                          .toString()),
                                      leading: Image(
                                          height: 50,
                                          width: 50,
                                          image: NetworkImage(
                                              snapshot.data![index]
                                                  ['countryInfo']['flag'])),
                                    ),
                                  )
                                ],
                              );
                            } else if (name.toLowerCase().contains(
                                searchController.text.toLowerCase())) {
                              return Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => DetailsScreen(
                                              image: snapshot.data![index]
                                              ['countryInfo']['flag'],
                                              name: snapshot.data![index]
                                              ['country'],
                                              totalCases: snapshot.data![index]
                                              ['cases'],
                                              totalDeaths: snapshot.data![index]
                                              ['deaths'],
                                              totalRecovered: snapshot.data![index]
                                              ['recovered'],
                                              active: snapshot.data![index]
                                              ['active'],
                                              critical: snapshot.data![index]
                                              ['critical'],
                                              todayRecovered:
                                              snapshot.data![index]
                                              ['todayRecovered'],
                                              test: snapshot.data![index]
                                              ['tests']),
                                        ),
                                      );
                                    },
                                    child: ListTile(
                                      title:
                                          Text(snapshot.data![index]['country']),
                                      subtitle: Text(snapshot.data![index]
                                              ['cases']
                                          .toString()),
                                      leading: Image(
                                          height: 50,
                                          width: 50,
                                          image: NetworkImage(
                                              snapshot.data![index]['countryInfo']
                                                  ['flag'])),
                                    ),
                                  )
                                ],
                              );
                            } else {
                              return Container();
                            }
                          });
                    }
                  }))
        ],
      )),
    );
  }
}

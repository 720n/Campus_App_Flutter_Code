// ignore_for_file: non_constant_identifier_names

import 'package:flump/movie_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:SearchPage(),
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  static List<RoomModel> room_List = [RoomModel("A-101 Visitors' Room"), RoomModel("A-102 Staff Room"), RoomModel("A-103 Staff Room"),
    RoomModel("A-104 Basic Electronic Lab"), RoomModel("A-105 Language Lab"), RoomModel("A-106 Lecture Hall"), RoomModel("A-107 Lecture Hall"),
    RoomModel("A-108 Lecture Hall"), RoomModel("A-109 Lecture Hall"), RoomModel("A-304 Lecture Hall"), RoomModel("A-306 Lecture Hall"),
    RoomModel("A-308 Lecture Hall"), RoomModel("A-102 HOD"), RoomModel("A-301 Staff Room"), RoomModel("A-303 Chemistry Lab Physics LAb"), RoomModel("A-305 Lecture Hall"),
    RoomModel("A-307 Lecture Hall"), RoomModel("B-01 HOD EEE"), RoomModel("B-02 Lecture Hall"), RoomModel("B-03 Lecture Hall"),
    RoomModel("B-04 Faraday Hall"), RoomModel("B-05 Lecture Hall"), RoomModel("B-05(a) Lecture Hall"), RoomModel("B-0A Staff Room"),
    RoomModel("B-08 Staff Room"), RoomModel("B-09 Staff Room"), RoomModel("B-10 Lecture Hall"),
    RoomModel("B-04(a) Conference Hall and Department Library"), RoomModel("B-11 EC & Ml Lab"), RoomModel("B-12 Research Lab"),
    RoomModel("B-13 Staff Room"), RoomModel("B-100 Staff Room"), RoomModel("B-101 HOD EC"), RoomModel("B-102 Lecture Hall"),
    RoomModel("B-103 Lecture Hall"), RoomModel("B-104 Shannon Hall"),
    RoomModel("B-105(b) Advance Communication Lab"),
    RoomModel("B-105(a) IC Lab"),
    RoomModel("B-107 Staff Wash Room"),
    RoomModel("B-109 Lecture Hall"),
    RoomModel("B-110 Gents Wash Room"),
    RoomModel("B-111 Staff Room"),
    RoomModel("B-112 Lecture Hall"),
    RoomModel("B-113 Lecture Hall"),
    RoomModel("B-114 Accreditation Room"),
    RoomModel("B-115(a) Staff Room"),
    RoomModel("B-115 Library"),
    RoomModel("B-116 Department Computing Facility"),
    RoomModel("B-117 Digital Electronics Lab"),
    RoomModel("B-200 HOD CS"),
    RoomModel("B-200(a) Dean RD"),
    RoomModel("B-201 Training and Placement Officer (TPO)"),
    RoomModel("B-202 Lecture Hall"),
    RoomModel("B-203 Lecture Hall"),
    RoomModel("B-204 AI Lab"),
    RoomModel("B-205 Lecture Hall"),
    RoomModel("B-205(a) Staff Room"),
    RoomModel("B-206 Gents Washroom"),
    RoomModel("B-207 Ladies Washroom"),
    RoomModel("B-208 Lecture Hall"),
    RoomModel("B-209 Project Lab-2"),
    RoomModel("B-210 Staff Room"),
    RoomModel("B-211 Staff Room"),
    RoomModel("B-212 Lecture Hall"),
    RoomModel("B-213 Lecture Hall"),
    RoomModel("B-214 Knowledge Lab"),
    RoomModel("B-215 Staff Room"),
    RoomModel("B-215(a) Maintainance"),
    RoomModel("B-216 Lecture Hall"),
    RoomModel("B-217 Communication ENGG. Lab"),
    RoomModel("B-300 Professor"),
    RoomModel("B-300(a) Staff Room"),
    RoomModel("B-301 Dean PG"),
    RoomModel("B-302 Lecture Hall"),
    RoomModel("B-203 Aryabhata Hall"),
    RoomModel("B-304(a) Pascal Hall"),
    RoomModel("B-304(b) Discuss Room"),
    RoomModel("B-305 Lecture Hall"),
    RoomModel("B-306 Gents Washroom"),
    RoomModel("B-307 Ladies Washroom"),
    RoomModel("B-308 Software Lab"),
    RoomModel("B-309 Power Electronics and Drives Lab"),
    RoomModel("B-310 PG Lecture Hall"),
    RoomModel("B-310(a) Staff Room"),
    RoomModel("B-311 Staff Room"),
    RoomModel("B-311(a) Lecture Hall PG"),
    RoomModel("B-312 Lecture Hall "),
    RoomModel("B-313 Lecture Hall PG"),
    RoomModel("B-314 PG Lecture Hall "),
    RoomModel("B-315 PG Lecture Hall"),
    RoomModel("B-315(a) ISRO Respond Project"),
    RoomModel("B-316 PG and R&D Lab"),
    RoomModel("B-317 PG Lab")
  ];

  List<RoomModel> display_list = List.from(room_List);

  void updateList(String value) {
    setState(() {
      display_list = room_List.where((element) =>
          element.Room_name!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1f1545),
      appBar: AppBar(backgroundColor: const Color(0xFF1f1545),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const SizedBox(
                height: 10.0,
              ),
              TextField(
                onChanged: (value) => updateList(value),
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xff302360),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Enter the Current Location",
                  hintStyle: const TextStyle(color: Colors.blueGrey),
                  prefixIcon: const Icon(Icons.search),
                  prefixIconColor: Colors.purple.shade900,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Expanded(
                  child: display_list.isEmpty?
                  const Center(child: Text("No Result found",
                    style: TextStyle(color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ) :
                  ListView.builder(itemCount: display_list.length,
                      itemBuilder: (context, index) =>
                          ListTile(contentPadding: const EdgeInsets.all(8.0),
                            title: Text(
                              display_list[index].Room_name!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                  )
              ),
               const SizedBox(
                height: 0.0,
              ),
              TextField(
                onChanged: (value) => updateList(value),
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xff302360),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Enter the Destined Location",
                  hintStyle: const TextStyle(color: Colors.blueGrey),
                  prefixIcon: const Icon(Icons.search),
                  prefixIconColor: Colors.purple.shade900,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Expanded(
                  child: display_list.isEmpty?
                  const Center(child: Text("No Result found",
                    style: TextStyle(color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ) :
                  ListView.builder(itemCount: display_list.length,
                      itemBuilder: (context, index) =>
                          ListTile(contentPadding: const EdgeInsets.all(8.0),
                            title: Text(
                              display_list[index].Room_name!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                  )
              )
             ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
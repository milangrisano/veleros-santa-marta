import 'package:flutter/material.dart';


const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  DateTimeRange dateRange = DateTimeRange(start: DateTime(2024, 07, 29), end: DateTime(2026 , 07,30));
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
  final start = dateRange.start;
  final end = dateRange.end;
  final size = MediaQuery.of(context).size;
    return Container(
      decoration:  const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Artivela2.jpeg'),
          // image: AssetImage('assets/images/background_home.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.transparent,
            BlendMode.color
          ),
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                'Veleros Santa Marta',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 80,
                  // color: Colors.black,
                  color: Colors.grey[300],
                  fontFamily: 'Ephesis',
                  shadows: const [
                    Shadow(
                      offset: Offset(3.0, 3.0),
                      blurRadius: 2.0,
                      color: Color.fromRGBO(3, 31, 131, 1)
                      // color: Color.fromRGBO(19, 156, 227, 1),
                    )
                  ]     
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 2 /10,
          ),
          Container(
            color: Colors.white.withOpacity(0.3),
            height: size.height * 2/10,
            width: size.width * 3/10,
            child: Column(
              children: [
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownMenu(
                    initialSelection: list.first,
                    label: const Text('Selecione el Servicio', style: TextStyle(fontSize: 18),),
                    width: size.width * 2.1/10,
                    onSelected: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
                      return DropdownMenuEntry<String>(value: value, label: value);
                    }).toList(),
                  ),
                ),
                const Spacer(),
                // const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text(
                        '${start.day}/${start.month}/${start.year}',
                        style: const TextStyle(
                          backgroundColor: Colors.transparent,
                          fontSize: 30,
                          color:  Colors.blueAccent
                          ),
                        ),
                      onPressed: (){},
                    ),
                    const SizedBox(width: 12),
                    ElevatedButton(
                      child: Text('${end.day}/${end.month}/${end.year}', style: const TextStyle(fontSize: 30, color:  Colors.blueAccent),),
                      onPressed: (){},
                    ),
                  ]
                ),
                const Spacer(),
              ],
            )
          ),
        ],
        //?Activar aqui de ser requerido!!!
        // SubTitleMessages(),
      ),
    );
  }
}

//?Para ser activado
class SubTitleMessages extends StatelessWidget {
  const SubTitleMessages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: FittedBox(
        fit: BoxFit.fitWidth ,
        child: Text(
          'Navega con nosotros, disfruta del mar y los mas hermosos paisajes',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Color.fromRGBO(19, 156, 227, 1),
            fontFamily: 'Praise',
            shadows: [
              Shadow(
                offset: Offset(2.0, 2.0),
                blurRadius: 1.0,
                color: Colors.white
              )
            ]
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget bodyData() => DataTable(
     onSelectAll: (b){},
      sortColumnIndex: 0,
      sortAscending: false,
     columns: <DataColumn>[

        DataColumn(
          label: Text("First Name"),
          numeric: false,
          onSort: (i,b){
            setState(() {
              persons.sort( (a,b) => a.firstName.compareTo(b.firstName));
            });

          },
          tooltip:"To display the first name of the person"
        ),
         DataColumn(
             label: Text("Last Name"),
             numeric: false,
             onSort: (i,b){
                setState(() {
                   persons.sort( (a,b)=> a.lastName.compareTo(b.lastName));
                });
             },
             tooltip:"To display the first name of the person"
         ),
         DataColumn(
             label: Text("Email"),
             numeric: false,
             onSort: (i,b){},
             tooltip:"To display the first name of the person"
         ),
       DataColumn(
           label: Text("Phone"),
           numeric: false,
           onSort: (i,b){},
           tooltip:"To display the first name of the person"
       ),

     ],
    rows: persons.map( (person)=> DataRow(
       cells:[
         DataCell(
           Text(person.firstName),
           showEditIcon: false,
           placeholder: false
         ),
         DataCell(
           Text(person.lastName),
           showEditIcon: false,
           placeholder: false
         ),
         DataCell(
           Text(person.email),
           showEditIcon: false,
           placeholder: false
         ),
         DataCell(
             Text(person.phone),
             showEditIcon: false,
             placeholder: false
         )

       ]
    ) ).toList()
  );
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

        return Scaffold(
          appBar: AppBar( title: Text("Data Table"),),
          body:SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              width: width * 1.5,
              child: ListView(
                 children: <Widget>[
                    bodyData(),
                 ],
              ),
            ),
          )
        );

  }
}


class Person{

  final String firstName;
  final String lastName;
  final String email;
  final String phone;

  Person({this.firstName, this.lastName, this.email, this.phone});


}

var persons =<Person>[
   new Person(firstName: "John",lastName: "Petrucci",email: "johnpetrucci@gmail.com",phone: "9087869658999"),
   new Person(firstName: "Paul",lastName: "Gilbert",email: "paulgilbert@gmail.com",phone: "578439025748932"),
   new Person(firstName: "Andy",lastName: "James",email: "andyjames@gmail.com",phone: "840-32578-900"),
   new Person(firstName: "John",lastName: "Mayor",email: "johnmayor@gmail.com",phone: "8909-898-8989"),
   new Person(firstName: "Eric",lastName: "Johnson",email: "ericjohnson@gmail.com",phone: "890-435-687s"),
   new Person(firstName: "Govan",lastName: "Guthrie",email: "govanguthrie@gmail.com",phone: "234-890-8699"),
   new Person(firstName: "Steven",lastName: "Gerrad",email: "stevengarrad@gmail.com",phone: "856-489-9876"),
   new Person(firstName: "Isaac",lastName: "home",email: "isaachome@gmail.com",phone: "9087869658999"),
   new Person(firstName: "Olivia",lastName: "Home",email: "olivaihome@gmail.com",phone: "9087869658999"),
   new Person(firstName: "Mercy",lastName: "Home",email: "mercyhome@gmail.com",phone: "9087869658999"),
];
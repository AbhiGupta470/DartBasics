MaterialApp(
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Color.fromARGB(247, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("BFit", style: TextStyle(color: Colors.black)),
        ),
        body: ListView(
          children: [
            Container(
              //margin: EdgeInsets.only(left: 64),
              //color: Colors.amber,
              child: Image(
                image: AssetImage('images/FitnessApp.jpg'),
              ),
            ),
            Text(""),
            Text(""),
            Text(""),
            Text(""),
            Text(""),
            Text(""),
            Text("Personalized Training",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                )),
            Text(""),
            Text(""),
            OutlinedButton(
                onPressed: () {},
                child: Text("Explore",
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontStyle: FontStyle.italic,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)))
          ],
        ),
      ))

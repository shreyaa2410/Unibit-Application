import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/logo.png'),
            radius: 10,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            color: Colors.white,
            onPressed: () {
              print("Contact is starred");
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Text(
                          'Hello, Deepak',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w800),
                        ),
                        Image.asset(
                          'assets/hello.png',
                          height: 20,
                          width: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2016/10/14/17/33/philadelphia-1740685_960_720.jpg',
                        height: 66,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      child: Container(
                          padding: EdgeInsets.only(top: 20),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            'UNIBIT FANTASY IS LIVE...',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8, bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    gameCard1(),
                    gameCard2(),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Material(
                child: Center(
                  child: InkWell(
                    focusColor: Colors.grey,
                    hoverColor: Colors.white,
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.headphones,
                          color: Colors.grey,
                        ),
                        Text(
                          "Contact",
                          style: TextStyle(color: Colors.grey),
                        ),
                        //const Padding(padding: EdgeInsets.all(10))
                      ],
                    ),
                  ),
                ),
              ),
              Material(
                child: Center(
                  child: InkWell(
                    focusColor: Colors.grey,
                    hoverColor: Colors.white,
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.wallet,
                          color: Colors.grey,
                        ),
                        Text(
                          "Wallet",
                          style: TextStyle(color: Colors.grey),
                        ),
                        //const Padding(padding: EdgeInsets.only(left: 10))
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(), //to make space for the floating button
              Material(
                child: Center(
                  child: InkWell(
                      focusColor: Colors.grey,
                      hoverColor: Colors.white,
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.share,
                            color: Colors.grey,
                          ),
                          Text(
                            "Share",
                            style: TextStyle(color: Colors.grey),
                          ),
                          //const Padding(padding: EdgeInsets.only(right: 10))
                        ],
                      )),
                ),
              ),
              Material(
                child: Center(
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(color: Colors.grey),
                        )
                        //const Padding(padding: EdgeInsets.only(left: 10))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget gameCard1() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              width: 500,
              height: 141,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Image(
                    image: AssetImage('assets/playludo.jpg'),
                    alignment: Alignment.center,
                    height: double.infinity,
                    width: 200,
                    fit: BoxFit.fitWidth),
              ),
            ),
            Container(
              child: Text(
                'Play Ludo and Earn Money',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/p1.png'),
                            radius: 15,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/p2.png'),
                            radius: 15,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/p3.png'),
                            radius: 15,
                            backgroundColor: Colors.white,
                          ),
                        ],
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              '5,00,000+',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Players',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 30),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          width: 110,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.yellow,
                                  Colors.orange,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'PLAY NOW',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget gameCard2() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              width: 500,
              height: 141,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Image(
                    image: AssetImage('assets/cricket.png'),
                    alignment: Alignment.center,
                    height: double.infinity,
                    width: 200,
                    fit: BoxFit.fitWidth),
              ),
            ),
            Container(
              child: Text(
                'Play Cricket Fantasy League',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/p1.png'),
                            radius: 15,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/p2.png'),
                            radius: 15,
                            backgroundColor: Colors.white,
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/p3.png'),
                            radius: 15,
                            backgroundColor: Colors.white,
                          ),
                        ],
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              '5,00,000+',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Players',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 30),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          width: 110,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.yellow,
                                  Colors.orange,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'PLAY NOW',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

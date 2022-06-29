import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void entrou() {
    setState(() {
      _counter++;
    });
  }

  void saiu() {
    setState(() {
      _counter--;
    });
  }

  bool get isEmpty => _counter == 0;
  bool get isfull => _counter == 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/sorvete.jpg'),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                isfull ? 'Estabelecimento Cheio!' : 'Pode entrar!',
                style: TextStyle(
                  fontSize: 30,
                  color: isfull ? Colors.red : Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: Text(
                  _counter.toString(),
                  style:  TextStyle(fontSize: 100, color: isfull ? Colors.red : Colors.white,),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: isEmpty ? null : saiu,
                    style: TextButton.styleFrom(
                        fixedSize: const Size(100, 100),
                        backgroundColor: Colors.white,
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        )),
                    child: const Text(
                      'Saiu',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                  TextButton(
                    onPressed: isfull ? null : entrou,
                    style: TextButton.styleFrom(
                        fixedSize: const Size(100, 100),
                        backgroundColor: Colors.white,
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        )),
                    child: const Text(
                      'Entrou',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

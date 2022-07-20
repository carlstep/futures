import 'dart:io';

void main() {
  goEatPizza();
}

void goEatPizza() async {
  // the sequence of events
  order();
  //String pizza = await getPizzaOrdered();
  //print('Testing.... ${getPizzaOrdered()}');
  getPizzaOrdered().then((value) {
    // asynchronous
    //print('Testing.... $value');
    eatAndPay(value);
  });
  chatting();
}

void order() {
  print('#1 Done ordering pizza.');
}

Future<String> getPizzaOrdered() async {
  Duration waitTime = Duration(seconds: 4);
  String pizza = 'No pizza yet';
  await Future.delayed(waitTime, (() {
    // using future will not stop the code continuing
    pizza = 'Carnivore';
    print('Pizza delivered successfully.');
  }));
  return Future<String>.value(pizza);
}

void chatting() {
  print('Chatting...');
}

void eatAndPay(String pizza) {
  Duration waitTime = Duration(seconds: 4);
  sleep(waitTime); // halts the application for the given duration
  print('Paid for $pizza pizza on my way home....');
}

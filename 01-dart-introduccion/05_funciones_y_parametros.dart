void main() {
  print(greetEveryone());
  print(arrowEveryone());
  print('Suma ${addTwoNumbers(2, 3)}');
  print('Suma ${addTwoNumbersOptionals(2)}');
  print('Suma ${addTwoNumbersOptionals(2, 9)}');

  print(greetSomeone('Mario'));
}

String greetEveryone() {
  return 'Hello everyone!';
}

String arrowEveryone() => 'Hello from arrow!';

int addTwoNumbers(int a, int b) => a + b;
int addTwoNumbersOptionals(int a, [int b = 0]) => a + b;

String greetSomeone(String name) {
  return 'Hello $name! aro que';

}
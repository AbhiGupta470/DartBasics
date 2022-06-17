import 'dart:io';
//This is the dynamic calculator which allows user to keep calculating until he says No by running the program one time only.
void main()
{ //Assignment of Day-6
  TakeInput();
}
void Sum(int num1,int num2) {
  print("You have entered the 'addition' operator,so the result is: ${num1 + num2}");
  print("If you want to enter the numbers again for calculation then type 'Yes' or else type 'No': ");
  String? store = stdin.readLineSync()!;
  if(store=="Yes")
    TakeInput();
  else
    return;
}
  void Subtraction(int num1,int num2) {
    print("You have entered the 'subtraction' operator,so the result is: ${num1-num2}");
    print("If you want to enter the numbers again for calculation then type 'Yes' or else type 'No': ");
    String? store = stdin.readLineSync()!;
    if(store=="Yes")
      TakeInput();
    else
      return;
  }
  void Multiplication(int num1,int num2) {
    print("You have entered the 'multiplication' operator,so the result is: ${num1 * num2}");
    print("If you want to enter the numbers again for calculation then type 'Yes' or else type 'No': ");
    String? store = stdin.readLineSync()!;
    if(store=="Yes")
      TakeInput();
    else
      return;
  }
  void Division(int num1,int num2)
  {
    print("You have entered the 'division' operator,so the result is: ${num1 / num2}");
    print("This is the result in decimal if you want the result in integer then type 'Integer' or else type 'Integer Not' below: ");
    String? store =  stdin.readLineSync()!;
    if(store=="Integer")
      print("The integer division is: ${num1 ~/ num2}");
    print("If you want to see the remainder of this division then type 'Remainder' or else type 'No Remainder' below: ");
    String? store2 = stdin.readLineSync()!;
    if(store2=="Remainder") {
      print("The remainder of the division is: ${num1 % num2}");
      print("If you want to enter the numbers again for calculation then type 'Yes' or else type 'No': ");
      String? store3 = stdin.readLineSync()!;
      if(store3=="Yes")
        TakeInput();
      else
        return;
    }
    else return;
  }
  void TakeInput()
  {
    print("Enter the first number: ");
    int? num1 = int.parse(stdin.readLineSync()!);
    print("Enter the second number: ");
    int? num2 = int.parse(stdin.readLineSync()!);
    print("Hey there!, enter your mathematical operator symbol: ");
    String? char = stdin.readLineSync()!;
    switch(char)
    {
      case "+":
        {
          Sum(num1,num2);
          break;
        }
      case "-":
        {
          Subtraction(num1,num2);
          break;
        }
      case "*":
        {
          Multiplication(num1,num2);
          break;
        }
      case "/":
        {
          Division(num1,num2);
          break;
        }

      default:
        print("You have entered an invalid character, please re-enter it again.");
    }
  }

 import 'dart:io';
void main()
{ //Assignment of the day-4
	stdout.write("Enter the principal: ");
	double? principal = double.parse(stdin.readLineSync()!);
	stdout.write("Enter the rate: ");
	double? rate = double.parse(stdin.readLineSync()!);
	stdout.write("Enter the time: ");
	double? time = double.parse(stdin.readLineSync()!);
	double simpleinterest = (principal*rate*time)/100;
	stdout.write("The simple interest of the following details is: $simpleinterest");
}

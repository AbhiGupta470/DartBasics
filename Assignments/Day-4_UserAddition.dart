import 'dart:io';
void main()
{ // Assignment of Day-4
	stdout.write("Enter the first number: ");
	int? num1 = int.parse(stdin.readLineSync()!);
	stdout.write("Enter the second number: ");
	int? num2 = int.parse(stdin.readLineSync()!);
	stdout.write("The sum of the entered two numbers is: ${num1 + num2}");
}

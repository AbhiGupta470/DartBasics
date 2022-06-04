void main()
{
  //Day-1 I am learning dart programming now
  print("Hello, I am learning dart now");
  for (int i = 0; i < 5; i++) {
    print('hello ${i + 1}');
  }

  //Day-2 Learning variables today
  // Assignment of the day
  List myList = [1,2,3,4,5];
  int i=0;
  // Solution-1
  myList.forEach((element) {myList[i] = element*5; i++;});
  // Solution-2
  // for(int i=0;i<myList.length;i++)
  //   {
  //     myList[i] = myList[i]*5;
  //   }
  print(myList);
}

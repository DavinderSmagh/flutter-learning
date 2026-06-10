void main(){
  int numbers = 63;

  String grade = numbers >= 90 && numbers <= 100 ? 'A' : numbers >= 80 && numbers <= 90 ? 'B' : numbers >= 70 && numbers <= 79 ? 'C' : numbers >= 60 && numbers <= 69 ? 'D'  :'F';
  print(grade);


  //  String grade = '';
  // if (numbers >=90 && numbers <= 100 ){
  //   print('you are passed with grade A ');
  // }else if (numbers >= 80 && numbers <= 90){
  //   print ('your grade is B');
  // }else if (numbers >= 70 && numbers <= 79){
  //   print ('grade is C');
  // }else if (numbers >= 60 && numbers <= 69){
  //   print('grade is D');
  // }else{print ('grade is F');}

  // print (grade);

}
// void main(){
//   int age = 20;

//   if(age >= 18 ){
//     print ('you are an adult');
//   }else{
//     print('you are not an adutl');
//   }
// }


// void main (){
//   String light = '';

//   if(light == 'red'){
//     print ('stop light is red ');
//   }else if ( light == 'yellow'){
//     print('wait for the light to turn green');
//   }else if (light == 'green'){
//     print('the light is green');
//   }else {
//     print('no light hai cross kar sakta hai bhai par dhyan se cross karna');
//   }
// }





// void main(){
  // int number = 5 ;
  // String result = (number % 2 == 0 ) ? 'even': 'false';
  // print(result);

  // int temp = 30 ;
  // String temperature = temp > 25 ? 'its too hot' : 'cold ';
  // print ('the temperatuire is very high  $temperature ');

  // int numb = 32 ;
  // String marks  = numb >= 33 ? 'you are paas in examination':'you failed this time try next time with proper prepration ';
  // print (marks);



  // int a = 21 ;
  // String girlfriend = a % 2 == 0  ? 'i love you ': 'i hate you ';
  // print (girlfriend);

  // int marks = 83;
  // String obtained_marks = marks >= 90 ? 'A' : marks >= 75 ? 'B' : marks < 50 ? 'C' :'F';
  // print ('you have obtained the $obtained_marks grade in examination.');





// }









void main (){
  int day = 5 ;
  String dayName = '';

  switch(day){
    case 1:
    dayName = 'monday';
    break;

    case 2: 
    dayName = 'tuesday';
    break;

    case 3:
    dayName = 'wednesday';
    break;

    case 4:
    dayName = 'thrusday';
    break;

    case 5:
    dayName = ' friday ';
    break;

    case 6:
    dayName = ' saturday';
    break;

    case 7:
    dayName = 'sunday';
    break;
    default: 'invalid day';
  }

  print('the day $day of week is $dayName');
}


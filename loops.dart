void main (){
  
  /// for loop 
  
  // for (int  i = 3 ; i <= 10  ; i += 3){
  //   print(i);
  // }


// for (int i = 1 ; i <= 10 ; i ++){
//   print (' 5 X $i = ${5 * i }');
// }




/// while loop 


// int i = 1 ; 
// while (i <= 5 ){
//   print (i);
//   i ++;
// }




// int attempt = 1 ; 
// String password = 'dart';

// while (password != 'dart123' && attempt <= 3){
//   print ( ' attempt $attempt :  wrong password ');
//   attempt ++;
//   if ( attempt == 3 ){
//     password = 'dart123';
//   }
// }
// print ('login succesfully');



// }




// int a = 5 ;
// while (a <= 4){
//   print (a);
// }print('done');



// int k = 5;

// do {
//     print(k);
//     k++;
//   } while (k <= 5);
//   print('Do-while loop done');



// print ('====BREAK====');
// for (int i = 1 ; i <= 10 ; i++){
//   if (i == 5 ){
//     print ('found 5 ! stopping loop');
//     break;
//   }
//   print (i);
// }

// -







// print ('==== to find the even numbers ====');

// for (int i = 20 ; i >=1 ; i --){
//   if (i % 2 == 0 ){
//     print ('first even number is $i');
//     break ;
//   }
  
// }


// for ( int i = 20 ; i >= 1 ; i --){
//   if( i % 2 != 0){
//     print ('first odd number is $i');
//     break;
//   }
// }



// int sum = 0;
//   for (int i = 1; i <= 100; i++) {
//     sum += i; // same as sum = sum + i
//   }
//   print('Sum 1 to 100 = $sum');

// for(int row = 1 ; row <= 5 ; row ++){
//   String stars = '';
//   for(int col = 1 ; col <= row ; col ++){
//   stars += '*';
// }
// print(stars);
// }

int peak = 6 ;
for ( int i = 1 ; i <= peak ; i ++){
  String line = '';
  
  for ( int j = 1 ; j <= i ; j ++){
   line += ' $j';
   
  }
  print (line);
}
 for (int row = peak - 1; row >= 1; row--) {
    String line = '';
    for (int col = 1; col <= row; col++) {
      line += ' $col';
    }
    print(line);
  }



}


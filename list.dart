void main(){
   List<int> numbers =[1, 2 , 3, 4, 5];
   List<String> names = [ 'Davinder', 'Sudip', 'Yash' , 'Harshi ', 'Sakshi'];
   List<String> empty = [];
   List<double> dotted = [10.3 , 20.3 , 32.3, 33.2];


   for( int i = 0 ; i< names.length ; i ++){
    print('${i+ 1}.${names[i]}');
   }

   names.forEach((name) {
    print('hello ' $name);
   });


  //  print(numbers[2]);
  //  print(names[3]);
  //  print(dotted.last);
  //  print(empty.length);


//    names.add('Kirti');
//    print(names);

//    numbers.insert(1, 23);
//    print(numbers);

//    print(dotted.contains(33));

//    print(empty);
}



// void main(){
// Map<String , int > scores = {
//   'davinder': 45 ,
//   'sudip': 20,
//   'darsh': 23

// };

// scores['deepa']= 78;
// print(scores);

// scores['deepa']=50;
// print(scores['deepa']);

// print(scores);
// print(scores.containsKey('priya'));
// print(scores);
// }

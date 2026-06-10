// class Dog {
//   String name;
//   String breed;

//   Dog(this.name, this.breed);

//   void introduce() {
//     print('hi i am $name and my breed is $breed');
//   }
// }

// void main() {
//   Dog d1 = Dog('bruno', 'pitbull');
//   Dog d2 = Dog('lisa', 'pug');

//   d1.introduce();
//   d2.introduce();
// }

// class company {
//   int empId;
//   String name;

//   company(this.empId, this.name);

//   void employeDetails() {
//     print('my name is $name and my employee id is $empId');

//     print('i want to request to for an increement ');
//   }
// }

// void main() {
//   company E1 = company(123, 'davinder');
//   company E2 = company(222, 'sudip');

//   E1.employeDetails();
//   E2.employeDetails();
// }
// class Person {
//   String name;
//   int age;
  
//   Person(this.name, this.age);
  
//   void introduce() {
//     print('Hi, I am $name and I am $age years old');
//   }
// }

// class person { 
//   String name ; 
//   int age ; 

//   person(this.name , this.age);

//   void introduce(){

//     print('hi my name is $name and my age is $age');
//   }
// }

// void main(){
//   person p1 = person('sudip', 22);

//   p1.introduce();
// }



class chef {
 final String name ; 
 final int experiance;
 final bool senior ; 

  chef(this.name , this.experiance , this.senior);  

  String speciality = experiance > 5 ? 'masterchef' :'junior chef';



}
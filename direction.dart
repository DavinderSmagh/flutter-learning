void main(){
 String Direction = 'NORTH';


 switch(Direction){
  case 'NORTH':
  print('you are going to the north direction ');
  print('if you want to go to south take a u turn ');

  break;

  case 'South':
  print (' you are going to south direction ');
  print ( ' if you want to go to east turn left ');

  break ;

  case 'east':
  print (' you are going to east ');
  print (' if you want to gpo to west make a you  turn ');

  break ;


  case 'west':
  print (' you are going to the west direction ');
  print ('if you want to go to north take a right turn ');

  default :
  print('invalid diretion ');
  print ('enter a valid direction ');

 }
}
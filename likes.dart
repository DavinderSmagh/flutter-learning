// String likes(List<String> names) {
//   switch (names.length) {
//     case 0:
//       return 'no one likes this';

//     case 1:
//       return '${names[0]} likes this';

//     case 2:
//       return '${names[0]} and ${names[1]} like this';

//     case 3:
//       return '${names[0]}, ${names[1]} and ${names[2]} like this';

//     default:
//       int others = names.length - 2;
//       return '${names[0]}, ${names[1]} and $others others like this';
//   }
// }

// void main() {
//   print(likes([]));
//   print(likes(['Peter']));
//   print(likes(['Jacob', 'Alex']));
//   print(likes(['Max', 'John', 'Mark']));
//   print(likes(['Alex', 'Jacob', 'Mark', 'Max']));
//   print(likes(['Alex', 'Jacob', 'Mark', 'Max', 'Dave']));
// }

String likes(List<String> names) {
  switch (names.length) {
    case 0:
      return 'no one likes this ';

      case 1:
      return '${names[0]} likes this ';

      case 2:
      return '${names[0]} and ${names[1]} likes this ';

      case 3:
      return '${names[0]} , ${names[1]} and $names[2] likes this ';

      default:
      int others = names.length - 2 ;
      return '${names[0]} , ${names[1]} and $others likes this ';
  }
}

void main() {
  print(likes([]));
}

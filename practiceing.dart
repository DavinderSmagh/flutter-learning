// Future<Map<String, dynamic>> fetchWeather(String city) async {
//   await Future.delayed(Duration(seconds: 2));

//   Map<String, Map<String, dynamic>> weatherData = {
//     'Kotkapura'  : {'temp': 35, 'condition': 'Sunny ☀️',  'humidity': 60},
//     'Ludhiana'   : {'temp': 32, 'condition': 'Cloudy ⛅', 'humidity': 70},
//     'Delhi'      : {'temp': 38, 'condition': 'Hot 🔥',    'humidity': 45},
//     'Mumbai'     : {'temp': 30, 'condition': 'Rainy 🌧️', 'humidity': 90},
//   };

//   if (!weatherData.containsKey(city)) {
//     throw Exception('City "$city" not found!');
//   }

//   return weatherData[city]!;
// }

// Future<void> showWeather(String city) async {
//   try {
//     print('⏳ Fetching weather for $city...');
//     Map<String, dynamic> weather = await fetchWeather(city);

//     print('🌍 Weather in $city:');
//     print('  🌡️  Temperature : ${weather['temp']}°C');
//     print('  🌤️  Condition   : ${weather['condition']}');
//     print('  💧 Humidity    : ${weather['humidity']}%');

//   } catch (e) {
//     print('❌ Error: $e');
//   } finally {
//     print('');
//   }
// }

// void main() async {
//   await showWeather('Kotkapura');
//   await showWeather('Delhi');
//   await showWeather('London');  // not found!
// }



// Future<bool> checkStock(String item) async {
//   await Future.delayed(Duration(seconds: 1));
//   List<String> inStock = ['Phone', 'Laptop', 'Headphones', 'Watch'];
//   return inStock.contains(item);
// }

// Future<String> processPayment(double amount) async {
//   await Future.delayed(Duration(seconds: 2));
//   if (amount <= 0) throw Exception('Invalid amount!');
//   if (amount > 100000) throw Exception('Amount exceeds limit!');
//   return 'PAY${DateTime.now().millisecondsSinceEpoch}';
// }

// Future<String> placeOrder(String item, double amount) async {
//   await Future.delayed(Duration(seconds: 1));
//   return 'ORD${DateTime.now().millisecondsSinceEpoch}';
// }

// Future<void> buyItem(String item, double amount) async {
//   print('🛒 Purchasing: $item for ₹$amount');
//   print('─────────────────────────');

//   try {
//     // Step 1: Check stock
//     print('⏳ Checking stock...');
//     bool inStock = await checkStock(item);
//     if (!inStock) throw Exception('$item is out of stock!');
//     print('✅ $item is available!');

//     // Step 2: Process payment
//     print('⏳ Processing payment ₹$amount...');
//     String paymentId = await processPayment(amount);
//     print('✅ Payment done! ID: $paymentId');

//     // Step 3: Place order
//     print('⏳ Placing order...');
//     String orderId = await placeOrder(item, amount);
//     print('✅ Order placed! ID: $orderId');

//     print('🎉 $item will be delivered in 2-3 days!\n');

//   } catch (e) {
//     print('❌ Purchase failed: $e\n');

//   } finally {
//     print('🏁 Transaction complete\n');
//   }
// }

// void main() async {
//   await buyItem('Phone', 15000);
//   await buyItem('Tablet', 25000);   // out of stock
//   await buyItem('Laptop', -500);    // invalid amount
// }


// class BankAccount {
//   String owner;
//   double balance;

//   BankAccount(this.owner, this.balance);
// }

// Future<void> verifyAccount(BankAccount account) async {
//   await Future.delayed(Duration(milliseconds: 500));
//   if (account.balance < 0) {
//     throw Exception('Account ${account.owner} is invalid!');
//   }
//   print('✅ ${account.owner} account verified');
// }

// Future<void> transferMoney(
//   BankAccount from,
//   BankAccount to,
//   double amount,
// ) async {
//   await Future.delayed(Duration(seconds: 2));

//   if (amount <= 0) throw Exception('Invalid amount!');
//   if (from.balance < amount) {
//     throw Exception('Insufficient balance in ${from.owner} account!');
//   }

//   from.balance -= amount;
//   to.balance   += amount;
// }

// Future<void> performTransfer(
//   BankAccount from,
//   BankAccount to,
//   double amount,
// ) async {
//   print('💸 Transfer: ₹$amount from ${from.owner} to ${to.owner}');
//   print('─────────────────────────────────────');

//   try {
//     // Verify both accounts
//     print('⏳ Verifying accounts...');
//     await verifyAccount(from);
//     await verifyAccount(to);

//     // Show before balance
//     print('\n📊 Before Transfer:');
//     print('  ${from.owner}: ₹${from.balance}');
//     print('  ${to.owner}  : ₹${to.balance}');

//     // Transfer
//     print('\n⏳ Transferring ₹$amount...');
//     await transferMoney(from, to, amount);
//     print('✅ Transfer successful!');

//     // Show after balance
//     print('\n📊 After Transfer:');
//     print('  ${from.owner}: ₹${from.balance}');
//     print('  ${to.owner}  : ₹${to.balance}');

//   } catch (e) {
//     print('❌ Transfer Failed: $e');

//   } finally {
//     print('🏁 Transaction ended\n');
//   }
// }

// void main() async {
//   BankAccount davinder = BankAccount('Davinder', 10000);
//   BankAccount rahul    = BankAccount('Rahul',    5000);

//   // Success transfer
//   await performTransfer(davinder, rahul, 3000);

//   // Fail: insufficient balance
//   await performTransfer(rahul, davinder, 50000);

//   // Fail: invalid amount
//   await performTransfer(davinder, rahul, -100);
// }



// Future<List<int>> fetchMarks(String student) async {
//   await Future.delayed(Duration(seconds: 1));

//   Map<String, List<int>> database = {
//     'Davinder' : [85, 92, 78, 96, 88],
//     'Rahul'    : [70, 65, 80, 75, 60],
//     'Priya'    : [95, 98, 92, 97, 99],
//   };

//   if (!database.containsKey(student)) {
//     throw Exception('Student "$student" not found!');
//   }

//   return database[student]!;
// }

// Future<void> generateResult(String studentName) async {
//   print('📋 Generating result for $studentName...');

//   try {
//     List<int> marks = await fetchMarks(studentName);

//     // Calculate stats
//     int total     = marks.reduce((a, b) => a + b);
//     double avg    = total / marks.length;
//     int highest   = marks.reduce((a, b) => a > b ? a : b);
//     int lowest    = marks.reduce((a, b) => a < b ? a : b);
//     String grade  = avg >= 90 ? 'A+' : avg >= 80 ? 'A'
//                   : avg >= 70 ? 'B'  : avg >= 60 ? 'C' : 'F';

//     print('');
//     print('══════════ RESULT CARD ══════════');
//     print('Student  : $studentName');
//     print('Marks    : $marks');
//     print('Total    : $total / ${marks.length * 100}');
//     print('Average  : ${avg.toStringAsFixed(1)}%');
//     print('Highest  : $highest');
//     print('Lowest   : $lowest');
//     print('Grade    : $grade');
//     print('Status   : ${avg >= 50 ? "PASS ✅" : "FAIL ❌"}');
//     print('═════════════════════════════════\n');

//   } catch (e) {
//     print('❌ Error: $e\n');

//   } finally {
//     print('🏁 Result generated\n');
//   }
// }

// void main() async {
//   await generateResult('Davinder');
//   await generateResult('Priya');
//   await generateResult('Unknown');  // not found
// }




// Future<List<String>> fetchPosts(String username) async {
//   await Future.delayed(Duration(seconds: 2));

//   Map<String, List<String>> posts = {
//     'davinder': [
//       '🌅 Good morning everyone!',
//       '💻 Learning Flutter today!',
//       '🍕 Pizza for lunch!',
//     ],
//     'rahul': [
//       '⚽ Watched a great match!',
//       '📚 Reading new book',
//     ],
//   };

//   if (!posts.containsKey(username)) {
//     throw Exception('User @$username not found!');
//   }

//   return posts[username]!;
// }

// Future<int> fetchLikes(String post) async {
//   await Future.delayed(Duration(milliseconds: 500));
//   return post.length * 3; // fake likes based on post length
// }

// Future<void> loadFeed(String username) async {
//   print('📱 Loading feed for @$username...\n');

//   try {
//     // Fetch posts
//     List<String> posts = await fetchPosts(username);
//     print('Found ${posts.length} posts!\n');

//     // Fetch likes for each post
//     for (int i = 0; i < posts.length; i++) {
//       int likes = await fetchLikes(posts[i]);
//       print('Post ${i + 1}: ${posts[i]}');
//       print('         ❤️  $likes likes\n');
//     }

//   } catch (e) {
//     print('❌ Failed to load feed: $e');

//   } finally {
//     print('🏁 Feed loading complete\n');
//   }
// }

// void main() async {
//   await loadFeed('davinder');
//   await loadFeed('ghost_user');   // not found
// }



// Using Future.wait() - runs ALL at same time!

// Future<String> fetchName() async {
//   await Future.delayed(Duration(seconds: 2));
//   return 'Davinder Singh';
// }

// Future<int> fetchAge() async {
//   await Future.delayed(Duration(seconds: 3));
//   return 23;
// }

// Future<String> fetchCity() async {
//   await Future.delayed(Duration(seconds: 1));
//   return 'Kotkapura';
// }

// void main() async {
//   print('⏳ Loading all data at SAME TIME...\n');

//   // ALL three run simultaneously!
//   // Total wait = 3 seconds (longest one)
//   // NOT 2+3+1 = 6 seconds!
//   List results = await Future.wait([
//     fetchName(),
//     fetchAge(),
//     fetchCity(),
//   ]);

//   print('✅ All data loaded!');
//   print('Name : ${results[0]}');
//   print('Age  : ${results[1]}');
//   print('City : ${results[2]}');
// }
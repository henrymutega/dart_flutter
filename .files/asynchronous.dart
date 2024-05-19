import 'dart:async';

void main() async {
  // Start the asynchronous operation
  print("Start of main program ()");
  String result = await fetchUserData();
  // This line will be executed only after fetchUserData() completes
  print("End of main() - User data: $result");
}

Future<String> fetchUserData() {
  // Simulate fetching user data asynchronously
  return Future.delayed(Duration(seconds: 2), () {
    return 'John Doe';
  });
}


//Explanation:

// main() is marked with async keyword, indicating that it contains asynchronous operations.
// Inside main(), we call fetchUserData(), which returns a Future<String>. We use await to asynchronously wait for this future to complete.
// While waiting for fetchUserData() to complete, the execution of main() is paused. This allows other code to run in the meantime.
// Once fetchUserData() completes, its result is assigned to result, and the execution of main() resumes.
// We print the result obtained from fetchUserData().
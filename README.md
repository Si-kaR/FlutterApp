# Date: June 01, 2023|| Thursday || Day 5?

A new Flutter project.

## Still Learning Dart Programming
## Learning about the;
### 1. For makinng choices. ( ?? )
It works such that, when placed between two variables, it takes the condition and check the item of the left of the ??. If that item satisfies the condition then it no longer considers the rest and hence goes on to implement the command linked to the condition. 
Otheriwse, it'll compare the other items in the right sequentially to see which item meets teh condition. 

### 2. Using the .?
Sometimes, example, Lists are optional and could have null.With such lists, when finding
the length of items within the list, the program gets confused not knowning what to do. 
It tries to say that the list has a null ( just because the list was made optional ). 
We use the .? to tell the program to check. If there is a list has no null, then it should print
the length of the list. Below is a syntax

final length = list.?length;
//So here, it will check for whether or not the list is a null. If it isn't, it will print the int. 
//otherwise it'll return an error!

Now, to mitigate this error, what we can do is, tell the program that after checking, if indeed
the list is not a null, then it should print the int value,
otherwise if it is a null, then it should print zero.That way, we won't have our program returning errors we can't find.   Below is a syntax showing how this can be done. 

final length = list.length.?length ?? 0;
//here, it is saying first check if the list is an int. If it is, then print the value (or number of items in the list). if not, print the zero indicating it is a null. 


This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

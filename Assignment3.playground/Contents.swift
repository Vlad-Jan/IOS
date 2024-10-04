// Prob 1
for number in 1...100 {
    if number % 3 == 0 && number % 5 == 0 {
        print("FizzBuzz")  // divisible by 3 and 5
    } else if number % 3 == 0 {
        print("Fizz")  // divisible by 3
    } else if number % 5 == 0 {
        print("Buzz")  // divisible by 5
    } else {
        print(number) // ordinary number
    }
}
/// idk why loop does not iterate through all numbers and only show me 4 answers in my xcode

// Prob 2

// Function for prime numbers
func isPrime(_ number: Int) -> Bool {
    // 0 and 1 will not be considered prime numbers
    if number < 2 {
        return false
    }
    
    // Check for our divisors, if >2, then not prime
    for i in 2..<number {
        if number % i == 0 {
            return false  // If divisible, it's not prime
        }
    }
    
    return true  // If no divisors found, =  prime
}
for number in 1...100 {
    if isPrime(number) {
        print(number)
    }
}



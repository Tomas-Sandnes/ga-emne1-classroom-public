secret_number = 21
attempts_left = 5
guessed_correctly = False

while attempts_left > 0 and not guessed_correctly:
    guess = int(input("Guess the number: (1-30) "))
    if guess == secret_number:
        print("Correct!")
        guessed_correctly = True
    elif guess < secret_number:
        print("Too low!")
    else:
        print("Too high!")
    attempts_left -= 1

if not guessed_correctly:
    print(f"Then number was {secret_number}")
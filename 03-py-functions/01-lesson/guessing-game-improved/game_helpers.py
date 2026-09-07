def read_guess():
    guess = int(input("Guess a number: (1-30) "))
    return guess


def check_guess(guess, secret_number):
    if guess == secret_number:
        return "correct"
    elif guess < secret_number:
        return "low"
    else:
        return "high"


def show_feedback(result):
    """Print correct/low/high guess-feedback
    for the player."""
    if result == "correct":
        print("Correct!")
    elif result == "low":
        print("Too low!")
    elif result == "high":
        print("Too high!")
    else:
        print(f'Error, invalid result: "{result}"')



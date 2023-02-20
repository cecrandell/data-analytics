import random

print("Let's play!")

options = ["r", "p", "s"]

computer_choice = random.choice(options)


def start():
    user_choice = input(
        "Please type: r for rock, p for paper, or s for scissors\n")

    if (user_choice == "r" and computer_choice == "p"):
        print("You: rock. Computer: paper.")
        print("You lose!")

    elif (user_choice == "r" and computer_choice == "s"):
        print("You: rock. Computer: scissors.")
        print("You won!")

    elif (user_choice == "r" and computer_choice == "r"):
        print("You: rock. Computer: rock.")
        print("Tie!")

    elif (user_choice == "p" and computer_choice == "p"):
        print("You: paper. Computer: paper.")
        print("Tie!")

    elif (user_choice == "p" and computer_choice == "s"):
        print("You: paper. Computer: scissors.")
        print("You lose!")

    elif (user_choice == "p" and computer_choice == "r"):
        print("You: paper. Computer: rock.")
        print("You won!")

    elif (user_choice == "s" and computer_choice == "p"):
        print("You: scissors. Computer: paper.")
        print("You won!")

    elif (user_choice == "s" and computer_choice == "s"):
        print("You: scissors. Computer: scissors.")
        print("Tie!")

    elif (user_choice == "s" and computer_choice == "r"):
        print("You: scissors. Computer: rock.")
        print("You lose!")

    else:
        print("Hmmmm, please try again: 'r', 'p', or 's'.")
        start()


start()

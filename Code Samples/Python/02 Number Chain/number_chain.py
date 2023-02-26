play_instructions = "y"

while play_instructions == "y":
    user_number = int(input("How many numbers? "))
    for i in range(user_number):
        print(i)
    play_instructions = input("Continue: (y)es or (n)o? ")

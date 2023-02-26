play_instructions = "y"

start = 0

while play_instructions == "y":
    user_number = int(input("How many numbers? "))
    for i in range(start, int(user_number) + start):
        print(i)
    start = start + int(user_number)
    play_instructions = input("Continue: (y)es or (n)o? ")

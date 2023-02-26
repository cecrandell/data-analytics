names = []
done = False
while done != True:
    name = input("Please enter the name of someone you know. ")
    names.append(name)
    keep_going = input("Do you want to invite anyone else? (y)es or (n)o?")
    if keep_going == "n":
        done = True

lowercased = [name.lower() for name in names]
titlecased = [name.title() for name in lowercased]
invitations = [
    f"Dear {name}, please come to the wedding this Saturday!" for name in titlecased]

for invitation in invitations:
    print(invitation)

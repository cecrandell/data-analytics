import string
import random


def generate_uuid(length=4, characters=string.ascii_letters + string.digits):
    uuid = []
    for _ in range(length):
        uuid.append(random.choice(characters))
    return ''.join(uuid)


def test():
    uuid = generate_uuid()
    print("UUID using default values: {}".format(uuid))

    uuid_16 = generate_uuid(length=16)
    print("UUID of length 16: {}".format(uuid_16))

    uuid_random_numbers = generate_uuid(characters=string.digits)
    print("UUID of only numbers: {}".format(uuid_random_numbers))

    uuid_random_letters = generate_uuid(characters=string.ascii_letters)
    print("UUID of only letters: {}".format(uuid_random_letters))

    uuid_with_punctuation = generate_uuid(
        length=8,
        characters=string.ascii_letters + string.digits + string.punctuation)
    print("UUID with punctuation: {}".format(uuid_with_punctuation))


if __name__ == '__main__':
    test()

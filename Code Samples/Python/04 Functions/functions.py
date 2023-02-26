def average(numbers):
    length = len(numbers)
    total = 0.0
    for number in numbers:
        total += number
    avg = total / length
    print('%s: %s' % (numbers, avg))


average([2, 3, 4, 7, 8, 9])
average(range(14))

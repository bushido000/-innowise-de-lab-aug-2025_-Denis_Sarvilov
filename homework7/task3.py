from random import randint
random_val = randint(1, 10)
inp_val = int(input("попробуй отгадать число : "))
while inp_val != random_val:
    print("Промах")
    inp_val = int(input("попробуй еще раз : "))

print("Поздравляю , ты отгадал")
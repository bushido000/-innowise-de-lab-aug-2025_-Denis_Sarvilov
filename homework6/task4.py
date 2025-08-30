from random import randint
ran = randint(1, 5)
inp = int(input("Я загадал число от 1 до 5 попробуй отгадать какое?"))
if inp > ran :
    print("Cлишком много!")
elif inp < ran:
    print("Cлишком мало!")
else:
    print("Ты угадал!")
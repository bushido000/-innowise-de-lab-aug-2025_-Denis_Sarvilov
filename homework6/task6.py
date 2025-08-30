first = float(input("Введите первое число : "))
second = float(input("Введите второе число : "))
operator = input("Выберите оператор (+, -, *, /): ")
operations = {
    '+' : lambda a, b : a + b,
    '-' : lambda a, b : a - b,
    '*' : lambda a, b : a * b,
    '/' : lambda a, b : a / b if b != 0 else "Ошибка деления на ноль"
}

if operator in operations:
    res = operations[operator](first, second)
else:
    print("Ввели неправильный оператор")


print(f"{first} {operator} {second} = {res}")
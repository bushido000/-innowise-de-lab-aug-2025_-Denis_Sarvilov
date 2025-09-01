 # Дана строка: "Python Programming" 
# Напишите код, который: 
# 1. Выводит длину строки 
# 2. Выводит символ по индексу 7 
# 3. Выводит последние 3 символа 
# 4. Проверяет, содержится ли в строке подстрока "gram"
str = "Python Programming" 
print(f"длина строки - {len(str)}")
print(f"символ по индексу 7 - {str[7]}")
print(f"последние 3 символа - {str[-3:]}")
if "gram" in str:
    print("True")
else: 
    print("False")
# Исходный список: fruits = ["apple", "banana"] 
# Выполните следующие операции по порядку: 
# 1. Добавьте "orange" в конец списка 
# 2. Вставьте "grape" по индексу 1 
# 3. Удалите "banana"
# 4. Отсортируйте список 
# 5. Переверните список 
# Выводите список на печать после каждого шага 
fruits = ["apple", "banana"] 
fruits.append("orange")
fruits.insert(1, "grape")
fruits.remove("banana")
fruits.sort()
fruits.reverse()
for fruit in fruits:
    print(fruit)
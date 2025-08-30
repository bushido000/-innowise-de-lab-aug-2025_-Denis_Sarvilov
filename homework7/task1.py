shopping_list = ["milk", "bread", "eggs", "butter", "apples"] 
print("Список покупок:") 
for i in range(len(shopping_list)):
    print(f"{i+1}. {shopping_list[i]}")
# Используйте цикл для перебора каждого элемента в shopping_list 
# Внутри цикла выводите номер и название продукта
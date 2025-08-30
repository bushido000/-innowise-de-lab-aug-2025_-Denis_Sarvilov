# Дано: words = ["hello", "world", "python", "code"] 
# 1. Создать список длин слов, используя списковое включение 
# 2. Создать список слов длиннее 4 символов 
# 3. Создать словарь: {слово: длина} для всех слов 
words = ["hello", "world", "python", "code"] 
task_1 = [len(word) for word in words]
print(task_1)
dictionary = {}
task_2 = []
for word in words:
    if len(word) > 4:
        task_2.append(word)
    if len(word) not in dictionary.keys():
        dictionary[len(word)] = []
        dictionary[len(word)].append(word)
    else:
        dictionary[len(word)].append(word)
print(task_2)
print(dictionary)


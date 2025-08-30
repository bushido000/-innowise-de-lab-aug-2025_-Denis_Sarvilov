# Дан список чисел nums и целевое число target. Найти индексы двух чисел, сумма 
# которых равна target.
# Пример: 
 
# nums = [2, 7, 11, 15] 
# target = 9 
# # Ответ: [0, 1] (потому что nums[0] + nums[1] = 2 + 7 = 9) 
 
# nums = [3, 2, 4] 
# target = 6 
# # Ответ: [1, 2] (потому что nums[1] + nums[2] = 2 + 4 = 6)
# использую хэш таблицу 
def find_index(arr, n):
    dictionary = {}
    for ind, val in enumerate(arr):
        res = n - val
        if res in dictionary.keys():
            print(ind)
            print(dictionary[res])
            return
        if val not in dictionary:
            dictionary[val] = ind
    print("в списке нет чисел сумма которых равна n")
    return
        
nums = [2, 7, 11, 15] 
target = 9 
find_index(nums, target)    
nums = [2, 8, 11, 15] 
target = 9 
find_index(nums, target)    
nums = [3, 2, 4] 
target = 6 
find_index(nums, target)    


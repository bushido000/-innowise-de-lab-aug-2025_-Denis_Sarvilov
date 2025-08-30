# ● Создайте функцию calculate_average_score(), которая будет вычислять 
# средний балл. 
# ● Функция должна принимать список оценок scores как обязательный аргумент. 
# ● Добавьте опциональный булевый параметр ignore_lowest со значением по 
# умолчанию False. 
# ● Если ignore_lowest равен True, функция должна отбросить наименьшую оценку 
# перед вычислением среднего. Если в списке всего одна оценка, отбрасывать её не 
# нужно. 
# ● Используя цикл, пройдитесь по списку student_data. 2 раза, первый раз 
# учитывая все оценки, а второй раз отбросив худшие оценки
student_data = [ 
{'name': 'Алексей', 'scores': [85, 92, 78, 95]}, 
{'name': 'Марина', 'scores': [65, 70, 58, 82]}, 
{'name': 'Светлана', 'scores': [98, 95, 100]} 
] 
def calculate_average_score(scores, ignore_lowest=False):
    average = 0
    count = 0
    if ignore_lowest == True:
        scores.remove(min(scores))
    for score in scores:
        average += score
        count += 1
    average = average / count
    if ignore_lowest == False:
        print("Аверага без отброса минимальных оценок : ", end="")
    else:
        print("Аверага c отбросом минимальных оценок : ", end="")
    print(round(average, 2))


for student in student_data:
    print(student['name'], end=" - ")
    calculate_average_score(student['scores'])

print("")

for student in student_data:
    print(student['name'], end=" - ")
    calculate_average_score(student['scores'], True)
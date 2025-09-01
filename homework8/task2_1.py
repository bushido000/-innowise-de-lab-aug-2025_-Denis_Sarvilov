# Создайте функцию без параметров show_current_time() — печатает 
# текущие дату и время (используйте модуль datetime).
import datetime
def showcurrent_time():
    curent_datetime = datetime.datetime.now()
    print(curent_datetime)
    return

showcurrent_time()
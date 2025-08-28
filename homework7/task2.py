import time
t =  int(input("Введите число для обратного отсчёта : "))
while(t > 0):
    t = t - 1
    if t == 0:
        print("GO")
        break  # Выход из цикла чтобы не написался 0
    print(t)
    time.sleep(1) #Задержка для имитации обратного отсчета
    

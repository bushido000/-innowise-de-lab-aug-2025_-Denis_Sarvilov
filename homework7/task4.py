scores = [75, 88, -10,  0, 95, 100, -25, 89] 
total_score = 0 
count = 0
for score in scores: 
    if score < 0:
        continue
    elif score == 0:
        count = 1
        break
    else:
        total_score += score
        print(f"Добавлен балл: {score}") 

# П роверка, если балл < 0 
# Проверка, если балл == 0 
# В остальных случаях добавляйте балл к total_score 
# если цикл не был прерван, выводим сообщение "Все данные 
# обработаны" 
if count == 0:
    print("Все данные были обработаны корректно")
else:
    print("обработка прерванна")
print(f"\nИтоговая сумма баллов: {total_score}")
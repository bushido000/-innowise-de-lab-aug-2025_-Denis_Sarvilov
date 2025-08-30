# Дан повторяющийся код расчёта цены с НДС: 
# prices = [1000, 3499, 250] 
# nds = 0.20 
# print(prices[0] + prices[0] * nds) 
# print(prices[1] + prices[1] * nds) 
# print(prices[2] + prices[2] * nds) 
# 
# Задание: 
# 1) Вынесите расчёт в функцию add_vat(). 
# 2) Примените её ко всем элементам списка в цикле и распечатайте 
# итоговые цены, используйте цикл.
def add_vat(val):
    nds = 0.20
    print(val + val * nds)
    return
prices = [1000, 3499, 250] 
for price in prices:
    add_vat(price)


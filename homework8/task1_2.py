# Дано: email = " USER@DOMAIN.COM " 
# 1. Очистить и отформатировать до вида: "user@domain.com" 
# 2. Разделить на имя пользователя и домен 
# 3. Используя f-строку, создать: "Username: user, Domain: 
# domain.com"
email = " USER@DOMAIN.COM " 
print(f"1. {email.lower()}")
words = email.split('@')
print(f"2. {words}")

print(f"3. Username: {words[0].lower()} , Domain: {words[1].lower()} ")

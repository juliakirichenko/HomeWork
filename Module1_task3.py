user_input = input('Введите числа:')
user_list = list(user_input)
uniq_list = set(user_list)
my_uniq_list = list(uniq_list)
new_list = []

while my_uniq_list:
    minimum = my_uniq_list[0]
    for x in my_uniq_list:
        if x < minimum:
            minimum = x
    new_list.append(minimum)
    my_uniq_list.remove(minimum)

print(new_list)
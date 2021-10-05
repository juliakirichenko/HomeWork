data = [
  {"Имя": "Маша", "Фамилия": "Иванова", "Возраст": 27},
  {"Имя": "Маша", "Фамилия": "Иванова", "Возраст": 28},
  {"Имя": "Маша", "Фамилия": "Петрова", "Возраст": 27},
  {"Имя": "Маша", "Фамилия": "Cидорова", "Возраст": 27}
]
keys = ["Имя", "Возраст"]

def get_uniq(data, keys):
  result = []
  unique = []

  for dataset in data:
    values = [value for key, value in dataset.items() if key in keys]
    if values not in unique:
      unique.append(values)
      result.append(dataset)

  return result

res = get_uniq(data, keys)
print(res)
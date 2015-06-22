import random

root = []

for i in range(10000):
	root.append([round(random.uniform(0.0, 100000.00), 2), round(random.uniform(0.0, 100000.00), 2)])

print root

import sys

unique_lines = {}
i = 0
for line in sys.stdin:
    if line not in unique_lines.values():
        unique_lines.update({i: line})
        i += 1

for index in unique_lines:
    print(unique_lines[index])

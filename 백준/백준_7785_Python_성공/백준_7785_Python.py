n = int(input())

members = []

for i in range(n):
    name, record = input().split()

    if record == "enter":
        members.append(name)
    else:
        members.remove(name)

for i in sorted(members, reverse=True):
    print(i)


# success
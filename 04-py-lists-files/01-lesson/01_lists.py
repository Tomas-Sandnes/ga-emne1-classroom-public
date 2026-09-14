guests = ["Kermit", "Miss Piggy", "Gonzo"]
print(guests)

print("\n---\n")

mixed_bag = ["Tomas", 52, True]
print(mixed_bag)

print("\n---\n")

print(guests[0])
print(guests[1])
print(guests[-1])

print("\n---\n")

guests.append("Animal")
guests.remove("Gonzo")
print(guests)
print(len(guests))

print("\n---\n")

for guest in guests:
    print(f"Welcome, {guest}!")

print("\n---\n")

scores = [72, 88, 91, 65]
print(len(scores))
print(sum(scores))

average = sum(scores) / len(scores)
print(f"Average: {average}")

print(min(scores))
print(max(scores))

# BOnus feature, from question
guests.insert(1, "Camilla")

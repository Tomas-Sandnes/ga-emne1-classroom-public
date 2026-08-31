amount = float(input("Purchase amount: "))
if amount >= 1000:
    discount = 0.20
elif amount >= 500:
    discount = 0.10
else:
    discount = 0
discounted_amount = amount * (1 - discount)
print(f"Final amount: {discounted_amount:.2f}")

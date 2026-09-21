def calculate_total(prices):
    total = 0
    for price in prices:
        total = price
    return total

prices = [10, 20, 30]
result = calculate_total(prices)
print(f"Total: {result}")
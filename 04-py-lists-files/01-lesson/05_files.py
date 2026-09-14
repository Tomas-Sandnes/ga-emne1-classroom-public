from pathlib import Path

print(f"Current directory is {Path.cwd()}")

data_directory = Path("..") / "data"
prices_path = data_directory / "prices.txt"

print(data_directory)
print(data_directory.exists())

print(prices_path)
print(prices_path.exists())

print("\n---\n")

with open(prices_path, "r", encoding="utf-8") as file:
    content = file.read()

print(content)

print("\n---\n")

prices = []
with open(prices_path, "r", encoding="utf-8") as file:
    for line in file:
        price = float(line.strip())
        prices.append(price)

print(prices)

print("\n---\n")

report_path = data_directory / "price_report.txt"

# Existing content is replaced
with open(report_path, "w", encoding="utf-8") as file:
    file.write("First line\n")

# Existing content is kept, new content added at the end
with open(report_path, "a", encoding="utf-8") as file:
    file.write("Another line\n")

report_lines = [
    "Item: Epler",
    "Amount: 20",
    "Price: 96.50"]
with open(report_path, "w", encoding="utf-8") as file:
    for line in report_lines:
        file.write(line + "\n")

with open(report_path, "a", encoding="utf-8") as file:
    file.write("Kommentar: Husk blåbær og grøt!\n")


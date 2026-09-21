# class Product
# data: name & price
# functionality: show information for this product
#                Apple: 12.00

class Product:
    def __init__(self, name, price):
        self.name = name
        self.price = price

    def show_info(self):
        print(f"{self.name}: {self.price:.2f}")

apple = Product("Apple", 12.0)
bread = Product("Bread", 35.0)

apple.show_info()
bread.show_info()

apple.price = 10.0
apple.show_info()

milk = Product("Milk", 24.0)
milk.show_info()

milk.price = 20.0
milk.show_info()

apple.show_info()
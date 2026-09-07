number_of_tickets = int(input("How many tickets? "))
ticket_price = 180
service_fee = 35

subtotal = ticket_price * number_of_tickets
total = subtotal + service_fee
price_per_person = total / number_of_tickets

print(total)
print(f"{price_per_person:.2f}")

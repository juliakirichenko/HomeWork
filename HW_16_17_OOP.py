class Product:
    categories = ['food', 'household chemicals', 'alcohol']
    eatable_categories = ['food', 'alcohol']


    def __init__(self, price: float, category: str, name: str, unit: str):
        self.price = price
        self.category = category
        self.name = name
        self.unit = unit


    def is_eatable(self):
        return self.category in self.eatable_categories


    def price_total(self, counts: float):
        return self.price * counts


class Cart:


    def __init__(self, products: list = None, counts: list = None):
        self.products = products or list()
        self.counts = counts or list()


    def add_product(self, product: Product, counts: float):
        self.products.append(product)
        self.counts.append(counts)


    def total(self) -> float:
        total = 0.0
        for product, count in zip(self.products, self.counts):
            total += product.price_total(count)

        return total


    def totally_eatable(self):
        return all([product.is eatable() for product in self.products])
# Start of maintanance person class
class MaintanancePerson
  attr_reader :products

  def get_products(location)
    @warehouse_location = location
    @products = parse_json['Products']
    @warehouse_stock = parse_json['Quantities']
  end

  def stock_machine(machine)
    vending_stock = {}

    @products.each do |product|
      vending_stock[product] = [price_for(product), 10]
      update_warehouse_quantity(product, 10)
    end

    File.write(machine, JSON.dump(vending_stock))
  end

  :private

  def price_for(item)
    price = 0
    @warehouse_stock.each do |product|
      price = product[item].first if product.key?(item)
    end

    price
  end

  def update_warehouse_quantity(item, quantity)
    @warehouse_stock.map do |product|
      if product.key?(item)
        temp = (product[item][-1] - quantity) 
        product[item].pop
        product[item] << temp
      end
    end

    new_warehouse = { "Products": @products, "Quantities": @warehouse_stock}
    File.write(@warehouse_location, JSON.dump(new_warehouse))
  end

  def parse_json
    JSON.parse(File.read(@warehouse_location))
  end
end
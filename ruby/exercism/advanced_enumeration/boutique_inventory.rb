class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.map { |item| item[:name] }.sort
  end

  def cheap
    @items.filter { |item| item[:price] < 30 }
  end

  def out_of_stock
    @items.filter { |item| item[:quantity_by_size].empty? }
  end

  def stock_for_item(name)
    @items.filter { |item| item[:name] == name }.first[:quantity_by_size]
  end

  def total_stock
    quantities = @items.map { |item| item[:quantity_by_size] }
    quantities.map { |size| size.values }.flatten.sum
  end

  private

  attr_reader :items
end

class BoutiqueInventory
  attr_reader :items

  def initialize(items)
    @items = items.map { |item| OpenStruct.new(item) }
  end

  def item_names
    items.map(&:name).sort
  end

  def total_stock
    # items.sum do |item|
    #   item[:quantity_by_size]&.values&.sum
    # end

    items.map(&:quantity_by_size).map do |item|
      item.each_value.map { |value| value }
    end.flatten.sum
  end
end

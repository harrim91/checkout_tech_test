class MultibuyPromotion

	def initialize code, quantity, discount, priority=0
		@code = code
		@quantity = quantity
		@discount = discount
		@priority = priority
	end

	attr_reader :priority

	def apply basket
		items = basket.select { |item| item.code == @code }
		return items.count >= @quantity ? (@discount * items.count) : 0
	end

end
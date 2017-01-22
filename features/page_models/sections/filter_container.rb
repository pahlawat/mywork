module PageModels
  class FilterContainer < PageModels::WhichBaseSection
    elements :listing_order, '#product_listing_sorter'

    def listing_options
      listing_order.map(&:text)
    end
  end
end
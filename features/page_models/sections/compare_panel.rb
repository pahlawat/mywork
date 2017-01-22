module PageModels
  class ComparePanel < PageModels::WhichBaseSection
    element :compare_panel_button, '.view-comparison'
    element :compare_item, '.cont-products-compare active'
    element :compare_item_link, '.cont-products-compare active a'

    def click_compare_link
      compare_panel_button.click
    end
  end
end

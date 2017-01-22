module PageModels
  class ProductCompare < PageModels::WhichBaseSection
    element :compare_button, '.frm-comparison button'

    def compare_button_status
      compare_button.text
    end

    def item_is_added?
      compare_button_status.start_with?('Remove')
    end

    def item_is_removed?
      compare_button_status.start_with?('Add')
    end

    def compare_button_click
      compare_button.click
    end
  end

  class ProductList < PageModels::WhichBaseSection
    element :product_image, '[data-test-element="product-image"]'
    element :launch_date, '[data-test-element="launch-date"]'
    element :tested_date, '[data-test-element="tested-date"]'
    element :product_price, '[data-test-element="product-price"]'
    section :product_compare, ProductCompare, '[data-test-element="product-compare"]'
  end
end

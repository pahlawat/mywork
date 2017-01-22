module PageModels
  class TelevisionPageContainer < PageModels::WhichBaseSection
    element :left_nav_filter, '.page_container div[data-test-element="product-filters"]'
    section :filter_container, FilterContainer, 'div[data-test-element="heading-container"]'
    sections :product_list, ProductList, '[data-test-element="product-list"] li'
    element :pagination, '[data-test-element="Pagination"]'

    def sample_product_item
      product_list.to_a.sample
    end
  end
end

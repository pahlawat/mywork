# encoding: UTF-8
module PageModels
  class TelevisionPage < PageModels::WhichBasePage
    set_url 'http://www.which.co.uk/reviews/televisions'
    section :header_container, HeaderContainer, 'div[data-test-element="tab-container"]'
    section :television_page_container, TelevisionPageContainer, '.page-container'
    section :compare_panel, ComparePanel, '.cont-products-compare'
  end
  initialize_class(TelevisionPage)
end

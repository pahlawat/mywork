module PageModels
  class TabContainer < PageModels::WhichBaseSection
    element :tab_link, 'a'

    def tab_link_click
      tab_link.click
    end

    def tab_link_url
      tab_link[:href]
    end

    def tab_text
      tab_link.text
    end
  end

  class HeaderContainer < PageModels::WhichBaseSection
    sections :tab_container, TabContainer, '[data-test-element="tab"] li'

    def tab_data_text
      tab_container.map(&:tab_text)
    end
  end
end

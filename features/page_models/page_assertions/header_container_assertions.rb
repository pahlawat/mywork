module PageModels
  module HeaderContainerAssertions
    def confirm_header_tabs
      television_page.header_container.tab_container.each do |option|
        expect(option).to have_tab_text
      end
    end

    def select_header_tab
      television_page.header_container.tab_container.each do |link|
        link.tab_link_click
      end
    end

    def confirm_landing_page
      television_page.header_container.tab_container.each do |link_url|
        expect(link_url.tab_link_url).to match current_path
      end
    end

  end
end
World(PageModels::HeaderContainerAssertions)
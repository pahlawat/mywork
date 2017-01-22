module PageModels
  class WhichBasePage < SitePrism::Page
    # section :header, RadioNav, '#rsn-wrap'
    # section :footer, Footer, '#footer-wrapper'


    def all_there_displayed
      self.class.mapped_items.each do |element_page|
        send element_page.to_sym
      end
    end

    SitePrism.configure do |config|
      config.use_implicit_waits = true
    end
  end

  def current_page
    @_current_page ||= WhichBasePage.new
  end
end

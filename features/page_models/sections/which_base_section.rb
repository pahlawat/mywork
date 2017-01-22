module PageModels
  class WhichBaseSection < SitePrism::Section

    def all_there_displayed
      self.class.mapped_items.each do |element_page|
        send element_page.to_sym
      end
    end
  end
end
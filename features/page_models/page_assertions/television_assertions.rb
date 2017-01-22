module PageModels
  module TelevisionAssertions
    def confirm_product_attributes
      expect(television_page.television_page_container.product_list[1]).to have_product_image
      expect(television_page.television_page_container.product_list[1]).to have_launch_date
      expect(television_page.television_page_container.product_list[1]).to have_tested_date
      expect(television_page.television_page_container.product_list[1]).to have_product_price
    end

    def confirm_product_available
      television_page.television_page_container.product_list[1].all_there_displayed
    end

    def add_item_to_compare
        @item = television_page.television_page_container.sample_product_item
        @item.product_compare.compare_button_click
    end

      def remove_item
        @item.product_compare.compare_button_click
      end

      def confirm_item_added
        expect(@item.product_compare.compare_button_status).to start_with 'Remove'
      end

      def confirm_item_removed
        expect(@item.product_compare.compare_button_status).to start_with 'Add'
      end

      def confirm_item_panel
        expect(television_page.compare_panel).to have_compare_panel_button
      end

      def select_item_review
        television_page.compare_panel.click_compare_link
      end

      def check_review_page
        page.current_path.should include '/reviews/televisions/compare'
      end

      def filter_sort_order(list_option)
        television_page.television_page_container.filter_container.listing_options.each do |list|
          expect(list).to include(list_option)
        end
      end

    def confirm_pagination
     expect(television_page.television_page_container).to have_pagination
    end
  end
end
World(PageModels::TelevisionAssertions)



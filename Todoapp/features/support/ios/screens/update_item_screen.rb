module IPhoneScreens
  class Updateitem

    def initialize

      @table_view_items = 'UITableTextAccessibilityElement'
      @landingpage_title = 'Quick  Todo'
      @ok_btn = 'OK'
      @cancel_btn = 'Cancel'
      @text_field = 'UITextView'

    end


    def select_first_item_in_list index
      driver.find_element(:class, "//text[#{index}]").text
    end



  end
end
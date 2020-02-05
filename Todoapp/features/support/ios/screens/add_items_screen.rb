module IPhoneScreens
  class Additem

    def initialize

      @add_btn= 'Add'
      @landingpage_title = 'Quick  Todo'
      @ok_btn = 'OK'
      @cancel_btn = 'Cancel'
      @text_field = 'UITextView'

    end

    def assert_title_displayed?
      common.element_displayed? @landingpage_title
    end

    def click_add_btn
      common.click_element(@add_btn,'label')
    end

    def add_item
      @text = common.enter_text(@text_field,'class','add test')
    end


    def select_ok
      common.click_element(@ok_btn,'label')
      common.element_displayed? @landingpage_title
    end

    def verify_item_displayed?
      common.scroll_down until common.element_displayed?(@text)
    end





    #   common.scroll_down until common.element_displayed?('Save')
    #   # common.click_element(@save,'id')
    # end
  end
end
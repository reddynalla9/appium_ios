def screen
  @screen ||= IPhoneScreen.new
end


class IPhoneScreen
  include IPhoneScreens

  def addItem
    Additem.new
  end

  def updateItem
    Updateitem.new
  end

end






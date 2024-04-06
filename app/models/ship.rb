class Ship < ApplicationRecord
  def range(otherShipID)
    otherShip = Ship.find(otherShipID)
      Math.sqrt((otherShip.x_location - x_location)**2 + (otherShip.y_location - y_location)**2) 
  end
  def bearing (otherShipID)
    otherShip = Ship.find(otherShipID)
    distance = range(otherShipID)
    sign = (otherShip.y_location - y_location) / distance
    radian = Math.asin(sign)
    radian * 180 / Math::PI
  end
end

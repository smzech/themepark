module AttractionsHelper
  def park_name(attraction)
    if attraction.park.nil?
      "Not Assigned"
    else
      attraction.park.name
    end
  end
end

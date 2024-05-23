class Types::CoordinatesType < Types::BaseObject
    field :latitude, Float, null: true
    field :longitude, Float, null: true

    def latitude # resolver
        object.first
    end

    def longitude # resolver
        object.last
    end

end

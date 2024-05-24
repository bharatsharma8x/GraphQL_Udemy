class Types::ErrorType < Types::BaseObject
    description "Active record Errors"

    field :field_name, String, null: false
    field :errors, String, null: false
end

class Types::AuthorType < Types::BaseObject

    description "Author Description"

    field :id, ID, null: false
    field :first_name, String, null: true, camelize: false # as In ruby it uses snake case and at the graphQL or javascript side it uses CamelCase so for using snake case at graphQL side this option can be useful camelize 
    field :last_name, String, null: true
    field :yob, Int, null: false
    field :is_alive, Boolean, null: false
    # field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    # field :created_at, String, null: false
    field :full_name, String, null: true
    field :coordinates, Types::CoordinatesType, null: true
    field :publication_years, [Int], null: true

    def full_name
        "#{object.first_name} #{object.last_name}"
    end

end

class Types::AuthorInputType < GraphQL::Schema::InputObject

    graphql_name "AuthorInputType"
    description "All the attributes needed to create an author"

    argument :first_name, String, required: false
    argument :last_name, String, required: false
    argument :yob, Int, required: false
    argument :is_alive, Boolean, required: false

end

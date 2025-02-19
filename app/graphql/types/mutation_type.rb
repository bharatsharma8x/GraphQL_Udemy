# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject

    field :create_author, Types::AuthorType, mutation: Mutations::CreateAuthor

    field :update_author, Boolean, null: false, description: "Update the Author" do 
      argument :author, Types::AuthorInputType, required: true
    end

    field :delete_author, Boolean, null: false, description: "Delete the Author" do 
      argument :id, ID, required: true
    end

    def update_author(author:)
      existing_author = Author.find(author[:id])
      existing_author&.update author.to_h
    end

    def delete_author(id:)
      Author.find(id).destroy
    end

  end
end

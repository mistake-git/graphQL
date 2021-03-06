module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end
  end

  class MutationType < Types::BaseObject
    field :create_comment, mutation: Mutations::CreateComment
  end

  class MutationType < Types::BaseObject
    field :update_comment, mutation: Mutations::UpdateComment
  end

  class MutationType < Types::BaseObject
    field :destroy_comment, mutation: Mutations::DestroyComment
  end

end


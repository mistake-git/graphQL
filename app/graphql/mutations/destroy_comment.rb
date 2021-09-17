module Mutations
  class DestroyComment < Mutations::BaseMutation
    argument :id, Int, required: true

    class DeleteResultType < Types::BaseObject
      field :deleted, Boolean, null: false
    end

    type DeleteResultType

    def resolve(id: nil)
      result = Comment.find(id).destroy
      { deleted: result }
    end
    
  end
end
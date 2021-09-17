module Mutations
  class UpdateComment < Mutations::BaseMutation
    argument :id, Int, required: true
    argument :body, String, required: true

    field :comment, Types::CommentType, null: true
    field :errors, [String], null: false

    def resolve(id:, body:)
     
      comment = Comment.find(id)
      if comment.update(id: id, body: body)
        {
          comment: comment,
          errors: []
        }
      else
        {
          comment: nil,
          errors: comment.errors.full_messages
        }
      end
    end
  end
end
module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :user, Types::UserType, null: false do
      description 'ユーザ情報を1件取得する'
      argument :id, Int, required: true, description: 'ユーザID'
    end
    def user(id:)
      User.find(id)
    end

    field :users, [Types::UserType], null: false, description: 'ユーザ情報を全件取得する'
    def users
      User.all
    end

    field :comment, Types::CommentType, null: false do
      description 'コメント情報を1件取得する'
      argument :id, Int, required: true, description: 'コメントID'
    end
    def comment(id:)
      Comment.find(id)
    end

    field :comments, [Types::CommentType], null: false, description: 'コメント情報を全件取得する'
    def comments
      Comment.all
    end

  end
end
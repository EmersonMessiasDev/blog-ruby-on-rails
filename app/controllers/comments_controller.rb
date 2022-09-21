class CommentsController < ApplicationController
    def create
        comment = Comment.create!(comments_params.to_h.merge!({ user_id: current_user.id}))

        redirect_to comment.post, notice: 'O seu comentario foi enviado'

    end

    private

    def comments_params
        params.require(:comment).permit(:post_id, :author, :body)
    end
end
class CommentsController < ApplicationController
  def create
    new_comment = Comment.new
    new_comment.photo_id = params.fetch("query_photo_id")
    new_comment.author_id = params.fetch("query_author_id")
    new_comment.body = params.fetch("query_comment")
    new_comment.save

    redirect_to("/photos/#{new_comment.photo_id}")
  end
end

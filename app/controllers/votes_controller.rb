class VotesController < ApplicationController
  before_action :set_posts, only: [:update]

    def update
      if params[:upvote] == 1
        @posts.increment(:upvote)
      elsif params[:downvote] == 1
        @posts.increment(:downvote)
      end
    end


  private

    def set_posts
      @posts = Post.find(params[:id])
    end
  end

class VotesController < ApplicationController
  before_action :set_posts, only: [:update]

    def update
      if params[:upvote].present?
        @posts.increment(:upvote)
        @posts.save
      elsif params[:downvote].present?
        @posts.decrement(:downvote)
        @posts.save
      end
      render json: @posts
    end


  private

    def set_posts
      @posts = Post.find(params[:id])
    end
  end

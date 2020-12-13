class VotesController < ApplicationController
  before_action :set_posts, only: [:update]

    def update
      if params[:upvote].present?
        @posts.increment(:upvote)
        @posts.save
      render json: @posts
      elsif params[:downvote].present?
        @posts.decrement(:downvote)
        @posts.save
      render json: @posts
      end
    end


  private

    def set_posts
      @posts = Post.find(params[:id])
    end
  end

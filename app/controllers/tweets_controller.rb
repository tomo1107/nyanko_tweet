# frozen_string_literal: true

class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end
end

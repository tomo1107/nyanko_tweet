# frozen_string_literal: true

class Tweet < ApplicationRecord
  validates :text, presence: true
end

# frozen_string_literal: true

# define article model
class Article < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 5 }
end

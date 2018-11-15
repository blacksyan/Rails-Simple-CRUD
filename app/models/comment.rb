# frozen_string_literal: true

# define comment model
class Comment < ApplicationRecord
  belongs_to :article
end

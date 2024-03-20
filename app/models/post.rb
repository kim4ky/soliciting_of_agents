class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :game_mode

  belongs_to :user

  validates :game_mode_id, numericality: { other_than: 1, message: "を選択してください" }
  validates :content, presence: true
end

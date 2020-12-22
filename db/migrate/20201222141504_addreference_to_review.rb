class AddreferenceToReview < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :videowork, foreign_key: true
    add_reference :reviews, :genre, foreign_key: true
  end
end

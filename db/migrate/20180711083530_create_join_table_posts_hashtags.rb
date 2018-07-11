class CreateJoinTablePostsHashtags < ActiveRecord::Migration[5.0]
  def change
    create_join_table :posts, :hashtags do |t|
      # t.index [:post_id, :hashtag_id]
      # t.index [:hashtag_id, :post_id]
    end
  end
end

class RecreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.timestamps
    end
    Post.create_translation_table! :title => :string, :text => :text
  end

  def self.down
    drop_table :posts
    Post.drop_translation_table!
  end
end

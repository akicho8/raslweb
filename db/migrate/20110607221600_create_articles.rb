class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title, :index => {:unique => true}
      t.text :body
      t.string :unique_key, :null => false, :index => true
      t.timestamps
    end
  end
end

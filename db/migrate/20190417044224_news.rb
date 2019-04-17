class News < ActiveRecord::Migration[5.1]
  def change
    drop_table :news
  end
end

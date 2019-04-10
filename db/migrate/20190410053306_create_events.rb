class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string      :e_title, null: false
      t.string      :time, null: false
      t.string      :date, null: false
      t.text        :e_body, null: false
      t.string      :e_image
      t.string      :host, null: false
      t.string      :place, null: false
      t.string      :price, null: false
      t.references  :user, foreign_key: true
      t.timestamps
    end
  end
end

class CreateApiV2Articles < ActiveRecord::Migration[5.1]
  def change
    create_table :api_v2_articles do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end

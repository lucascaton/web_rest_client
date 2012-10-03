class CreateRequestsTable < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :string_params
      t.string :url
      t.string :http_verb

      t.timestamps
    end
  end
end

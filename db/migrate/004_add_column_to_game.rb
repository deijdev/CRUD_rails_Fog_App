class AddColumnToGame < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :img, :text, :default => "https://images.getbento.com/KTdg2WnFRWO8NPQ9Z8J6_Blank_Slate_Logo_Plain_Black.png"
  end
end

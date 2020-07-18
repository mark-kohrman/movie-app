class ChangeEnglishDataToBooleanMovie < ActiveRecord::Migration[6.0]
  def change
    change_column :movies, :english, :boolean
  end
end

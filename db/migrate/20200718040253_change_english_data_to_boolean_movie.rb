class ChangeEnglishDataToBooleanMovie < ActiveRecord::Migration[6.0]
  def change
    change_column :movies, USING english: :boolean
  end
end

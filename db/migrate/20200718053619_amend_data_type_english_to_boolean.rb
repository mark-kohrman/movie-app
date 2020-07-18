class AmendDataTypeEnglishToBoolean < ActiveRecord::Migration[6.0]
  def change
    def change
      change_column :movies, :english, :boolean
    end
  end
end

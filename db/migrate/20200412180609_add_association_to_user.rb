class AddAssociationToUser < ActiveRecord::Migration[6.0]
  def change
    change_table(:users) do |t|
    t.belongs_to :coop, null: false, foreign_key: { to_table: :coops }
    end
  end
end

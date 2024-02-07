class RemoveStringColumnDoctor < ActiveRecord::Migration[7.1]
  def change
    remove_column :doctors, :string, :string
  end
end

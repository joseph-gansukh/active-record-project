class AddDueDateToLibraries < ActiveRecord::Migration[5.2]
  def change
    add_column :libraries, :due_date, :datetime 

  end
end

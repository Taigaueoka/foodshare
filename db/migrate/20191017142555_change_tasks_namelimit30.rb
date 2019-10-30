class ChangeTasksNamelimit30 < ActiveRecord::Migration[5.2]
  def update
    change_column :tasks, :name, :tokyoarea, :tokyodate, :string, limit: 30
  end
  def down
    change_column :tasks, :name, :tokyoarea, :tokyodate, :string
  end
end

class AddTimestampToUsers < ActiveRecord::Migration[5.2]
  def change
    # add new column but allow null values
  add_timestamps :users, null: true 

  # backfill existing records with created_at and updated_at
  # values that make clear that the records are faked
  long_ago = DateTime.new(2000, 1, 1)
  User.update_all(created_at: long_ago, updated_at: long_ago)

  # change to not null constraints
  change_column_null :users, :created_at, false
  change_column_null :users, :updated_at, false
  end
end

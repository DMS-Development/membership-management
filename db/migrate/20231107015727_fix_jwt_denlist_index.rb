class FixJwtDenlistIndex < ActiveRecord::Migration[7.1]
  def change
    remove_index :jwt_denylist, :jti if index_exists?(:jwt_denylist, :jti)
    add_index :jwt_denylist, :jti, unique: true
  end
end

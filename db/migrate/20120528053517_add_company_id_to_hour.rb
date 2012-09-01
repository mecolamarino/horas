class AddCompanyIdToHour < ActiveRecord::Migration
  def change
    add_column :hours, :company_id, :integer
  end
end

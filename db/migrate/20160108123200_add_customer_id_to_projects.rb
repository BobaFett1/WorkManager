class AddCustomerIdToProjects < ActiveRecord::Migration
  def change
    add_reference :projects, :customer, index: true
  end
end

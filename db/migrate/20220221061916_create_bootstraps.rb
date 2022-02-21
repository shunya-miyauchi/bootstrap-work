class CreateBootstraps < ActiveRecord::Migration[6.0]
  def change
    create_table :bootstraps do |t|
      t.string :title

      t.timestamps
    end
  end
end

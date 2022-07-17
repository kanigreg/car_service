class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.references :order, foreign_key: true
      t.references :service, foreign_key: true
      t.references :performer, foreign_key: true

      t.timestamps
    end
  end
end

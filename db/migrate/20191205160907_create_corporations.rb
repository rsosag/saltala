class CreateCorporations < ActiveRecord::Migration[5.2]
  def change
    create_table :corporations do |t|
      t.string :name
      t.string :rut
      t.references :subsidiary, foreign_key: true

      t.timestamps
    end

    1.upto(10) do |index|
      Corporation.create!(name: "Corporation #{index}", rut: '111111', subsidiary_id: Subsidiary.first.id)
    end
  end
end

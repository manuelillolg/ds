class CreateCuadros < ActiveRecord::Migration[7.0]
  def change
    create_table :cuadros do |t|
      t.string :autor, null:false
      t.string :fecha, null:false
      t.string :estilo, null:false
      t.float :precio, null:false
      t.string :foto, null:false

      t.timestamps
    end
    add_index :cuadros, :foto, unique: true
  end
end

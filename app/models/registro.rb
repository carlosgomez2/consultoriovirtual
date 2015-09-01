class Registro < ActiveRecord::Base

	# attr_accessible :Nombre, :Segundo_Nombre, :Apellido_Paterno, :Apellido_Materno, :Telefono_principal, :Celular, :Email, :Ocupacion, :Fecha_de_Nacimiento, :Direccion, :Codigo_Postal, :Ciudad, :Estado

	# def self.search(search)
	# 	# return where('FALSE') if search.blank?

	# 	search_columns = [:Nombre, :Segundo_Nombre, :Apellido_Paterno, :Apellido_Materno, :Telefono_principal, :Celular, :Email, :Ocupacion, :Fecha_de_Nacimiento, :Direccion, :Codigo_Postal, :Ciudad, :Estado]
	# 	search.split('').each do |word|
	# 		search_columns.each do |column|
	# 			conditions << " lower(#{colum}) LIKE lower(#{sanitize("%#{word}%")}) "
	# 		end
	# 	end

		# conditions = conditions.join('OR')
		# self.where(conditions)

	def self.search(search)
		key = "%#{search}%"
    if search
      where(["Nombre LIKE :search OR Segundo_Nombre LIKE :search OR Apellido_Paterno LIKE :search OR Apellido_Materno LIKE :search OR Telefono_principal LIKE :search OR Celular LIKE :search OR Email LIKE :search OR Ocupacion LIKE :search OR Fecha_de_Nacimiento LIKE :search OR Direccion LIKE :search OR Codigo_Postal LIKE :search OR Ciudad LIKE :search OR Estado LIKE :search", search: key])
    else
      all
    end
  end

end



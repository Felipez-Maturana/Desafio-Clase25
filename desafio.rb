class Alumno
	attr_accessor :nombre,:calificaciones
	def initialize(calificaciones, nombre)
		@calificaciones=calificaciones
		@nombre = nombre
	end
end

def promedioMasAlto(alumnos)
	i=0;
	promediosAlumnos=[]
	nombreMejorPromedio=""
	mejorPromedio=0
	while(i<alumnos.length)
		j=0
		promedio=0
		while(j< alumnos[i].calificaciones.length )
			promedio += alumnos[i].calificaciones[j]
			j+=1
		end
		promedio=promedio.to_f/alumnos[i].calificaciones.length
		promediosAlumnos.push(promedio) 
		if(promedio>mejorPromedio)
			mejorPromedio=promedio
			nombreMejorPromedio=alumnos[i].nombre
		end
		i+=1
	end
	# puts promediosAlumnos
	promedioCurso = promediosAlumnos.inject(:+) / promediosAlumnos.length
	puts "El promedio del curso es: #{promedioCurso}"
	puts "el mejor promedio del curso es: #{mejorPromedio} obtenido por: #{nombreMejorPromedio}"
end		

	alumnos=[]
	alumnos.push(Alumno.new([3,1,5,7,3],"Julian"))
	alumnos.push(Alumno.new([5,6,4,3,5,7],"Ramon"))
	alumnos.push(Alumno.new([2,1,4,6],"Francisca"))
	alumnos.push(Alumno.new([7,6,2,4,4],"Javiera"))

	promedioMasAlto(alumnos)
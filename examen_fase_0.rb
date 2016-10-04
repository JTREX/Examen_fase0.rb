#Crea el método vowels que recibe una lista
#de palabras words y remueve las vocales
#de cada string. Haz pasar la prueba correspondiente.

def vowels(arr)
  arr.each do |item|
    if item.tr!("aeiou","")
    end
  end
end
p vowels(["banana", "carrot", "pineapple", "strawberry"]) == ["bnn", "crrt", "pnppl", "strwbrry"]

#Suma de números
#Dados dos números, que pueden ser positivos y negativos,
#encuentra la suma de todos los números entre ellos,
#incluyendo esos números también. Si los dos números son iguales, regresa alguno de los dos.

def get_sum(num1, num2)
  if num2 < num1
    return num1
    else (num1..num2).inject(:+)
  end
end

p get_sum(1, 0) == 1
p get_sum(1, 2) == 3
p get_sum(0, 1) == 1
p get_sum(1, 1) == 1
p get_sum(-1, 0) == -1
p get_sum(-1, 2) == 2


#Crea un método que reciba una oración y regrese un string
#señalándonos el número de palabras y caracteres que contiene,
#sin contar los espacios en blanco, tu método deberá pasar las siguientes pruebas:

def char_word_counter(str)
  
  words = str.split.length
  characters = str.delete(' ').size
p "This sentence has #{words} words & #{characters} characters" 

end

p char_word_counter("This is a sentence") == "This sentence has 4 words & 15 characters"
p char_word_counter("This easy") == "This sentence has 2 words & 8 characters"
p char_word_counter("This is a very complex line of code to test our program") == "This sentence has 12 words & 44 characters"
p char_word_counter("And when she needs a shelter from reality she takes a dip in my daydreams") == "This sentence has 15 words & 59 characters"


#Ahora vamos a aprovechar los Hashes como herramienta de organización
#para distinguir alimentos por grupo alimenticio.
#Para esto deberás generar un método que tome como parámetro un string que contenga una comida,
#y buscarlo en el siguiente hash, regresando su key como valor de retorno,
#si no encuentra la comida deberá regresar "comida no encontrada".

# Deberás utilizar este Hash como base de tu programa

 def food_group(str)
   food_groups = {
     "grano" => ['Arroz','Trigo', 'Avena', 'Cebada', 'Harina'],
     "vegetal" => ['Zanahoria', 'Maíz', 'Elote', 'Calabaza', 'Papa'],
     "fruta" => ['Manzana', 'Mango', 'Fresa', 'Durazno', 'Piña'],
     "carne" => ['Res', 'Pollo', 'Salmón', 'Pescado', 'Cerdo'],
     "làcteo" => ['Leche', 'Yogur', 'Queso', 'Crema']
     } 
   food_groups.each do |k, arr|
     arr.each{|food| return k if food == str }
     end
    return "comida no encontrada"
  
 end

 #Driver code
p food_group('Crema') == "lácteo"
p food_group('Res')   == "carne"
p food_group('Piña')  == "fruta"
p food_group('Caña')  == "comida no encontrada"


##Dado
#Define la clase Die. Todos los objetos de esta clase (dados)***
#son creados con un número de lados definido por el usuario.***
#Además define un método roll que sea capaz de lanzar el dado
#y que regrese un número entre uno y el número de lados del dado.---
#Ten en cuenta que un dado no puede tener un solo lado, notifícale al usuario.
#Define getters y setters para los lados del dado, y úsalos.
#No puedes usar los attr_* que nos da Ruby.

class Die
  
  puts "El dado no puede tener un 1"

  def initialize(lados)
    @lados = lados
  end

  

  #mètodo getter
  def getlado
    @lados  
    "Nùmero de lados #{@lados}"
  end
  
  #mètodo setter
  def setnumlado(lados)
    @lados = lados
    "Resultado del dado #{roll}"
  end

  def roll
    roller = Random.new
    "El nuevo nùmero es #{roller.rand(1..@lados)}" 
  end

end

dado1 = Die.new(7)
dado2 = Die.new(9)

p dado1.getlado
p dado1.roll
p dado1.setnumlado(7)



#Driving
#Crea una clase llamada MyCar.
#Cuando inicializas un nuevo objeto de la clase se permite al usuario 
#definir las variables de instancia que nos dicen el año, color y modelo del carro.
#Crea métodos de instancia que permiten al carro acelerar, frenar y apagar el carro.
#Haz pasar todas las pruebas correspondientes.

class MyCar
  
  @@currentspeed = 0

  def initialize(year, color, model, speed)
    @year = year
    @color = color
    @model = model
    @speed = speed
  end

  def speed_up(speed)
    @@currentspeed += speed 
    "You push the gas and accelerate #{speed} kph."
  end
  
  def current_speed
    "You are now going #{@@currentspeed} kph." 
  end
  
  def brake(speed)
    @@currentspeed -= speed
    "You push the brake and decelerate #{speed} kph."
  end

  def shut_down
    "Let's shut down to 0!"      
  end
end

carro_prueba = MyCar.new(1985, "black", "mustang", 20)

# Driver code
 p carro_prueba.speed_up(20) == "You push the gas and accelerate 20 kph."
 p carro_prueba.current_speed == "You are now going 20 kph."
 p carro_prueba.speed_up(20) == "You push the gas and accelerate 20 kph."
 p carro_prueba.current_speed == "You are now going 40 kph."
 p carro_prueba.brake(20) == "You push the brake and decelerate 20 kph."
 p carro_prueba.current_speed == "You are now going 20 kph."
 p carro_prueba.brake(20) == "You push the brake and decelerate 20 kph."
 p carro_prueba.current_speed == "You are now going 0 kph."
 p carro_prueba.shut_down == "Let's shut down to 0!"
 p carro_prueba.current_speed == "You are now going 0 kph."

# Playlist
## Crea la clase Playlist que para inicializarla recibe 2 argumentos:
## name (nombre del playlist) y songs (lista de canciones).
# Crea una forma para poder leer el nombre del Playlist.
## Crea el método number_of_songs que regresa el número de canciones que contiene el Playlist.
## Crea el método add_song que agrega una canción a la lista.
# Crea el método next_song que regresa la siguiente canción del Playlist.
# Para esto necesitarás llevar control de cuál es la canción actual.
# Si el playlist se encuentra en la última canción debe de volver a iniciar.

# Al crear una nueva instancia de Playlist
# la canción actual por default debería ser la primera canción de la lista que le pasen

class PlayList

  attr_reader :name
  attr_accessor :songs

  def initialize(name, songs)
    @name = name
    @songs = songs        
    @song_p = 0
  end


  def name_playlist
    @name
  end

  def number_of_songs
    @songs.count
  end

  def add_song(songs)
    @songs << songs
  end

  def next_song
    @songs.each_with_index do |s,i|
      if s == @songs.last
        return @song_p = @songs.first
      elsif s == @song_p
        return @song_p = @songs[i + 1]
      end
    end 
  end
end

rap = PlayList.new("Mix_rap",["The_hills", "Faint", "My_mind"])



p rap.name_playlist == "Mix_rap"
p rap.number_of_songs == 3
p rap.add_song("hello") == ["The_hills", "Faint", "My_mind", "hello"]
p rap.number_of_songs == 4
p rap.next_song == "The_hills"
p rap.add_song("fast_and_furious") == ["The_hills", "Faint", "My_mind", "hello", "fast_and_furious"]
p rap.number_of_songs == 5
p rap.next_song == "Faint"
p rap.next_song == "My_mind"
p rap.next_song == "hello"
p rap.next_song == "fast_and_furious"
p rap.next_song == "The_hills"
p rap.add_song("xzibit") == ["The_hills", "Faint", "My_mind", "hello", "fast_and_furious", "xzibit"]
p rap.number_of_songs == 6














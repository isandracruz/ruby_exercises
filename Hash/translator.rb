# Write a Ruby Program to translate the numbers from Spanish to English or Spanish to Czech.
# Only the numbers from one to ten.

TRANSLATION = {
    uno: ["one", "jeden"],
    dos: ["two", "dva"],
    tres: ["three", "tři"],
    cuatro: ["four","čtyři"],
    cinco: ["five","pět"],
    seis: ["six", "šest"],
    siete: ["seven", "sedm"],
    ocho:["eight", "osm"],
    nueve: ["nine", "devět"],
    diez: ["ten", "deset"]
}

def inicializate()
    puts "\nTraductor de números del uno al diez".upcase

    i = 0
    option = 0
    until option == 1 || option == 2
        if i != 0
            puts "La opción no es válida. Por favor, inténtelo de nuevo."
        end
        option = select_option        
        i += 1
    end
    
    i = 0
    word = ""    
    until TRANSLATION.key?(word)
        if i != 0
            puts "La palabra no es válida. Por favor, inténtelo de nuevo."
        end        
        word = enter_word  
        i += 1     
    end
    
    return translate(option, word)
end

def select_option
    puts "Seleccione una opción de traducción:
    1: Español-Inglés
    2: Español-Checo"
    return gets.chomp.to_i
end

def enter_word
    puts "Escriba la palabra a traducir:"
    return gets.chomp.to_sym
end

def translate(option, word)
    answer = "La traducción es : "
    if option == 1
        return  answer << TRANSLATION[word][0]
    else
        return answer << TRANSLATION[word][1]
    end
end

puts inicializate()
require 'terminal-table'
#registro de autores autor
libro = {
    tope: nil,
    max:-1,
    esta_vacia: true,
    esta_llena: false,
    size:0,
    posi:0
}
autor = {
tope:nil,
final:nil,
max:0,
size:0,
vacia:true,
llena:false,
}
#registro de libros
def  vaciaa?(libro)
    return libro[:tope].nil? && libro[:final]==nil
end
def  vacia?(autor)
    return autor[:tope].nil? && autor[:final]==nil
end

def mostralibro(libro,t)
    au=libro[:tope]
    if vaciaa?(libro)
        puts "No hay libros"
    else
    table = Terminal::Table.new do | t |
        t.headings =['libros']
       aux =libro[:tope]
       loop do 
            t.add_row ( [
                au[:nombre],
                    ])
                 if aux[:siguiente] == nil
                   break
                else
                    aux=aux[:siguiente]          
                end
        
            end
            end
    end
end
def insertar(autor,a,libro)
    autor[:size] += 1
    elemento = {
        valor:a,
        size:autor[:size ],
        siguiente:nil,
        tope:elemento,
        pila:libro 
    }
    puts autor[:pila]
    if vacia?(autor)
        autor[:tope]= elemento
        autor [:final ] = elemento     
    else
        elemento_final=autor[:final]
        elemento_final[:siguiente]= elemento
        autor[:final]=elemento
    end   
      autor[:max]+=1
end
def mostrar(autor,libro)
    if vacia?(autor) && vaciaa?(libro)
        puts "No hay autores"
    else
    tope=autor[:tope]
    table = Terminal::Table.new do | t |
        t.headings =['Numero','Autor']
       aux =autor[:tope]
       au=libro[:tope]
      loop do 
            t.add_row ( [
                aux[:size],
                aux[:valor],
                ])
            if aux[:siguiente] == nil
             break
            end
            aux = aux[:siguiente]
        end
    end
    end
end
def  buscar_autor(autor,n,libro)
    if vacia?(autor)
    else
    elemento = {}
    aux = autor [:tope ]
    au=libro[:tope]
     loop do
      if n == aux[:valor]
        elemento = aux
        ele=au
    return elemento[:valor]
        break
      elsif aux [:siguiente ] ==  nil
        puts "Autor no encontrado"
        return true
        break
      else
        aux = aux [:siguiente ]
      end
    end
    end
end

def  buscar_autorlibros(autor,n,libro)
    if vacia?(autor)
        puts "Esta vacia"
    else
    elemento = {}
    aux = autor [:tope ]
    au=libro[:tope]
     loop do
      if n == aux[:valor]
        elemento = aux
        ele=au
        puts "Autor ingresado"
        x=au[:size]
        au[:nombrea]
        aux[:valor]
        puts "Libros del autor: " 
        loop do
        if au[:nombrea]== aux[:valor]
            puts t= au[:nombre]
               #  return ele[:valor]
                if au[:siguiente ] ==  nil
                      puts "Fin"
                        break
                    else 
                        au = au[:siguiente ]
                    end
            elsif au[:siguiente ] ==  nil
                break
            else  au = au[:siguiente ]
            end
        
        
        end
       # return elemento[:valor]
        break
      elsif aux [:siguiente ] ==  nil
        puts "Autor no encontrado"
        break
      else
        aux = aux [:siguiente ]
      end
    end
    end
end


begin
puts "*****************************"
puts "Listado de opciones:" 
puts "1. Registrar un libro nuevo"
puts "2. Registro de autores"
puts "3. Mostrar listado de libros"
puts "4. Mostrar listado de autores"
puts "5. Buscar autores"
puts "6. Registrar una venta"
puts "7. Buscar una venta"
puts "8. Mostrar listado de ventas"
puts "9. Salir"
puts "Elijia una opción:"
op = gets.chomp
if op== '1'
    puts 'Nombre del autor'
    a=gets.chomp
    if buscar_autor(autor,a,libro)
       insertarli(libro,a,autor)    
    else 
    puts "Autor no existente Desea agregarlo 1.si 2.No"
    r=gets.chomp
    if r=='1'
        insertar(autor,a,libro)
        insertarli(libro,a,autor)
    else r=='2'
    end
    end
elsif op== '2'
    if autor[:size]==5
        puts "No puede ingresar mas autores"
    else
        puts "Ingrese nombre del autor"
        a=gets.chomp
        if buscar_autor(autor,a,libro)
            puts"Ingresado con exito"
        else
             insertar(autor,a,libro)
    end
end

elsif op=='3'
    puts mostrarli(libro,autor)
elsif op=='4'
    puts mostrar(autor,libro)
elsif op=='5'
    puts "Ingrese nombre del autor"
    n=gets.chomp
    puts buscar_autorlibros(autor,n,libro)
elsif op=='6'
elsif op=='7'
elsif op=='8'
end
end while op !='9'

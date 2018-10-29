require 'terminal-table'
#registro de autores autor
# yo
libro = {
    
}
autor = {
    tope: nil,
    final: nil,
    max: 0,
    size: 0,
    vacia: true,
    llena: false,
    
#registro de libros
def  vaciaa?(libro)
    return libro[:tope].nil? && libro[:final]==nil
end
def  vacia?(autor)
    return autor[:tope].nil? && autor[:final]==nil
end
def  buscar_libro(libro,l)
    if vaciaa?(libro)
    else
       
            end
  end
#insertar libro
def otroin(libro,a,autor,l,f)
    puts 'ISBN'
    i=gets.chomp
    puts 'Precio:'
    pr=gets.chomp
    if vaciaa?(libro)
            elemento = {
                nombre:l,
                ISBN:i,
                nombrea:a,
                precio:pr,
                siguiente:nil,
                size:0,
                existencias:f
            }
       libro[:tope] = elemento
       libro[:esta_vacia]=false
    else
            elemento ={
                nombre:l,
                ISBN: i,
                nombrea:a,
                precio:pr,
                size:libro[:size],
                siguiente:elemento,
                existencias:f
            }
           tope=libro[:tope]
           elemento[:siguiente]=tope
          libro[:tope]=elemento

    end
        elemento[:libro]=libro
        libro[:size]+=1
end
#esto agregar
def insertarli(libro,a,autor)
    r=libro[:tope]
  
    puts 'Nombre del libro'
    l=gets.chomp
    loop do
      
    if buscar_libro(libro,l)
        f=1
     puts f= f+1
     puts "EXISTENCIAS"
     puts libro[:existencias]
     break
    else
        otroin(libro,a,autor,l,f) 
        f=1
        puts "EXISTENCIAS"
        puts  libro[:existencias]=f
        break
        
    end
    end
end

def mostrarli(libro,autor)

    if vaciaa?(libro)
        puts "No hay libros"
    else
    table = Terminal::Table.new do | t |
        t.headings =['CODIGO','NOMBRE LIBRO','NOMBRE AUTOR','PRECIO Q.','Existencias']
       aux =libro[:tope]
       loop do 
            t.add_row ( [
                aux[:ISBN],
                aux[:nombre],
                aux[:nombrea],
                aux[:precio],
                libro[:existencias]
                #como colocar existencias
                    ])
                 if aux[:siguiente] != nil
                    aux=aux[:siguiente]
                else
                    break              
                end
        
            end
            end
    end
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

def descuento(existencias,compra)
    #aux[:precio]
    if compra==3
        Venta=(lib1+lib2+lib3)
        T=Venta%10
        T2=Venta%5
        VentaT=Venta-(T+T2)
    elsif compra==2
        Venta=(lib1+lib2)
        T=Venta%20
        VentaT=Venta-T
    elsif compra==1
        Venta=lib
    end  
end
#Ingresamos lineas nuevas 

def ventas(libro,existencias,precio)
    
   puts mostrar(libro, existencias)
    puts "REALIZAR VENTA"
    puts "Escriba cuantas ventas desea realizar"
    compra= gets.chomp.to_i

    if compra==3
        puts "Ingrese primer libro"
        lib1=gets.chomp
        if buscarlibro(libro,a,autor)
            puts "Libro econtrado"
            def descuento(existencias,compra)
    #aux[:precio]
    if compra==3
        Venta=(lib1+lib2+lib3)
        T=Venta%10
        T2=Venta%5
        VentaT=Venta-(T+T2)
    elsif compra==2
        Venta=(lib1+lib2)
        T=Venta%20
        VentaT=Venta-T
    elsif compra==1
        Venta=lib
    end  
end

def ventas(libro,existencias,precio)
    
   puts mostrar(libro, existencias)
    puts "REALIZAR VENTA"
    puts "Escriba cuantas ventas desea realizar"
    compra= gets.chomp.to_i

    if compra==3
        puts "Ingrese primer libro"
        lib1=gets.chomp
        if buscarlibro(libro,a,autor)
            puts "Libro econtrado"
        end
        puts "Ingrese segundo libro"
        lib2=gets.chomp
        if buscarlibro(libro,a,autor)
            puts "Libro econtrado"
        end
        puts "Ingrese tercer numero"
        lib3=gets.chomp
        if buscarlibro(libro,a,autor)
            puts "Libro econtrado"
        end
        descuento(libro, existencias)

    elsif compra==2
        puts "Ingrese primer libro"
        lib1=gets.chomp
        if buscarlibro(libro,a,autor)
            puts "Libro encontrado"
        end
        puts "Ingrese Segundo libro"
        lib2=gets.chomp
        if buscarlibro(libro,a,autor)
            puts "Libro encontrado"
        end
        descuento(libro, existencias)

    elsif compra==1
        puts "Ingrese nombre del libro"
        lib1=gets.chomp
        if buscarlibro(libro,a,autor)
            puts "Libro encontrado"
        end
        descuento(libro, existencias)

    else
        puts "Solo puede realizar 3 compras"
    end

end
        end
        puts "Ingrese segundo libro"
        lib2=gets.chomp
        if buscarlibro(libro,a,autor)
            puts "Libro econtrado"
        end
        puts "Ingrese tercer numero"
        lib3=gets.chomp
        if buscarlibro(libro,a,autor)
            puts "Libro econtrado"
        end
        descuento(libro, existencias)

    elsif compra==2
        puts "Ingrese primer libro"
        lib1=gets.chomp
        if buscarlibro(libro,a,autor)
            puts "Libro encontrado"
        end
        puts "Ingrese Segundo libro"
        lib2=gets.chomp
        if buscarlibro(libro,a,autor)
            puts "Libro encontrado"
        end
        descuento(libro, existencias)

    elsif compra==1
        puts "Ingrese nombre del libro"
        lib1=gets.chomp
        if buscarlibro(libro,a,autor)
            puts "Libro encontrado"
        end
        descuento(libro, existencias)

    else
        puts "Solo puede realizar 3 compras"
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

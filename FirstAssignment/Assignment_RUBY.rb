#1. Restituisce una stringa che dice "Benvenuto"

     def welcome_message 
      "Benvenuto" 
     end

#2.  Restituisce n! (fattoriale)

      def factorial(n) 
      n==0 ? 1: (1..n).reduce(:*)
      end

#3. Restituisce la stringa più lunga in un array di stringhe

   def find_longest_string(array) 
   if !array.empty?
   array.max_by{|i| i.length }
   else
        nil
   end
   end

#4.  Restituisce true se l'array contiene altri array (es. [[1],2,3] => true)

 def has_nested_array?(array) 
      array.each do|i| 
        if( i.is_a?(Array))then 
           return true 
           else 
           return false 
           end 
           end 
           end

#5.  Conta il numero di caratteri maiuscoli in una stringa

 def count_upcased_letters(string) 
  n=0
  s1=string.chars
  s1.each do|i|
   if i.upcase==i
        n+=1
   end
  end
      return n
   end

#6. Converte un numero in numero romano
def to_roman(n)
  roman_numbers = {
    1000 => "M",
     900 => "CM",
     500 => "D",
     400 => "CD",
     100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
       9 => "IX",
       5 => "V",
       4 => "IV",
       1 => "I"
  }
  result = ""
  number = n
  roman_numbers.keys.each do |divisor|
    quotient = number/divisor
    remainder = number%divisor
    if quotient !=0
      result << roman_numbers[divisor] * quotient
      number = remainder
    end
  end
  result
end

# costruisce un punto con coordinate (x,y)
class Point2D 
# costruttore
  def initialize(x,y) 
     @x=x 
     @y=y 
     end
# la classe punto deve avere rendere accessibili gli attributi `x` e `y` IN SOLA LETTURA
     attr_reader :x,:y 
# la funzione `+` riceve come argomento un oggetto Point2D e restituisce un nuovo oggetto Point2D che ha come 
#coordinate la somma delle coordinate dei due oggetti
     def + (point) 
       return Point2D.new(@x+point.x,@y+point.y) 
       end
# Restituisce una rappresentazione testuale dell'oggetto punto, nella forma "(x,y)", senza spazi 
       def to_s 
         "(#{@x},#{@y})" 
         end 
         end


require 'date' # necessario per l'uso della classe Date

class Book
  attr_accessor :title, :author, :release_date, :publisher, :isbn

  # Implementa il costruttore
   def initialize(title:, author:, release_date:, publisher:, isbn:)
    @title= title
    @author= author
    @release_date= release_date
    @publisher= publisher
    @isbn= isbn
  end

  def Fixnum?(num)
    num<10**10 and num>10**9
  end

  # requisiti perche' un libro sia considerato valido:
  # title deve essere una stringa (@title.class == String) non vuota
  # author deve essere una stringa non vuota
  # release_date deve essere un oggetto Date
  # publisher deve essere una stringa non vuota
  # isbn deve essere un Fixnum minore di 10**10 e maggiore di 10**9
       def stringa_valida?(string)
    (string.class == String) && (!string.empty?)
  end

  def valid? #book.valid?
    @cont[:title]="valid" if (@title.is_a?(String) && !@title.empty?)
    @cont[:author]="valid" if (@author.is_a?(String) && !@author.empty?)
    @cont[:release_date]="valid" if (@release_date.is_a?(Date))
    @cont[:publisher]="valid" if (@publisher.is_a?(String) && !@publisher.empty?)
    @cont[:isbn]="valid" if (@isbn.is_a?(Fixnum) && @isbn <= 10**10 && @isbn >= 10**9)
  
    stringa_valida?(@title) && stringa_valida?(@author) && stringa_valida?(@publisher) && (release_date.class == Date) && Fixnum?(@isbn)
  end 


  # restituisce un array di simboli.
  # Se l'oggetto e' valido, restituisce un vettore vuoto
  # Se non lo e', per ogni attributo che non e' valido, la chiave per
  # quell'attributo deve essere presente nel vettore, in qualsiasi ordine.
  # esempio: title e author non sono validi, restituisce [:title, :author]
   def errors(book)
    array = []
    if book.valid? #valid?
      array #return ?
      #puts "tutti gli attributi del libro sono validi"
    else  #metodo push per inserire in modalità append
      if !stringa_valida?(@title)
        array.push(":title")
      end

      if !stringa_valida?(@author)
        array.push(":author")
      end

      if !stringa_valida?(@publisher)
        array.push(":publisher")
      end

      if !@release_date.class == Date
        array.push(":release_date")
      end

      if !Fixnum?(@isbn)
        array.push(":isbn")
      end
    end
  end # ERRORS END
end




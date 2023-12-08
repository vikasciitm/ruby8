class Student
    def info(name,email,number)
      return name,email,number
    end
end
obj1=Student.new

value=Array.new
while true
    print "\npush=1\ndisplay=3\nexit=0\nEnter the your cho:"
    cho=gets.to_i
    case cho
    when 1
        puts "Enter the name,email,number"
        value=obj1.info(gets.chomp,gets.chomp,gets.to_i)
    when 3
        n=0
        print "\nName".ljust(25)+"Email".ljust(25)+"Number\n"
        while n<=value.length
            for i in 1..3
                print "#{value[n]}".ljust(25)
                n+=1
            end
            print "\n"
        end
    when 0
        break
    end
end
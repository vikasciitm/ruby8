stu_name=[]
stu_email=[]
stu_number=[]
while true
    puts "\n\n***************************************\n"
    puts "student details".upcase.center(100)
    print "\npush=1\npop=2\ndisplay=3\nexit=0\nEnter your cho:"
    cho=gets.to_i
    case cho
    when 1
        puts "\n\n***************************************\n"
        puts "Student data enter".center(100)
        print "\nEnter your name:"
        stu_name.push(gets.chomp)
        print "\nEnter your email:"
        stu_email.push(gets.chomp)
        print "\nEnter your mobile number:"
        stu_number.push(gets.to_i)
    when 2
        puts "\n\n***************************************\n"
        puts "Student data delete".center(100)
        puts "Name=#{stu_name.pop}"
        puts "Email=#{stu_email.pop}"
        puts "Number=#{stu_number.pop}"
    when 3
        puts "\n\n***************************************\n"
        puts "Student all data display".center(50)
        print  "Id".ljust(3)+"Name".ljust(15)+"Email".ljust(35)+"Number"
        for i in 0...stu_name.length
            print "\n#{i}".ljust(3)+"#{stu_name[i]}".ljust(15)+"#{stu_email[i]}".ljust(35)+"#{stu_number[i]}"
        end
    when 0
        break
    else
        puts "your cho wrong".upcase.center(100)
    end
end
class Student
  
  # Instance attributes with defined getter and setter
  @first_name

  # Class attributes are static and are available across different objects.
  @@total_student = 0

  # Instance attributes with automatic getter and setter
  attr_accessor :last_name, :email 
  attr_reader :password
  attr_writer :username
  
  # setter
  def first_name=(value)
    @first_name = value
  end
  
  # getter
  def first_name
    @first_name
  end

  def username=(value)
    @username = value
  end

  # override string method
  def to_s
    @password = "secret123"
    @@total_student += 1
    print "first Name is #{@first_name}, Last name: #{@last_name}, Username: #{@username},
      Password: #{@password}, email address: #{@email}, total student=#{@@total_student} \n"
  end

end

# instanciating ONE
stud_one = Student.new

# setter
stud_one.first_name = 'Raph'
stud_one.email = "abc@gmail.com"
stud_one.username = 'rmc3408'

# getter
puts stud_one.first_name

# print overrided to_s method
stud_one.to_s


# instanciating TWO
stud_two = Student.new
stud_two.first_name = 'Jason'
stud_two.email = "xyz@gmail.com"
stud_two.to_s

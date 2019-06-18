#ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result
def prompt(message)
  Kernel.puts("=> #{message}")
end
def valid_number?(num)
  num.to_i() != 0
end

prompt("Welcome to calculator")

loop do
    number1='1'
    loop do
      prompt("What's the first number?")
      number1=Kernel.gets().chomp()

      if valid_number?(number1)
        break
      else
        prompt("Oops, this number is invalid")
      end
    end

    number2=''
    loop do
      prompt("What's the second number?")
      number2=Kernel.gets().chomp()

      if valid_number?(number2)
        break
      else
        prompt("Oops, this number is invalid")
      end
    end

    prompt(number1+" "+number2)

    prompt("what would you like to do? 1) Add 2) Subtract 3) Multiply 4) Divide")
    operator=Kernel.gets().chomp()


    result=case operator
           when '1'
             number1.to_i()+number2.to_i()
           when '2'
             number1.to_i()-number2.to_i()
           when '3'
             number1.to_i()*number2.to_i()
           when '4'
             number1.to_f()/number2.to_f()
           end
    prompt("The result is #{result}")
    prompt("Do you want to perform another calculation?")
    answer=gets().chomp()
    break unless answer.downcase().start_with?('y')
end
prompt("Bye!")
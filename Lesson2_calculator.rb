#ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result
def prompt(message)
  Kernel.puts("=> #{message}")
end


prompt("Welcome to calculator")

prompt("What's the first number?")
number1=Kernel.gets().chomp()

prompt("What's the second number?")
number2=Kernel.gets().chomp()

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
#ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

Kernel.puts("Welcome to Calculator")

Kernel.puts("What's the first number?")
number1=Kernel.gets().chomp()

Kernel.puts("What's the second number?")
number2=Kernel.gets().chomp()

Kernel.puts(number1+" "+number2)

Kernel.puts("what would you like to do? 1) Add 2) Subtract 3) Multiply 4) Divide")
operator=Kernel.gets().chomp()

if operator =='1'
  result=number1.to_i+number2.to_i
elsif
  operator=='2'
  result=number1.to_i-number2.to_i
elsif
  operator=='3'
  result=number1.to_i*number2.to_i
elsif
  operator=='4'
  result=number1.to_f/number2.to_f
end

Kernel.puts("The result is #{result}")
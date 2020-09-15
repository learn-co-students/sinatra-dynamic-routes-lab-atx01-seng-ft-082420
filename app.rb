require_relative "config/environment"

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:number" do
    number = params[:number].to_i
    solution = number * number
    solution.to_s
  end

  get "/say/:number/:phrase" do
    number = params[:number].to_i
    phrase = params[:phrase]
    solution_array = []
    number.times do solution_array.push(phrase) end
    solution_array.join(" ")
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end

  get "/:operation/:number1/:number2" do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    solution = "Cannot perform this operation"

    case params[:operation]
    when "add"
      solution = (number1 + number2).to_s
    when "subtract"
      solution = (number1 - number2).to_s
    when "multiply"
      solution = (number1 * number2).to_s
    when "divide"
      solution = (number1 / number2).to_s
    end
  end
end

#helpful example from lesson
# get '/medicines/:id' do
#   @medicine = all_the_medicines.select do |medicine|
#     medicine.id == params[:id]
#   end.first
#   erb :'/medicines/show.html'
# end

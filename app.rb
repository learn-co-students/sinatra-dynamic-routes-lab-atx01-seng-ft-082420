require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do 
    @username = params[:name]
    reversed = @username.reverse
    "#{reversed}"
  end

  get '/square/:number' do 
    @num = params[:number].to_i
    squared = @num * @num
    "#{squared}"
  end

  get '/say/:number/:phrase' do 
    @num = params[:number].to_i
    @word = params[:phrase]
    num_word = @word * @num
    "#{num_word}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word_one = params[:word1].to_s
    @word_two = params[:word2].to_s
    @word_three = params[:word3].to_s
    @word_four = params[:word4].to_s
    @word_five = params[:word5].to_s
    new_str = [@word_one,@word_two,@word_three,@word_four,@word_five].join(' ')

    "#{new_str}."
  end

  get '/:operation/:number1/:number2' do 
    @oper = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @oper == 'add'
      final = @num1 + @num2
      fo = final.to_s
      "#{fo}"
    elsif @oper == 'subtract'
      final = @num1 - @num2
      fo = final.to_s
      "#{fo}"
    elsif @oper == 'multiply'
      final = @num1 * @num2
      fo = final.to_s
      "#{fo}"
    else @oper == 'divide'
      final = @num1 / @num2
      fo = final.to_s
      "#{fo}"
    end
  end

end
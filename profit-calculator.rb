class Milks
  attr_accessor :balance

  def initialize(name, balance)
    @name = name
    @balance = balance
  end
  milks_stock = {peanut: 0.00, sunflower: 0.00, yam: 0.00, cashew: 0.00, coconut: 0.00, almond:0.00}
  milks_profit = {peanut: 0, sunflower: 0, yam: 0, cashew: 0, coconut: 0, almond: 0}
=begin
  puts "Would you like to update stock or profits?"
  update = gets.chomp
  #i need to direct them to the right hash
=end
  puts "What would you like to do?"
  task = gets.chomp
  case task
  when 'add'
    puts "Which vegmilk would you like to add?"
    to_add = gets.chomp
    if milks_stock[to_add.to_sym].nil?
      puts "Which vegmilk would you like to add?"
      to_add = gets.chomp
      milks[to_add.to_sym] = vegmilk_to_add
    else
      puts "This vegmilk already exists. The stock is #{milks_stock[to_add.to_sym]} and it's profit is #{milks_profit[to_add.to_sym]}"
    end
  when 'update'
    puts "Which vegmilk would you like to update?"
    @to_update = gets.chomp
    case @to_update
    when 'peanut'
      puts "How many bottles of #{@to_update} milk were made this week?"
      bottles = gets.chomp
      product_out = bottles * -0.075
      stock_update = Hash.new
      stock_update[@to_update.to_sym] = product_out.to_f
      weekly_stock_update = milks_stock.merge!(stock_update) {|k, v| product_out.to_f + v if k == @to_update.to_sym}
    when 'sunflower'
      puts "How many bottles of #{@to_update} milk were made this week?"
      bottles = gets.chomp
      product_out = bottles * -0.075
      stock_update = Hash.new
      stock_update[@to_update.to_sym] = product_out.to_f
      weekly_stock_update = milks_stock.merge!(stock_update) {|k, v| product_out.to_f + v if k == @to_update.to_sym}
    when 'yam'
      puts "How many bottles of #{@to_update} milk were made this week?"
      bottles = gets.chomp
      product_out = bottles * -0.250
      stock_update = Hash.new
      stock_update[@to_update.to_sym] = product_out.to_f
      weekly_stock_update = milks_stock.merge!(stock_update) {|k, v| product_out.to_f + v if k == @to_update.to_sym}
    when 'cashew'
      puts "How many bottles of #{@to_update} milk were made this week?"
      bottles = gets.chomp
      product_out = bottles * -0.075
      stock_update = Hash.new
      stock_update[@to_update.to_sym] = product_out.to_f
      weekly_stock_update = milks_stock.merge!(stock_update) {|k, v| product_out.to_f + v if k == @to_update.to_sym}
    when 'coconut'
      puts "How many bottles of #{@to_update} milk were made this week?"
      bottles = gets.chomp
      product_out = bottles * -0.5
      stock_update = Hash.new
      stock_update[@to_update.to_sym] = product_out.to_f
      weekly_stock_update = milks_stock.merge!(stock_update) {|k, v| product_out.to_f + v if k == @to_update.to_sym}
    when 'almond'
      puts "How many bottles of #{@to_update} milk were made this week?"
      bottles = gets.chomp
      product_out = bottles * -0.1
      stock_update = Hash.new
      stock_update[@to_update.to_sym] = product_out.to_f
      weekly_stock_update = milks_stock.merge!(stock_update) {|k, v| product_out.to_f + v if k == @to_update.to_sym}
    else
      puts "Sorry, that's not an option baby girl."
    end
  when 'display'
    puts milks_stock
    puts milks_profit

  when 'delete'
    puts "Which milk would you like to delete?"
    vegmilk = gets.chomp
    if milks_stock[vegmilk.to_sym].nil?
      puts "You don't have this milk on the list babyzinha"
    else
      milks_stock.delete(vegmilk.to_sym)
      puts milks_stock
    end
  end
=begin
    weekly_update = Hash.new
    weekly_update[to_update.to_sym] = product_out.to_i

    weekly_totals = milks_profit.merge!(weekly_update) {|k,v| sales.to_i + v if k == vegmilk.to_sym}

    weekly_profit = File.open("profit-calculator.odt", "a")
    weekly_profit.puts weekly_totals
    weekly_profit.close
    puts milks
=end
puts weekly_stock_update
puts milks_profit

end

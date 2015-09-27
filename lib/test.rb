require './moneysaber'

moneysaber = MoneySaber::Calculator.new do |ms|
  ms.income = 250000
  ms.savings = 2000000
  ms.days = 365
end

p moneysaber.spendable_money(:day)
p moneysaber.spendable_money(:week)
p moneysaber.spendable_money(:year)

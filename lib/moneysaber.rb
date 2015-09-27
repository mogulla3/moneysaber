# require "moneysaber/version"
module MoneySaber
  class Calculator
    attr_accessor :income, :savings, :days

    def initialize
      yield(self) if block_given?
    end

    def spendable_money(unit)
      case unit
      when :day
        balance / 365
      when :week
        balance / (365 / 7)
      when :year
        balance / 1
      else
        raise 'error'
      end
    end

    # daysは何ヶ月分あるか
    def monthes
      @days / 30
    end

    # 年収
    def annual_income
      @income * monthes
    end

    # 残高
    # 収入 - 貯蓄の結果
    def balance
      annual_income - @savings
    end
  end
end

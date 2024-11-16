module Wallet

  # Define global hash variables
  $global_hash = {}

  # Add key value pairs to global hash variables in the method
  def add_to_global_hash(key, value)
    $global_hash[key] = value
  end

  # Accessing global hash variables in the method
  def read_from_global_hash(key)
    $global_hash.fetch(key,0)
  end

  class User < String
    include Wallet
    # test
    def initialize (account)
      super
      @name= account
      @account=account
      @tradation=Tradation.new(account)
    end

    def say_hello
      puts "Hello, my name is #{@name}!"
    end

    def create(amount,amttime)
      trade=@tradation
      trade.save(amount,amttime)
    end

    def withdraw(amount,amttime)
      trade=@tradation
      trade.withdraw(amount,amttime)
    end

    def transfer(account,amount,amttime)
      trade=@tradation
      trade.transfer(account,amount,amttime)
    end

    def balance()
      trade=@tradation
      trade.balance()
    end
  end

  class Tradation < String
    include Wallet

    def initialize (account)
      @account=account
    end

    def save(amount,amttime)
      string = read_from_global_hash(@account)
      acount_amt=string.to_f+amount.to_f
      add_to_global_hash(@account,acount_amt)
    end

    def withdraw(amount,amttime)
      string = read_from_global_hash(@account)
      acount_amt=string.to_f-amount.to_f
      add_to_global_hash(@account,acount_amt)
    end

    def transfer(account,amount,amttime)
      withdraw(amount,amttime)

      string = read_from_global_hash(account)
      acount_amt=string.to_f+amount.to_f
      add_to_global_hash(account,acount_amt)
    end

    #事件器
    def balance()
      read_from_global_hash(@account)
    end
  end
end

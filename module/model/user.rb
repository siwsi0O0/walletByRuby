class UserEn
  attr_accessor :name, :account

  def initialize(name, account)
    @name = name
    @account = account
  end

  def to_s
    "#{@name} (#{@account})"
  end
end


require './module/wallet'
require './module/model/user'

#Current user, account=12123
userEntity=UserEn.new("emma","12123")
#User uses wallet method to initialize user information and balance=0
user=Wallet::User.new(userEntity.account)
puts user.balance()
#User uses wallet method, deposits once, deposit amount=222
user.create('222','2024-11-15')
puts user.balance()
#The user uses the wallet method to withdraw once, with a withdrawal amount=3
user.withdraw('3','2024-11-16')
puts user.balance()
#The user uses the wallet method to transfer money to another user's account 22345, with the remittance amount=100
userEntityTr=UserEn.new("emma","22345")
user.transfer(userEntityTr.account,'100','2023-11-17')
puts user.balance()

user=Wallet::User.new(userEntityTr.account)
puts user.balance()



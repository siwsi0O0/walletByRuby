## Deployment Environment
* ruby 3.3.6
* RubyMine 2024.3
* rails 8.0.0

## project of file direcory
├── Readme.md                   // help document  
├── module                      // main logical modules of the code  
│     ├── model  
│     │     └── user.rb             //entity class  
│     ├── `wallet.rb`               //main code logic  
└── walletuser.rb               // sample of how to use modules

## project run steps
1. open the project in rubymine tool
2. run ruby walletuser.rb

## Project Description
* Considering the wallet requirements, users can deposit, withdraw, and transfer funds. A module has been designed to write the code logic within the module, which can be encapsulated and reused by different systems
* Considering this is a test project, use the simplest presentation method to create modules in an empty Ruby project
* In the wallet module, object-oriented programming is used. The Tradation class is responsible for directly withdrawing and depositing account deposits, while the user class is responsible for the way users operate their accounts.
* Due to the simplest project, it is stored in the global variables of the module
* The code function can enable users to deposit, withdraw, and transfer funds, as well as check their balance
* About non functionality , in terms of performance, it appears that the code in the example runs smoothly when calling the program continuously; In terms of modifiability, the storage method can be changed to a persistent method, and each transaction record and time can be recorded
* In the submitted function, the basic requirements do not include high availability and high concurrency. For high availability and high concurrency, rich middleware is required



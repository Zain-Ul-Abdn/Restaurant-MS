.data

     User_authenticationOption:.asciiz "\t\t\t1.Signup\n\n\t\t\t2.Login\n\n\t\t\t3.Leave\n"
    
     userName:.asciiz "\t\tUser Name : " 
     userPass:.asciiz "\n\t\tUser Pass : " 
   
     Input_userName:.space 100 
     Input_userPass:.space 100 
     Invalid_Input:.asciiz "\n\t\t\t************Invalid Input**************\n"
     Enteroption:.asciiz"\n\n\t\tEnter Option : "
     newLine:.asciiz "\n"
     exitMessage:.asciiz"\n\t\t***************\"Have A Nice Day!!!!!\"*****************\n"
     path:.asciiz"D:\\Mars4_5\\usersAccount.txt"
     path1:.asciiz"D:\\Mars4_5\\orders.txt"
     
     fileWord:.space 100
     fileWord1:.space 100
    
     DataError:.asciiz"\n\t\t***************\" If you don't have acccount!!Signup\"*****************\n"
     comma:.asciiz ","
     
     labelAuthentication:.asciiz "\t\t======================Authentication Page======================\n\n"
     labelAuthentication_User:.asciiz "\n\t\t======================User Authentication======================\n\n"
     labelAuthentication_Signup:.asciiz "\t\t------------------------------SIGN UP-----------------------------\n\n"
     labelAuthentication_Login:.asciiz  "\t\t------------------------------LOG IN------------------------------\n\n"
     
     
     userWelcomepageOption:"\n\t\t\t1.Order Items\n\n\t\t\t2.Search Previous Order\n\n\t\t\t3.Contact Us\n\n\t\t\t4.Exit\n"
      newline: .asciiz "\n\t\tTotal Bill : "
      
      ################## User Menu Code
welcome: .asciiz  "|--------------------------------------------------------------------------------------------------------------------|\n"
welcome1: .asciiz "|                                                                                                                    |\n"
welcome2: .asciiz "|                                                                                                                    |\n"
welcome3: .asciiz "|                                                                                                                    |\n"
welcome4:.asciiz  "|                                          ================================                                          |\n"
welcome5:.asciiz  "|                                                     WELCOME TO                                                     |\n"
welcome6:.asciiz  "|                                                   SBZ RESTAURANT                                                   |\n"
welcome7:.asciiz  "|                                                WE BELEIVE IN QUALITY                                               |\n"
welcome8:.asciiz  "|                                          ================================                                          |\n"
welcome9:.asciiz  "|                                                                                                                    |\n"
welcome10:.asciiz "|                                                                                                                    |\n"
welcome11:.asciiz "|                                                                                                                    |\n"
welcome12:.asciiz "|--------------------------------------------------------------------------------------------------------------------|\n"
Anykey: .asciiz "\nPress any key to continue : "

pak:      .asciiz "                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n"
pakmenu1: .asciiz "                                ***********PAKISTANI MENU***********\n"
pak1:     .asciiz "                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n"
pakmenu2: .asciiz "                            ITEMCODE#---------Description--------------Price(RS)\n"
pakmenu3: .asciiz "                            [1]---------------Burger---------------------100\n"
pakmenu4: .asciiz "                            [2]---------------chicken Karahi-------------1000\n"
pakmenu5: .asciiz "                            [3]---------------Fried chicken--------------700\n"
pakmenu6: .asciiz "                            [4]---------------chicken Nihari-------------3000\n"
pakmenu7: .asciiz "                            [5]---------------chicken Tikka--------------300\n"
pakmenu8: .asciiz "                            [6]---------------Biryani--------------------250\n"
pakmenu9: .asciiz "                            [7]---------------Haleem---------------------100\n"
pakmenu10:.asciiz "                            [8]---------------pulao----------------------200\n"
pakmenu11:.asciiz "                            [9]---------------Zinger burger--------------300\n"
pakmenu12:.asciiz "                            [10]--------------Halwa puri ----------------950\n"
pakmenu14: .asciiz "                            -------------------------------------------------"
pakmenu13:.asciiz "                            [0]-----------------Go Back------------------\n"

invalid3:.asciiz "\n\n\t\tInvalid Input PLZ re-enter :"
quantity1:.asciiz "\n\t\tEnter Quantity : "
ordermore:.asciiz"\n\n\t\t\tDO YOU WANT ANYTHIMNG ELSE ?(y/n):" 

########  Contact Page
name  : .asciiz"            ******************************** Credits*********************************\n"                        "
name1 : .asciiz"                             This program is made by the follwing people:\n"
name2 : .asciiz"                              \n\t\t\t\tZAIN UL ABDIN                 02-131212-033\n"
name3 : .asciiz"                              \n\t\t\t\tMUHAMMAD SABIR                02-131212-044\n"
name4 : .asciiz"                              \n\t\t\t\tABDUL BASIT                   02-131212-076\n"


### Receipt Page
 deliveryOption:.asciiz " \n\t\t1.Take Away\n\t\t2.Dine In \n\t\t3.Delivery" 
     # Enteroption:.asciiz"\n\n\t\tEnter Option : "
     # Anykey: .asciiz "\nPress any key to continue : "
     # continue: .asciiz "Do you want to continue : "
      billMessage:.asciiz "\n\tTotal Bill : "
      bill: .word 600
      key: .space 2
      Invalid:.asciiz "\n\tChoose from above!!!!"
      Amount:.asciiz "\n\n\tEnter Amount : "
      
      lessamount:.asciiz "\n\tAmount is less than total bill!!!"               
      #name: .asciiz "MUHAMMAD SABIR"        
      type: .asciiz "Take Away" 
      type1: .asciiz"Dine In" 
      type2: .asciiz"Delivery" 
       receipt: .asciiz"                                   RECEIPT                         \n"
receipt1:.asciiz"            -------------------------------------------------------\n\n"
receipt2:.asciiz"                   ORDER ID:"
receipt3:.asciiz"\n\n                            USER NAME     : "
receipt4:.asciiz"\n\n                            DELIVERY TYPE : "
receipt5:.asciiz"\n\n                            TOTAL BILL    : "
retAmount:.asciiz "\n\n                          Return Amount : "
receipt6:.asciiz"\n\n            -------------------------------------------------------\n\n"

Thankyou:.asciiz "\n\n\t\t Thank You For Order\n\t\t\tHappy Meal***"                  
  ######   Search Orders
  orderId:.asciiz "\n\t\tEnter Order ID : "
  InvalidId:.asciiz "\n\tInvalid ID"
  space:.asciiz"\n\t\t"
  space1:.asciiz"  "
.text
.globl main
main:
    
     li $t7,0
     jal userAuthentication

     #***************User page code start from here***********
     userAuthentication:
    
     li $v0,4
     la $a0,labelAuthentication_User
     syscall
  
     li $v0,4
     la $a0,newLine
     syscall

     li $v0,4
     la $a0, User_authenticationOption
     syscall
     
     li $v0,4
     la $a0,Enteroption
     syscall
     
     li $v0,5
     syscall
     
     move $t0,$v0

     
     beq $t0,1 userSignup
     beq $t0,2,userLogin
     beq $t0,3 exit
     jal Invalid_User_Authentication_Option
     
     userInput:
    
     li $v0,4
     la $a0,userName
     syscall
     
     li $v0,8
     la $a0,Input_userName
      la $a1,100
     syscall
     
     li $v0,4
     la $a0,newLine
     syscall
     
     li $v0,4
     la $a0,userPass
     syscall
     
     li $v0,8
     la $a0, Input_userPass
     la $a1,100
     syscall
     
    la $s0,Input_userName
    li $t1,0
    li $t2,0
    b nameLength 
    
  nameLength:
    
    lb $t1,($s0)
   # beq $t1,'n' main
   
    add $s0,$s0,1
    add $t2,$t2,1
    
    bne $t1,'\n' nameLength
    sub $t2,$t2,1
    
    la $s1,Input_userPass
    li $t3,0
    li $t0,0
    b passLength
    
  passLength:
    lb $t3,($s1)
   # beq $t1,'n' main
   
    add $s1,$s1,1
    add $t0,$t0,1
    
    bne $t3,'\n' passLength
    sub $t0,$t0,1
    
  checkLength:
    beq $t2,0 userInput  #Name Length
    beq $t0,0 userInput  # Password Length
    
    jal ReadFile
    
    jal WriteFile
    
     userSignup:
     li $v0,4
     la $a0,labelAuthentication_Signup
     syscall
   
     li $v0,4
     la $a0,newLine
     syscall
     
     jal userInput
     
     WriteFile:
     li $v0,13
     la $a0,path
     li $a1,1
     syscall
     
     move $s0,$v0
     
     li $v0,15
     move $a0,$s0
     la $a1,Input_userName
     move $a2,$t2
     syscall
     
     li $v0,15
     move $a0,$s0
     la $a1,comma
     la $a2,1
     syscall
     
     li $v0,15
     move $a0,$s0
     la $a1,Input_userPass
     move $a2,$t0
     syscall
     
     li $v0,15
     move $a0,$s0
     la $a1,newLine
     la $a2,1
     syscall

     li $v0,15
     move $a0,$s0
     la $a1,fileWord
     la $a2,100
     syscall
     
     li $v0,16
     move $a0,$s0
     syscall
     
     jal userAuthentication
     
     userLogin:
     li $v0,4
     la $a0,labelAuthentication_Login
     syscall
   
     li $v0,4
     la $a0,newLine
     syscall
     
     jal userInput1
     jal ReadFile
     jal validationProcess
     b exit
     
     userInput1:
    
     li $v0,4
     la $a0,userName
     syscall
     
     li $v0,8
     la $a0,Input_userName
      la $a1,100
     syscall
     
     li $v0,4
     la $a0,newLine
     syscall
     
     li $v0,4
     la $a0,userPass
     syscall
     
     li $v0,8
     la $a0, Input_userPass
     la $a1,100
     syscall
     
     jr $ra
     
     ##-------------------Validation
     ReadFile:
     #Read data from file
     li $v0,13
     la $a0,path
     li $a1,0
     syscall
     
     move $s0,$v0
     
     li $v0,14
     move $a0,$s0
     la $a1,fileWord
     la $a2,100
     syscall
     
     li $v0,16
     move $a0,$s0
     syscall
     
     jr $ra
     
     validationProcess:
     la $s0,fileWord
     la $s1,Input_userName
     la $s2,Input_userPass
     b validateName
     
     Recheck:
     add $s0,$s0,1
     la $s1,Input_userName
     la $s2,Input_userPass
     b validateName
     
     validateName:
     lb $t0,($s0)
     lb $t1,($s1)
     
     beq $t0,',' increment #increment $s0
     beq $t0,'\0',Error
     bne $t1,$t0,nextLine
     
     add $s0,$s0,1
     add $s1,$s1,1
     b validateName
     
     increment:
     add $s0,$s0,1
     li $t1,0
     b validatePass
     
     validatePass:
     lb $t0,($s0)
     lb $t1,($s2)
     
     beq $t0,'\n' userwelcomePage
     beq $t0,'\0',Error
     bne $t1,$t0,nextLine
     
     add $s0,$s0,1
     add $s2,$s2,1
     b validatePass
     
     Error:
     li $v0,4
     la $a0,DataError
     syscall
     
     b userAuthentication
     
     nextLine:
     add $s0,$s0,1
     lb $t0,($s0)
     beq $t0,0 DataError
     beq $t0,'\n' Recheck
     b nextLine
     
     Invalid_User_Authentication_Option:
     li $v0,4
     la $a0,Invalid_Input
     syscall
     
     jal  userAuthentication
     #***************User page code Ends here***********
     
     #***************Authentication page code Ends  here***********
     userwelcomePage:
     #welcome page code
     jal WelcomePage
     
   proceed:
     li $v0,4
     la $a0,userWelcomepageOption
     syscall
     
     li $v0,4
     la $a0,Enteroption
     syscall
     
     li $v0,5
     syscall
     move $t0,$v0
    
     beq $t0,1 ordermore3
     beq $t0,2 searchOrder
     beq $t0,3 contact
     beq $t0,4 userAuthentication
     
     li $v0,4
     la $a0,Invalid_Input
     syscall
     
     jal proceed
     
searchOrder:
     li $v0,4
     la $a0,orderId
     syscall
     
     li $v0,5
     syscall
     move $t0,$v0
     
     beq $t0,$t7 displayOrder
     
     li $v0,4
     la $a0,InvalidId
     syscall
     
     b searchOrder
     
 displayOrder:
     li $v0,4
     la $a0,receipt
     syscall
     
     li $v0,4
     la $a0,receipt1
     syscall
     
     li $v0,4
     la $a0,receipt2
     syscall
     
     li $v0,1
     move $a0,$t0
     syscall
     
     li $v0,4
     la $a0,space
     syscall
     
     li $v0,4
     la $a0,Input_userName
     syscall
     
     li $v0,4
     la $a0,space1
     syscall
     
     li $v0,4
     move $a0,$s6
     syscall
     
     li $v0,4
     la $a0,space1
     syscall
     
     li $v0,1
     move $a0,$t3
     syscall
     
     li $v0,4
     la $a0,Anykey
     syscall
     
     li $v0,8
     la $a0,key
     la $a1 2
     syscall
     
     la $t0,key
     beq $t0,'\n' proceed
     bne $t0,'\n' proceed
     
     
     WelcomePage:
          la $a0,welcome
li $v0,4
syscall
 la $a0,welcome1
li $v0,4
syscall

la $a0,welcome2
li $v0,4
syscall

la $a0,welcome3
li $v0,4
syscall

la $a0,welcome4
li $v0,4
syscall
la $a0,welcome5
li $v0,4
syscall
la $a0,welcome6
li $v0,4
syscall
la $a0,welcome7
li $v0,4
syscall

la $a0,welcome8
li $v0,4
syscall
la $a0,welcome9
li $v0,4
syscall
la $a0,welcome10
li $v0,4
syscall
la $a0,welcome11
li $v0,4
syscall
la $a0,welcome12
li $v0,4
syscall

     li $v0,4
     la $a0,Anykey
     syscall
     
     li $v0,8
     la $a0,key
     la $a1 2
     syscall
     
     la $t0,key
     beq $t0,'\n' proceed
     bne $t0,'\n' proceed
         
         
    ordermore3:
        li $t2,0
        la $a0,pak
        li $v0,4
        syscall

la $a0,pakmenu1
li $v0,4
syscall
la $a0,pak
li $v0,4
syscall

li $v0,4
la $a0,pakmenu2
syscall
li $v0,4
la $a0,pakmenu3
syscall
li $v0,4
la $a0,pakmenu4
syscall
li $v0,4
la $a0,pakmenu5
syscall
li $v0,4
la $a0,pakmenu6
syscall
li $v0,4
la $a0,pakmenu7
syscall
li $v0,4
la $a0,pakmenu8
syscall
li $v0,4
la $a0,pakmenu9
syscall
li $v0,4
la $a0,pakmenu10
syscall
li $v0,4
la $a0,pakmenu11
syscall
li $v0,4
la $a0,pakmenu12
syscall
li $v0,4
la $a0,pakmenu13
syscall
li $v0,4
la $a0,pakmenu14
syscall

reinput2:
li $a0,4
la $a0,Enteroption
syscall

li $v0,5
syscall
move $t0,$v0

beq $t0,0,userwelcomePage
beq $t0,1,quantity 	
beq $t0,2,quantity
beq $t0,3,quantity
beq $t0,4,quantity
beq $t0,5,quantity
beq $t0,6,quantity
beq $t0,7,quantity
beq $t0,8,quantity
beq $t0,9,quantity
beq $t0,10,quantity


li $v0,4
la $a0,Invalid_Input
syscall

b reinput2

contact:
li $v0,4
la $a0,name
syscall

li $v0,4
la $a0,name1
syscall

li $v0,4
la $a0,name2
syscall

li $v0,4
la $a0,name3
syscall

li $v0,4
la $a0,name4
syscall

     li $v0,4
     la $a0,Anykey
     syscall
     
     li $v0,8
     la $a0,key
     la $a1 2
     syscall
     
     la $t0,key
     beq $t0,'\n' proceed
     bne $t0,'\n' proceed

quantity:
#add $t7,$t7,1  

li $v0,4
la  $a0,quantity1
syscall

reinput4:

li $v0,5
syscall	
move $t1,$v0

bltz $t1,quantity
beqz $t1,quantity

beq $t0,1,Burger
beq $t0,2,chickenKarahir
beq $t0,3,Friedchicken
beq $t0,4,chickenNihari
beq $t0,5,chickenTikka
beq $t0,6,Biryani
beq $t0,7,Haleem
beq $t0,8,pulao
beq $t0,9,Zingerburger
beq $t0,10,Halwapuri

li $v0,4
la $a0,Invalid_Input
syscall

b reinput4

Burger:
mul $t2,$t1,100
add $t3,$t3,$t2
b ordermore2

chickenKarahir:
mul $t2,$t1,1000
add $t3,$t3,$t2
b ordermore2

Friedchicken:
mul $t2,$t1,700
add $t3,$t3,$t2
b ordermore2

chickenNihari:
mul $t2,$t1,3000
add $t3,$t3,$t2
b ordermore2


chickenTikka:
mul $t2,$t1,300
add $t3,$t3,$t2
b ordermore2


Biryani:
mul $t2,$t1,250
add $t3,$t3,$t2
b ordermore2

Haleem:
mul $t2,$t1,100
add $t3,$t3,$t2
b ordermore2

pulao:
mul $t2,$t1,200
add $t3,$t3,$t2
b ordermore2

Zingerburger:
mul $t2,$t1,300
add $t3,$t3,$t2
b ordermore2

Halwapuri:
mul $t2,$t1,950
add $t3,$t3,$t2
b ordermore2

#odermore2
 ordermore2:
 li $v0,4
 la $a0,ordermore
 syscall
 
 reinput3:
 li $v0,12
 syscall
 move $t0,$v0
 
beq $t0,'y',ordermore3
beq $t0,'n',savedetail
b pakmenu1

.globl savedetail
savedetail:

     li $v0,4
     la $a0,deliveryOption
     syscall
     
     li $v0,4
     la $a0,Enteroption
     syscall

     li $v0,5
     syscall
     
     move $t0,$v0
    
     
     beq $t0,1 Takeaway
     beq $t0,2 Dinein
     beq $t0,3 Delivery
     
     li $v0,4
     la $a0,Invalid
     syscall
     
     jal savedetail
 
   Dinein:
   la $s6,type
     addi $t7,$t7,1
     li $v0,4
     la $a0,billMessage
     syscall  
     
     li $v0,1
     move $a0,$t3
     syscall
    # move $t0,$a0
     
     li $v0,4
     la $a0,Amount
     syscall
     
     li $v0,5
     syscall
     move $t1,$v0
     
     blt $t1,$t3 lessPrint1
     
     sub $t4,$t1,$t3
     
     li $v0,4 
     la $a0,receipt
     syscall
     
      li $v0,4 
     la $a0,receipt1
     syscall
     
      li $v0,4 
     la $a0,receipt2
     syscall
     
     li $v0,1  
     move $a0,$t7    
     syscall   
     
      li $v0,4 
     la $a0,receipt3
     syscall
     
     
     li $v0,4 
     la $a0,Input_userName
     syscall
     
          li $v0,4 
     la $a0,receipt4
     syscall
     
    
     li $v0,4 
     la $a0,type1
     syscall
     
     
     li $v0,4 
     la $a0,receipt5
     syscall
     
     li $v0,1  
     move $a0,$t3    
     syscall 
     
     li $v0,4 
     la $a0,retAmount
     syscall
     
     li $v0,1  
     move $a0,$t4    
     syscall 
     
     li $v0,4
     la $a0,Thankyou
     syscall
     
     li $v0,4 
     la $a0,receipt6
     syscall
     
    # jal saveData
     
     li $v0,4
     la $a0,Anykey
     syscall
     
     li $v0,8
     la $a0,key
     la $a1 2
     syscall
     
     la $t0,key
     beq $t0,'\n' proceed
     bne $t0,'\n' proceed
     
     lessPrint1:
     li $v0,4
     la $a0,lessamount
     syscall
     
     jal Dinein
     
  Delivery: 
     la $s6,type2
     addi $t7,$t7,1
     li $v0,4
     la $a0,billMessage
     syscall  
     
     li $v0,1
     move $a0,$t3
     syscall
    # move $t0,$a0
     
     li $v0,4
     la $a0,Amount
     syscall
     
     li $v0,5
     syscall
     move $t1,$v0
     
     blt $t1,$t3 lessPrint2
     
     sub $t4,$t1,$t3
     
     li $v0,4 
     la $a0,receipt
     syscall
     
      li $v0,4 
     la $a0,receipt1
     syscall
     
      li $v0,4 
     la $a0,receipt2
     syscall
     
     li $v0,1  
     move $a0,$t7    
     syscall   
     
      li $v0,4 
     la $a0,receipt3
     syscall
     
     
     li $v0,4 
     la $a0,Input_userName
     syscall
     
          li $v0,4 
     la $a0,receipt4
     syscall
     
    
     li $v0,4 
     la $a0,type2
     syscall
     
     
     li $v0,4 
     la $a0,receipt5
     syscall
     
     li $v0,1  
     move $a0,$t3    
     syscall 
     
     li $v0,4 
     la $a0,retAmount
     syscall
     
     li $v0,1  
     move $a0,$t4    
     syscall 
     
     li $v0,4
     la $a0,Thankyou
     syscall
     
     li $v0,4 
     la $a0,receipt6
     syscall
     
    # jal saveData
     
     li $v0,4
     la $a0,Anykey
     syscall
     
     li $v0,8
     la $a0,key
     la $a1 2
     syscall
     
     la $t0,key
     beq $t0,'\n' proceed
     bne $t0,'\n' proceed
     
     lessPrint2:
     li $v0,4
     la $a0,lessamount
     syscall
     
     jal Delivery
     
Takeaway:
     la $s6,type
     addi $t7,$t7,1
     li $v0,4
     la $a0,billMessage
     syscall  
     
     li $v0,1
     move $a0,$t3
     syscall
    # move $t0,$a0
     
     li $v0,4
     la $a0,Amount
     syscall
     
     li $v0,5
     syscall
     move $t1,$v0
     
     blt $t1,$t3 lessPrint
     
     sub $t4,$t1,$t3
     
     li $v0,4 
     la $a0,receipt
     syscall
     
      li $v0,4 
     la $a0,receipt1
     syscall
     
      li $v0,4 
     la $a0,receipt2
     syscall
     
     li $v0,1  
     move $a0,$t7    
     syscall   
     
      li $v0,4 
     la $a0,receipt3
     syscall
     
     
     li $v0,4 
     la $a0,Input_userName
     syscall
     
          li $v0,4 
     la $a0,receipt4
     syscall
     
    
     li $v0,4 
     la $a0,type
     syscall
     
     
     li $v0,4 
     la $a0,receipt5
     syscall
     
     li $v0,1  
     move $a0,$t3    
     syscall 
     
     li $v0,4 
     la $a0,retAmount
     syscall
     
     li $v0,1  
     move $a0,$t4    
     syscall 
     
     li $v0,4
     la $a0,Thankyou
     syscall
     
     li $v0,4 
     la $a0,receipt6
     syscall
     
    # jal saveData
     
     li $v0,4
     la $a0,Anykey
     syscall
     
     li $v0,8
     la $a0,key
     la $a1 2
     syscall
     
     la $t0,key
     beq $t0,'\n' proceed
     bne $t0,'\n' proceed
     
     lessPrint:
     li $v0,4
     la $a0,lessamount
     syscall
     
     jal Takeaway

     #Program completed here
     exit:
     li $v0,4
     la $a0,exitMessage
     syscall
     
     li $v0,10
     syscall
    

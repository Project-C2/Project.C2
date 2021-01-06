execute if score @s counter matches 39 run tellraw @a [{"text":"* ","color":"white"},{"selector":"@s"},{"text":"「3」","color":"white","italic":false}]
execute if score @s counter matches 30 run tellraw @a [{"text":"* ","color":"white"},{"selector":"@s"},{"text":"「2」","color":"white","italic":false}]
execute if score @s counter matches 20 run tellraw @a [{"text":"* ","color":"white"},{"selector":"@s"},{"text":"「1」","color":"white","italic":false}]
execute if score @s counter matches 10 run tellraw @a [{"text":"* ","color":"white"},{"selector":"@s"},{"text":"「へいらっしゃい！」","color":"white","italic":false}]
execute if score @s counter matches 0 at @s run function project-c:jobaction/114/skill/0/summon_noodle
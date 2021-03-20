scoreboard players set @s counter_3 25
function project-c:general/generaterandom3
scoreboard players set @s counter_2 7
function project-c:general/generaterandom2

execute if score @s counter_3 matches 0 run summon armor_stand ^5 ^ ^-5 {Invisible:1,Motion:[0.0d,-1.0d,0.0d],DisabledSlots:4144959,Tags:["125-rain","125-rainsummon"]}
execute if score @s counter_3 matches 1 run summon armor_stand ^5 ^ ^-2 {Invisible:1,Motion:[0.0d,-1.0d,0.0d],DisabledSlots:4144959,Tags:["125-rain","125-rainsummon"]}
execute if score @s counter_3 matches 2 run summon armor_stand ^5 ^ ^ {Invisible:1,Motion:[0.0d,-1.0d,0.0d],DisabledSlots:4144959,Tags:["125-rain","125-rainsummon"]}
execute if score @s counter_3 matches 3 run summon armor_stand ^5 ^ ^2 {Invisible:1,Motion:[0.0d,-1.0d,0.0d],DisabledSlots:4144959,Tags:["125-rain","125-rainsummon"]}
execute if score @s counter_3 matches 4 run summon armor_stand ^5 ^ ^5 {Invisible:1,Motion:[0.0d,-1.0d,0.0d],DisabledSlots:4144959,Tags:["125-rain","125-rainsummon"]}
execute if score @s counter_3 matches 5 run summon armor_stand ^2 ^ ^-5 {Invisible:1,Motion:[0.0d,-1.0d,0.0d],DisabledSlots:4144959,Tags:["125-rain","125-rainsummon"]}
execute if score @s counter_3 matches 6 run summon armor_stand ^2 ^ ^-2 {Invisible:1,Motion:[0.0d,-1.0d,0.0d],DisabledSlots:4144959,Tags:["125-rain","125-rainsummon"]}
execute if score @s counter_3 matches 7 run summon armor_stand ^2 ^ ^ {Invisible:1,Motion:[0.0d,-1.0d,0.0d],DisabledSlots:4144959,Tags:["125-rain","125-rainsummon"]}
execute if score @s counter_3 matches 8 run summon armor_stand ^2 ^ ^2 {Invisible:1,Motion:[0.0d,-1.0d,0.0d],DisabledSlots:4144959,Tags:["125-rain","125-rainsummon"]}
execute if score @s counter_3 matches 9 run summon armor_stand ^2 ^ ^5 {Invisible:1,Motion:[0.0d,-1.0d,0.0d],DisabledSlots:4144959,Tags:["125-rain","125-rainsummon"]}
execute if score @s counter_3 matches 10 run summon armor_stand ^ ^ ^-5 {Invisible:1,Motion:[0.0d,-1.0d,0.0d],DisabledSlots:4144959,Tags:["125-rain","125-rainsummon"]}
execute if score @s counter_3 matches 11 run summon armor_stand ^ ^ ^-2 {Invisible:1,Motion:[0.0d,-1.0d,0.0d],DisabledSlots:4144959,Tags:["125-rain","125-rainsummon"]}
execute if score @s counter_3 matches 12 run summon armor_stand ^ ^ ^ {Invisible:1,Motion:[0.0d,-1.0d,0.0d],DisabledSlots:4144959,Tags:["125-rain","125-rainsummon"]}
execute if score @s counter_3 matches 13 run summon armor_stand ^ ^ ^2 {Invisible:1,Motion:[0.0d,-1.0d,0.0d],DisabledSlots:4144959,Tags:["125-rain","125-rainsummon"]}
execute if score @s counter_3 matches 14 run summon armor_stand ^ ^ ^5 {Invisible:1,Motion:[0.0d,-1.0d,0.0d],DisabledSlots:4144959,Tags:["125-rain","125-rainsummon"]}
execute if score @s counter_3 matches 15 run summon armor_stand ^-2 ^ ^-5 {Invisible:1,Motion:[0.0d,-1.0d,0.0d],DisabledSlots:4144959,Tags:["125-rain","125-rainsummon"]}
execute if score @s counter_3 matches 16 run summon armor_stand ^-2 ^ ^-2 {Invisible:1,Motion:[0.0d,-1.0d,0.0d],DisabledSlots:4144959,Tags:["125-rain","125-rainsummon"]}
execute if score @s counter_3 matches 17 run summon armor_stand ^-2 ^ ^ {Invisible:1,Motion:[0.0d,-1.0d,0.0d],DisabledSlots:4144959,Tags:["125-rain","125-rainsummon"]}
execute if score @s counter_3 matches 18 run summon armor_stand ^-2 ^ ^2 {Invisible:1,Motion:[0.0d,-1.0d,0.0d],DisabledSlots:4144959,Tags:["125-rain","125-rainsummon"]}
execute if score @s counter_3 matches 19 run summon armor_stand ^-5 ^ ^5 {Invisible:1,Motion:[0.0d,-1.0d,0.0d],DisabledSlots:4144959,Tags:["125-rain","125-rainsummon"]}
execute if score @s counter_3 matches 20 run summon armor_stand ^-5 ^ ^-5 {Invisible:1,Motion:[0.0d,-1.0d,0.0d],DisabledSlots:4144959,Tags:["125-rain","125-rainsummon"]}
execute if score @s counter_3 matches 21 run summon armor_stand ^-5 ^ ^-2 {Invisible:1,Motion:[0.0d,-1.0d,0.0d],DisabledSlots:4144959,Tags:["125-rain","125-rainsummon"]}
execute if score @s counter_3 matches 22 run summon armor_stand ^-5 ^ ^ {Invisible:1,Motion:[0.0d,-1.0d,0.0d],DisabledSlots:4144959,Tags:["125-rain","125-rainsummon"]}
execute if score @s counter_3 matches 23 run summon armor_stand ^-5 ^ ^2 {Invisible:1,Motion:[0.0d,-1.0d,0.0d],DisabledSlots:4144959,Tags:["125-rain","125-rainsummon"]}
execute if score @s counter_3 matches 24 run summon armor_stand ^-5 ^ ^5 {Invisible:1,Motion:[0.0d,-1.0d,0.0d],DisabledSlots:4144959,Tags:["125-rain","125-rainsummon"]}

execute if score @s counter_2 matches 0 run scoreboard players set @e[tag=125-rainsummon,limit=1] counter_2 0
execute if score @s counter_2 matches 1 run scoreboard players set @e[tag=125-rainsummon,limit=1] counter_2 1
execute if score @s counter_2 matches 2 run scoreboard players set @e[tag=125-rainsummon,limit=1] counter_2 2
execute if score @s counter_2 matches 3 run scoreboard players set @e[tag=125-rainsummon,limit=1] counter_2 3
execute if score @s counter_2 matches 4 run scoreboard players set @e[tag=125-rainsummon,limit=1] counter_2 4
execute if score @s counter_2 matches 5 run scoreboard players set @e[tag=125-rainsummon,limit=1] counter_2 5
execute if score @s counter_2 matches 6 run scoreboard players set @e[tag=125-rainsummon,limit=1] counter_2 6

tag @e[tag=125-rainsummon,limit=1] remove 125-rainsummon
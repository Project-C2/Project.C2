
#scoreboard players set #xp_value value 0
#scoreboard players set #xp_max value 0

execute if entity @s[nbt={SelectedItem:{tag:{106_weapon:4}}},scores={stockcounter=1..}] run tag @s add 106_xp
execute if entity @s[nbt={SelectedItem:{tag:{106_weapon:5}}},scores={stockcounter=1..}] run tag @s add 106_xp
execute if entity @s[tag=106_xp] run scoreboard players operation #106_xp_value counter = @s stockcounter
execute if entity @s[tag=106_xp] run scoreboard players set #106_xp_max counter 9
execute if entity @s[tag=106_xp,scores={counter_2=6}] run scoreboard players add #106_xp_max counter 3
execute if entity @s[tag=106_xp] run tag @s remove 106_xp


function project-c:jobaction/106/xp_bar/set





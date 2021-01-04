clear @s dark_oak_slab{DarkHamburg:1b}
execute unless score @s counter_3 matches 1.. run function project-c:jobaction/114/replaceitem/1-0
execute if score @s counter_3 matches 1.. run function project-c:jobaction/114/replaceitem/1-1

playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 0.5
playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 0.7

summon falling_block ~ ~ ~ {BlockState:{Name:"glass"},Data:0,Time:1,DropItem:0,NoGravity:1b,Tags:["1-3-Skill"]}
summon falling_block ~ ~1 ~ {BlockState:{Name:"glass"},Data:0,Time:1,DropItem:0,NoGravity:1b,Tags:["1-3-Skill"]}

data merge block -105 2 -122 {auto:1b}

tag @s add KoutetuPotion
tag @s remove KoutetuPotionF
summon area_effect_cloud ~ -10 ~ {Tags:["this","110aqua_gun_aec"],Duration:5,Age:0}
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
tag @e[tag=this] remove this
tag @s add 110aqua_gun_using
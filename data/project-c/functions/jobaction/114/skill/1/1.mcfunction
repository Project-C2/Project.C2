tag @s add DarkSushiBlader

execute as @e[tag=114-DarkHamburg,tag=!114-Launched] if score @s playerNumber = @a[tag=DarkSushiBlader,limit=1] playerNumber run tag @s add 114-MyHamburg

tag @e[tag=114-MyHamburg,sort=random,limit=1] add 114-LaunchHamburg

tag @e[tag=114-LaunchHamburg,limit=1] add 114-Launched

scoreboard players set @e[tag=114-LaunchHamburg,limit=1] counter 0

execute if entity @s[team=Red] run team join RedDummy @e[tag=114-LaunchHamburg,limit=1]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=114-LaunchHamburg,limit=1]

execute as @e[tag=114-LaunchHamburg,limit=1] positioned as @s rotated as @a[tag=DarkSushiBlader,limit=1] run tp @s ~ ~ ~ ~ ~

scoreboard players add @s counter_4 60
execute unless entity @e[tag=114-MyHamburg,tag=!114-Launched,limit=1] run function project-c:jobaction/114/skill/1/2


tag @e[tag=114-MyHamburg] remove 114-MyHamburg
tag @e[tag=114-LaunchHamburg,limit=1] remove 114-LaunchHamburg
tag @s remove DarkSushiBlader
scoreboard players reset @s useCarrotStick

##演出
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0
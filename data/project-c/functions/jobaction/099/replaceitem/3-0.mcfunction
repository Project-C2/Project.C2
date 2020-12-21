
function project-c:jobaction/099/replaceitem/0
execute if entity @s[scores={CT1=1200..}] run function project-c:jobaction/099/replaceitem/1
#execute if entity @s[scores={CT2=1200..}] run function project-c:jobaction/099/replaceitem/2

execute if entity @s[tag=099-S3-FormChange] run tag @s remove 099-S3-FormChange
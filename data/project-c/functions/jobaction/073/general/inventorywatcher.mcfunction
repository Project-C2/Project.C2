#neutral1に属する処理

tag @s[tag=isneutral1selected] add havingneutral1-1item
tag @s[tag=isneutral1selected] add havingneutral1-2item
#tag @s[tag=isneutral1selected] add havingneutral1-3item


tag @s[nbt={Inventory:[{Slot:27b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§dMagicDamage Ⅰ\"}"}}}]}] remove havingneutral1-1item
tag @s[nbt={Inventory:[{Slot:28b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§cFireDamage Ⅰ\"}"}}}]}] remove havingneutral1-2item
#tag @s[nbt={Inventory:[{Slot:29b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§eLightningDamage Ⅰ\"}"}}}]}] remove havingneutral1-3item

execute if entity @s[tag=havingneutral1-1item] run function project-c:jobaction/073/neutral1/neutral1
execute if entity @s[tag=havingneutral1-2item] run function project-c:jobaction/073/neutral1/neutral2
#execute if entity @s[tag=havingneutral1-3item] run function project-c:jobaction/073/neutral1/neutral3 if @s[tag=havingneutral1-3item]

#=========================================================================================================================================================
#neutral2に属する処理

tag @s[tag=isneutral2selected] add havingneutral2-1item
tag @s[tag=isneutral2selected] add havingneutral2-2item
tag @s[tag=isneutral2selected] add havingneutral2-3item

tag @s[nbt={Inventory:[{Slot:27b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§dMagicDamage Ⅱ\"}"}}}]}] remove havingneutral2-1item
tag @s[nbt={Inventory:[{Slot:28b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§cFireDamage Ⅰ\"}"}}}]}] remove havingneutral2-2item
tag @s[nbt={Inventory:[{Slot:29b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§eLightningDamage Ⅰ\"}"}}}]}] remove havingneutral2-3item

execute if entity @s[tag=havingneutral2-1item] run function project-c:jobaction/073/neutral2/neutral1
execute if entity @s[tag=havingneutral2-2item] run function project-c:jobaction/073/neutral2/neutral2
execute if entity @s[tag=havingneutral2-3item] run function project-c:jobaction/073/neutral2/neutral3

#=========================================================================================================================================================
#neutral3に属する処理

tag @s[tag=isneutral3selected] add havingneutral3-1item
tag @s[tag=isneutral3selected] add havingneutral3-2item
tag @s[tag=isneutral3selected] add havingneutral3-3item

tag @s[nbt={Inventory:[{Slot:27b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§dMagicDamage Ⅱ\"}"}}}]}] remove havingneutral3-1item
tag @s[nbt={Inventory:[{Slot:28b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§cFireDamage Ⅱ\"}"}}}]}] remove havingneutral3-2item
tag @s[nbt={Inventory:[{Slot:29b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§eLightningDamage Ⅱ\"}"}}}]}] remove havingneutral3-3item

execute if entity @s[tag=havingneutral3-1item] run function project-c:jobaction/073/neutral3/neutral1
execute if entity @s[tag=havingneutral3-2item] run function project-c:jobaction/073/neutral3/neutral2
execute if entity @s[tag=havingneutral3-3item] run function project-c:jobaction/073/neutral3/neutral3

#=========================================================================================================================================================
#neutral4に属する処理

tag @s[tag=isneutral4selected] add havingneutral4-1item
tag @s[tag=isneutral4selected] add havingneutral4-2item
tag @s[tag=isneutral4selected] add havingneutral4-3item

tag @s[nbt={Inventory:[{Slot:27b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§dMagicDamage Ⅲ\"}"}}}]}] remove havingneutral4-1item
tag @s[nbt={Inventory:[{Slot:28b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§cFireDamage Ⅲ\"}"}}}]}] remove havingneutral4-2item
tag @s[nbt={Inventory:[{Slot:29b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§eLightningDamage Ⅱ\"}"}}}]}] remove havingneutral4-3item

execute if entity @s[tag=havingneutral4-1item] run function project-c:jobaction/073/neutral4/neutral1
execute if entity @s[tag=havingneutral4-2item] run function project-c:jobaction/073/neutral4/neutral2
execute if entity @s[tag=havingneutral4-3item] run function project-c:jobaction/073/neutral4/neutral3

#=========================================================================================================================================================
#neutral5に属する処理

tag @s[tag=isneutral5selected] add havingneutral5-1item
tag @s[tag=isneutral5selected] add havingneutral5-2item
tag @s[tag=isneutral5selected] add havingneutral5-3item

tag @s[nbt={Inventory:[{Slot:27b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§dMagicDamage Ⅲ\"}"}}}]}] remove havingneutral5-1item
tag @s[nbt={Inventory:[{Slot:28b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§cFireDamage Ⅲ\"}"}}}]}] remove havingneutral5-2item
tag @s[nbt={Inventory:[{Slot:29b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§eLightningDamage Ⅲ\"}"}}}]}] remove havingneutral5-3item

execute if entity @s[tag=havingneutral5-1item] run function project-c:jobaction/073/neutral5/neutral1
execute if entity @s[tag=havingneutral5-2item] run function project-c:jobaction/073/neutral5/neutral2
execute if entity @s[tag=havingneutral5-3item] run function project-c:jobaction/073/neutral5/neutral3

#=========================================================================================================================================================
#light1に属する処理

tag @s[tag=islight1selected] add havinglight1-1item
#tag @s[tag=islight1selected] add havinglight1-2item
#tag @s[tag=islight1selected] add havinglight1-3item

tag @s[nbt={Inventory:[{Slot:30b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§2Haste Ⅰ\"}"}}}]}] remove havinglight1-1item
#tag @s[nbt={Inventory:[{Slot:31b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§bJump Ⅰ\"}"}}}]}] remove havinglight1-2item
#tag @s[nbt={Inventory:[{Slot:32b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§aHeal Ⅰ\"}"}}}]}] remove havinglight1-3item

execute if entity @s[tag=havinglight1-1item] run function project-c:jobaction/073/light1/light1
#execute if entity @s[tag=havinglight1-2item] run function project-c:jobaction/073/light1/light2
#execute if entity @s[tag=havinglight1-3item] run function project-c:jobaction/073/light1/light3

#=========================================================================================================================================================
#light2に属する処理

tag @s[tag=islight2selected] add havinglight2-1item
tag @s[tag=islight2selected] add havinglight2-2item
tag @s[tag=islight2selected] add havinglight2-3item

tag @s[nbt={Inventory:[{Slot:30b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§2Haste Ⅰ\"}"}}}]}] remove havinglight2-1item
tag @s[nbt={Inventory:[{Slot:31b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§bJump Ⅰ\"}"}}}]}] remove havinglight2-2item
tag @s[nbt={Inventory:[{Slot:32b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§aHeal Ⅰ\"}"}}}]}] remove havinglight2-3item

execute if entity @s[tag=havinglight2-1item] run function project-c:jobaction/073/light2/light1
execute if entity @s[tag=havinglight2-2item] run function project-c:jobaction/073/light2/light2
execute if entity @s[tag=havinglight2-3item] run function project-c:jobaction/073/light2/light3

#=========================================================================================================================================================
#light3に属する処理

tag @s[tag=islight3selected] add havinglight3-1item
tag @s[tag=islight3selected] add havinglight3-2item
tag @s[tag=islight3selected] add havinglight3-3item

tag @s[nbt={Inventory:[{Slot:30b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§2Haste Ⅱ\"}"}}}]}] remove havinglight3-1item
tag @s[nbt={Inventory:[{Slot:31b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§bJump Ⅰ\"}"}}}]}] remove havinglight3-2item
tag @s[nbt={Inventory:[{Slot:32b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§aHeal Ⅰ\"}"}}}]}] remove havinglight3-3item

execute if entity @s[tag=havinglight3-1item] run function project-c:jobaction/073/light3/light1
execute if entity @s[tag=havinglight3-2item] run function project-c:jobaction/073/light3/light2
execute if entity @s[tag=havinglight3-3item] run function project-c:jobaction/073/light3/light3

#=========================================================================================================================================================
#light4に属する処理

tag @s[tag=islight4selected] add havinglight4-1item
tag @s[tag=islight4selected] add havinglight4-2item
tag @s[tag=islight4selected] add havinglight4-3item

tag @s[nbt={Inventory:[{Slot:30b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§2Haste Ⅱ\"}"}}}]}] remove havinglight4-1item
tag @s[nbt={Inventory:[{Slot:31b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§bJump Ⅱ\"}"}}}]}] remove havinglight4-2item
tag @s[nbt={Inventory:[{Slot:32b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§aHeal Ⅰ\"}"}}}]}] remove havinglight4-3item

execute if entity @s[tag=havinglight4-1item] run function project-c:jobaction/073/light4/light1
execute if entity @s[tag=havinglight4-2item] run function project-c:jobaction/073/light4/light2
execute if entity @s[tag=havinglight4-3item] run function project-c:jobaction/073/light4/light3

#=========================================================================================================================================================
#light5に属する処理

tag @s[tag=islight5selected] add havinglight5-1item
tag @s[tag=islight5selected] add havinglight5-2item
tag @s[tag=islight5selected] add havinglight5-3item

tag @s[nbt={Inventory:[{Slot:30b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§2Haste Ⅱ\"}"}}}]}] remove havinglight5-1item
tag @s[nbt={Inventory:[{Slot:31b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§bJump Ⅱ\"}"}}}]}] remove havinglight5-2item
tag @s[nbt={Inventory:[{Slot:32b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§aHeal Ⅱ\"}"}}}]}] remove havinglight5-3item

execute if entity @s[tag=havinglight5-1item] run function project-c:jobaction/073/light5/light1
execute if entity @s[tag=havinglight5-2item] run function project-c:jobaction/073/light5/light2
execute if entity @s[tag=havinglight5-3item] run function project-c:jobaction/073/light5/light3

#=========================================================================================================================================================
#dark1に属する処理

tag @s[tag=isdark1selected] add havingdark1-1item
#tag @s[tag=isdark1selected] add havingdark1-2item

tag @s[nbt={Inventory:[{Slot:33b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§1Slow Ⅰ\"}"}}}]}] remove havingdark1-1item
#tag @s[nbt={Inventory:[{Slot:34b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§5DarkDamage Ⅰ\"}"}}}]}] remove havingdark1-2item

execute if entity @s[tag=havingdark1-1item] run function project-c:jobaction/073/dark1/dark1
#execute if entity @s[tag=havingdark1-2item] run function project-c:jobaction/073/dark1/dark2 if @s[tag=havingdark1-2item]

#=========================================================================================================================================================
#dark2に属する処理

tag @s[tag=isdark2selected] add havingdark2-1item
#tag @s[tag=isdark2selected] add havingdark2-2item

tag @s[nbt={Inventory:[{Slot:33b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§1Slow Ⅱ\"}"}}}]}] remove havingdark2-1item
#tag @s[nbt={Inventory:[{Slot:34b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§5DarkDamage Ⅰ\"}"}}}]}] remove havingdark2-2item

execute if entity @s[tag=havingdark2-1item] run function project-c:jobaction/073/dark2/dark1
#execute if entity @s[tag=havingdark2-2item] run function project-c:jobaction/073/dark2/dark2

#=========================================================================================================================================================
#dark3に属する処理

tag @s[tag=isdark3selected] add havingdark3-1item
tag @s[tag=isdark3selected] add havingdark3-2item

tag @s[nbt={Inventory:[{Slot:33b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§1Slow Ⅱ\"}"}}}]}] remove havingdark3-1item
tag @s[nbt={Inventory:[{Slot:34b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§5DarkDamage Ⅰ\"}"}}}]}] remove havingdark3-2item

execute if entity @s[tag=havingdark3-1item] run function project-c:jobaction/073/dark3/dark1
execute if entity @s[tag=havingdark3-2item] run function project-c:jobaction/073/dark3/dark2

#=========================================================================================================================================================
#dark4に属する処理

tag @s[tag=isdark4selected] add havingdark4-1item
tag @s[tag=isdark4selected] add havingdark4-2item

tag @s[nbt={Inventory:[{Slot:33b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§1Slow Ⅲ\"}"}}}]}] remove havingdark4-1item
tag @s[nbt={Inventory:[{Slot:34b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§5DarkDamage Ⅰ\"}"}}}]}] remove havingdark4-2item

execute if entity @s[tag=havingdark4-1item] run function project-c:jobaction/073/dark4/dark1
execute if entity @s[tag=havingdark4-2item] run function project-c:jobaction/073/dark4/dark2
#=========================================================================================================================================================
#dark5に属する処理

tag @s[tag=isdark5selected] add havingdark5-1item
tag @s[tag=isdark5selected] add havingdark5-2item

tag @s[nbt={Inventory:[{Slot:33b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§1Slow Ⅲ\"}"}}}]}] remove havingdark5-1item
tag @s[nbt={Inventory:[{Slot:34b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§5DarkDamage Ⅱ\"}"}}}]}] remove havingdark5-2item

execute if entity @s[tag=havingdark5-1item] run function project-c:jobaction/073/dark5/dark1
execute if entity @s[tag=havingdark5-2item] run function project-c:jobaction/073/dark5/dark2

#=========================================================================================================================================================
#darknessoverload1に属する処理

tag @s[tag=isdarknessoverload1selected] add havingdarknessoverload1-1item

tag @s[nbt={Inventory:[{Slot:35b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§e§k1§r§0§lDarknessOverload§r§e§k1§r Ⅰ\"}"}}}]}] remove havingdarknessoverload1-1item

execute if entity @s[tag=havingdarknessoverload1-1item] run function project-c:jobaction/073/darknessoverload1/darknessoverload1

#=========================================================================================================================================================
#darknessoverload2に属する処理

tag @s[tag=isdarknessoverload2selected] add havingdarknessoverload2-1item

tag @s[nbt={Inventory:[{Slot:35b,id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:"{\"text\":\"§e§k1§r§0§lDarknessOverload§r§e§k1§r Ⅱ\"}"}}}]}] remove havingdarknessoverload2-1item


execute if entity @s[tag=havingdarknessoverload2-1item] run function project-c:jobaction/073/darknessoverload2/darknessoverload1

#=========================================================================================================================================================


#advancement初期化
advancement revoke @s only project-c:radiochat/amchat
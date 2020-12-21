
execute at @s facing entity @e[tag=this,limit=1] feet positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run summon area_effect_cloud ~ ~ ~ {Tags:["099-BkillO-this"],Duration:1}
data modify entity @s Motion set from entity @e[tag=099-BkillO-this,limit=1] Pos
kill @e[tag=099-BkillO-this]
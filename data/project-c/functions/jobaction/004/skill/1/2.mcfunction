#実行者     -> ArrowS
#実行地点   -> 実行者

kill @e[tag=ArrowSStand,distance=..5,limit=1]
summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:200,Tags:["ArrowSStand"]}
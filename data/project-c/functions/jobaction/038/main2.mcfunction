execute if entity @a[limit=1,scores={jobNumber=38,grandbattle_tl=0..630}] run function project-c:grandbattle/tick
execute unless entity @a[limit=1,scores={jobNumber=38,grandbattle_tl=0..630}] run function project-c:grandbattle/stop

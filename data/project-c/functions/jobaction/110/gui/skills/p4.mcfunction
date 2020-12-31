loot replace block 0 0 0 container.4 loot project-c:wnkm/110/skills/p4/13
loot replace block 0 0 0 container.5 loot project-c:wnkm/110/skills/p4/14
loot replace block 0 0 0 container.6 loot project-c:wnkm/110/skills/p4/15
loot replace block 0 0 0 container.7 loot project-c:wnkm/110/skills/p4/16

data modify block 0 0 0 Items[{tag:{110skillID:13b}}].tag.110GUISlot set value 4b
data modify block 0 0 0 Items[{tag:{110skillID:14b}}].tag.110GUISlot set value 5b
data modify block 0 0 0 Items[{tag:{110skillID:15b}}].tag.110GUISlot set value 6b
data modify block 0 0 0 Items[{tag:{110skillID:16b}}].tag.110GUISlot set value 7b

data modify block 0 0 0 Items[{tag:{110skill:1b}}].tag.110GUI set value 1b
data remove block 0 0 0 Items[{tag:{110skill:1b}}].tag.110skillID
data remove block 0 0 0 Items[{tag:{110skill:1b}}].tag.110skill



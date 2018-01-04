Soldier is a class representing game character. Every soldier has stats:
- Health points
- Armor which absorbs incoming damage
- Precision parameter defining soldier's hit chance while aiming
- Move range for 1 AP.

Soldier also has a weapon, which allows to deal damage and can give some buffs/debuffs to soldier's hit chance.

Every soldier spends Action Points for moving and performing actions, like shooting and reloading.
At the start of the turn soldier has 2 AP, and can use 1 or 2 AP to move, 1 (or 2 for Sniper class) to shoot and 1 to reload. Shooting ends turn for the current soldier.
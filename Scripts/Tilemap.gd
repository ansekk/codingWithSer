extends TileMap

var tileset

func _ready():
	
	tileset = load("res://Sprites/Tilesets/red_rock_random.tres")
	
	for x in range(0, 100):
		for y in range(0, 100):
			var tile = randi() % (tileset.get_tiles_ids().size() - 1) + 1
			set_cell(x, y, tile)

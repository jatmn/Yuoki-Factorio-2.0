stds.factorio = {
  read_globals = {
    "defines", "log", "settings",
    table = {fields = {deepcopy = {}}},
  },
}
std = "lua52+factorio"
not_globals = {"io", "os", "dofile", "loadfile", "coroutine"}
max_line_length = false
exclude_files = {"build/**", ".cache/**"}

-- Factorio 2.0 data-stage helpers and intentional Yuoki cross-file exports.
local data_reads = {
  "mods", "util", "kg", "sound_variations", "pipecoverspictures", "assembler2pipepictures", "assembler3pipepictures",
  "circuit_connector_definitions", "default_circuit_wire_max_distance",
  "make_rotated_animation_variations_from_sheet",
  "yi", "yi_energy_usage_quality_multiplier", "blank_sprite",
  "y_weapon_ztt", "y_laser2x2", "turret_gun1f12", "turret_gun2f12",
  "turret_laser22f12", "turret_flame", "turret_plasma",
  "playeranimations_y1", "playeranimations_y2", "playeranimations_y3", "playeranimations_y4",
  "playeranimations_y5", "pipepictures_hv", "pipepictures_ec", "pipepictures_green",
}
files["data*.lua"].globals = {"data"}
files["data*.lua"].read_globals = data_reads
files["settings*.lua"].globals = {"data"}
files["prototypes/**"].globals = {"data"}
files["prototypes/**"].read_globals = data_reads
files["lib/yi-tools.lua"].globals = {"data", "yi", "yi_energy_usage_quality_multiplier", "blank_sprite"}
files["lib/yi-tools.lua"].read_globals = {"game", "prototypes"}

files["prototypes/entity/e_defense.lua"].globals = {"y_weapon_ztt", "y_laser2x2"}
files["prototypes/entity/e_defense_f12.lua"].globals = {"turret_gun1f12", "turret_gun2f12", "turret_laser22f12"}
files["prototypes/entity/e_pipes.lua"].globals = {"pipepictures_hv", "pipepictures_ec", "pipepictures_green"}
files["prototypes/objects/rie_turret_flame.lua"].globals = {"turret_flame"}
files["prototypes/objects/rie_turret_plasma.lua"].globals = {"turret_plasma"}
files["prototypes/objects/y_player_styles.lua"].globals = {
  "playeranimations_y1", "playeranimations_y2", "playeranimations_y3", "playeranimations_y4", "playeranimations_y5",
}

files["control.lua"].globals = {"game", "storage"}
files["control.lua"].read_globals = {"script", "remote", "rendering", "prototypes", "helpers"}
files["scripts/**"].globals = {"game", "storage"}
files["scripts/**"].read_globals = {"script", "remote", "rendering", "prototypes", "helpers"}
files["migrations/**"].globals = {"game", "storage"}
files["migrations/**"].read_globals = {"script", "remote", "prototypes", "yi"}

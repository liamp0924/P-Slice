package mikolka.compatibility;

class VsliceOptions {
    public static var ALLOW_COLORING(get,never):Bool;    
    public static function get_ALLOW_COLORING():Bool {
        return ClientPrefs.data.vsliceFreeplayColors;
    }
    public static var FLASHBANG(get,never):Bool;    
    public static function get_FLASHBANG():Bool {
        return ClientPrefs.data.flashing;
    }
    public static var ANTIALIASING(get,never):Bool;    
    public static function get_ANTIALIASING():Bool {
        return ClientPrefs.data.antialiasing;
    }
    public static var LAST_MOD(get,set):CharSave; //format: "mod_dir||char_name"
    public static function get_LAST_MOD():CharSave {
        var shards = ClientPrefs.data.lastFreeplayMod.split('||');
        if(shards.length != 2) return {mod_dir: "", char_name: "bf"};
        else return {mod_dir: shards[0],char_name: shards[1]};
    }
    public static function set_LAST_MOD(value:CharSave) {
        ClientPrefs.data.lastFreeplayMod = '${value.mod_dir}||${value.char_name}';
        ClientPrefs.saveSettings();
        return value;
    }
}
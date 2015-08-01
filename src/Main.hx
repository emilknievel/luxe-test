
import luxe.Input;
import luxe.Color;
import luxe.Sprite;
import luxe.components.sprite.SpriteAnimation;

//Import for preloading assets from 'assets/parcel.json'
import luxe.Parcel;
import luxe.ParcelProgress;

import phoenix.Texture;

class Main extends luxe.Game {

    var player : Sprite;
    var player_animation : SpriteAnimation;
    var player_texture : Texture;

    override function ready() {

        var json_asset = Luxe.loadJSON('assets/parcel.json');

        var preload = new Parcel();
        preload.from_json(Luxe.resources.json(json_asset.json);

        new ParcelProgress({
            parcel      : preload,
            background  : new Color(1, 1, 0.85),
            bar         : new Color().rgb(0xeda10e),
            bar_border  : new Color().rgb(0xffffff),
            oncomplete  : assets_loaded //load the assets
        });

        preload.load();

    } //ready

    function assets_loaded(_) {
        create_player();
        create_player_animation();
        connect_input();
    } //assets_loaded

    function create_player() {
        player_texture = Luxe.loadTexture('assets/player_walk.png');

        player_texture.filter = FilterType.linear;

        //etc. etc.

    } //create_player

    function create_player_animation() {

    } //create_player_animation

    function connect_input() {

        Luxe.input.add('left', Key.left);
        Luxe.input.add('a', Key.key_a);

        Luxe.input.add('right', Key.right);
        Luxe.input.add('d', Key.key_d);

    } //connect_input

    override function onkeyup( e:KeyEvent ) {

        if(e.keycode == Key.escape) {
            Luxe.shutdown();
        }

    } //onkeyup

    override function update(dt:Float) {

    } //update


} //Main

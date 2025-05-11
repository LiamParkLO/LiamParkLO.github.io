// main.as - basic red square platformer

this.createEmptyMovieClip("player", 1);
player.beginFill(0xFF0000);
player.moveTo(0, 0);
player.lineTo(20, 0);
player.lineTo(20, 20);
player.lineTo(0, 20);
player.lineTo(0, 0);
player.endFill();
player.\_x = 100;
player.\_y = 200;

var gravity = 1;
var velocityY = 0;
var groundY = 200;
var jumpStrength = -12;
var moveSpeed = 5;
var isJumping = false;

this.onEnterFrame = function() {
    if (Key.isDown(Key.LEFT)) {
        player.\_x -= moveSpeed;
    }
    if (Key.isDown(Key.RIGHT)) {
        player.\_x += moveSpeed;
    }
    if (Key.isDown(Key.SPACE) && !isJumping) {
        velocityY = jumpStrength;
        isJumping = true;
    }

    velocityY += gravity;
    player.\_y += velocityY;

    if (player.\_y > groundY) {
        player.\_y = groundY;
        velocityY = 0;
        isJumping = false;
    }
};

# Stop the Cheese Monster

**A small 3D game made with the Godot game engine.**

This is a fork from <https://github.com/germanalen/Stop-The-Cheese-Monster> which is made with Godot 2.

This is my attempt to learn Godot by porting this game to Godot 3.

## Status

pros:
- the game starts and you can steer the spaceship and shoot (yeah)

cons:
- collision detection don't work so you can't win or loose :-)
- the colors are different
- the lightning is different
- the sky is different
- particles might not work (explosion) but I'm not shure
- there's a lag when the monster comes into the scene

## Todo

My goal is that the finished port looks mostly the same as the original. 

Any help is appreciated. If you want to fix it, go ahead and please show me the result.

Search for `TODO` and `FIXME`.

**Current version rendering**

![Current version rendering image](doc/images/screenshot-dev.jpg?raw=true "Current version rendering")

**Original rendering**

![Original rendering image](doc/images/screenshot-original.jpg?raw=true "Original rendering")

## How to port to Godot 3

Load the game project into Godot 2.1.4 (or later) and use "Export for Godot 3".

This will not fix everything but convert most nodes. Materials has to be redone. Scripts needs to be adjusted.

Make a diff to the Godot 2 version to see the code changes. It's not that much - well not yet everything works...



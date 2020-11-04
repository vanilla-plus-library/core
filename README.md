# Vanilla+ Library

Vanilla+ Library is a library data pack for Minecraft 1.15+. Its functionalities are divided into multiple modules that can be installed independently from each other. It aims to provide efficient tools for data packs to add custom features to the vanilla gameplay with ease. With this library the user would be able to:
- Add custom recipes using a powerful custom crafting library;
- Use math functions such as pRNG and sqrt;
- Simulate custom block placement;
- Detect right-click using carrot on a stick/warped fungus on a stick or villagers;
- Replace a specific item in the inventory of a player;
- Custom durability for tools;

The current available modules are:
- [Core](https://github.com/vanilla-plus-library/core)
- [Custom Crafting](https://github.com/vanilla-plus-library/custom-crafting)
- [Block Placement](https://github.com/vanilla-plus-library/block-placement)
- Math(incomplete)
- Click Detection(incomplete)
- Inventory(coming soon)
- Raycasting(coming soon)

Additional:
- [Vanilla Recipe Pack](https://github.com/vanilla-plus-library/vanilla-recipepack)
- [Crafting Tweaks Addon](https://github.com/vanilla-plus-library/crafting-tweaks)


# Vanilla+ Library: Core

Manages and unifies all the modules from this library.

## Requirements
- Minecraft 1.15+.

## Documentation

### Load

Vanilla+ Library load process happens inside the function tag `#vplib:load/init` which is normally called by `#minecraft:load`. The loading is split into two function tags: `#vplib:load/library` happens internaly within the library modules and shouldn't be modified by any datapack. The function tag `#vplib:load/dependents` is called after all modules were loaded and it's where datapacks that depends on this library should load from.

```
> #minecraft:load -> Minecraft load root.
|
+--> #vplib:load/init -> Initiate loading process.
   |
   +--> #vplib:load/library -> Library internal loading process
   +--> #vplib:load/dependents -> Call dependents.
      |
      +--> dependent1:load -> 1st datapack that depends on this library.
      +--> dependent2:load -> 2nd datapack that depends on this library.
```

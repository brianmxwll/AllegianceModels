# Allegiance Models
Repository for the models used in the game Allegiance. These models were taken from the original artwork provided by Microsoft then organized and converted.

## Models Folder Structure
    .
    ├── ...
    ├── acs02                   # All files for model named 'acs02' (original name)
    │   ├── obj                 # Original .X models converted to .OBJ format
    │   ├── *.x                 # Original .X models
    │   └── *.bmp               # Texture and icon files
    └── ...

## OBJ Notes
- All models converted with Assimp: http://assimp.sourceforge.net/
- Option "Smooth normals" used since "Original" looked rough and not representative of game.
- Material (.mtl) files were also produced. At this point in time I doubt they do much, but it doesn't hurt to include them.

## Scripts
Assorted & informal scripts used to convert the files. They will absolutely not work on first run but after some tweaking should accomplish the task. Since it's a one off job (for now) they will stay basic.

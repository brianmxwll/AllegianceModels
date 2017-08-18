# This script will update the obj models to use a png texture instead of a bmp texture.
# This requires an image conversion (bmp -> png) and a modification to the
# *.obj.mtl file to point to the new png texture.

from os import listdir, makedirs, remove
from os.path import isfile, isdir, join, exists
from PIL import Image

MODELS_LOC = 'E:\\Git\\AllegianceModels\\Models'

def main():
    #Start by walking over each model
    allfolders = [f for f in listdir(MODELS_LOC) if isdir(join(MODELS_LOC, f))]

    #Sometimes we want to resume from somewhere:
    start_after = ''
    found_folder = start_after == '' #False if value
    
    for f in allfolders:
        if found_folder:
            print 'Processing folder:', f
            processFolder(f)
        elif start_after == f:
            found_folder = True

def processFolder(f):
    model_dir = join(MODELS_LOC, f)
    obj_dir = model_dir + '\\obj'
        
    # Look at each model, see if there is a texture. If so, move to the obj directory.
    allmodels = [m for m in listdir(obj_dir) if isfile(join(obj_dir, m)) and m.endswith('.obj')]

    for xmodel in allmodels:
        name = xmodel.replace('.obj','')
        #If one exists, copy the texture file
        thisBmp = join(obj_dir, name+'.bmp')
        thisMtl = join(obj_dir, name+'.obj.mtl')
        newPng = join(obj_dir, name+'.png')
        
        if exists(thisBmp) and exists (thisMtl) and not exists(newPng):
            print "Converting", thisBmp, "to", newPng
            convertToPng(thisBmp, newPng)
            replaceBmpMaterialsInObjMtl(thisMtl)
            remove(thisBmp) #No longer needed

def convertToPng(bmpFile, pngFile):
    img = Image.open(bmpFile)
    img.save(pngFile, 'png')

# Replaces all original materials with the new single material
def replaceBmpMaterialsInObjMtl(mtl_file):
    rf = open(mtl_file, 'r')
    lines = rf.readlines()
    rf.close()

    for x in range(len(lines)):
        if lines[x].startswith('map') and '.bmp' in lines[x]:
            lines[x] = lines[x].replace('.bmp','.png')
    
    wf = open(mtl_file, 'w')
    wf.writelines(lines)
    wf.close()

if __name__ == '__main__':
    main()

# This script will fix each *.obj.mtl material file, removing excess materials.
# It will also move the texture to the same directory and update the *.obj
# file to direct to the same *.obj.mtl file.

import subprocess
import time
from os import listdir, makedirs, remove
from os.path import isfile, isdir, join, exists
from shutil import copyfile

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

    #Check if we have the correct folder already created. If not, make it.
    if not exists(obj_dir):
        makedirs(obj_dir)
        
    # Look at each model, see if there is a texture. If so, move to the obj directory.
    allmodels = [m for m in listdir(model_dir) if isfile(join(model_dir, m)) and '.x' in m]

    for xmodel in allmodels:
        name = xmodel.replace('.x','')
        #If one exists, copy the texture file
        thisBmp = join(model_dir, name+'.bmp')
        newBmp = join(obj_dir, name+'.bmp')
        if exists(thisBmp) and not exists(newBmp):
            print "Copying", thisBmp, "to", newBmp
            copyfile(thisBmp, newBmp)

    processObj(obj_dir)

def processObj(obj_dir):
    allmodels = [m for m in listdir(obj_dir) if isfile(join(obj_dir, m)) and m.endswith('.obj')]
    
    for m in allmodels:
        name = m.replace('.obj','')
        obj = join(obj_dir, m)
        mtl = join(obj_dir, m+'.mtl')
        if isfile(mtl): #Just safety, ensure .mtl file exists
            #Do we have an exact match for texture?
            if isfile(join(obj_dir, name+'.bmp')):
                #We have a texture file that corresponds to THIS model.
                rewriteMtl(mtl, name+'.bmp')
                replaceMaterialsInObj(obj)
            else:
                #We do NOT have a texture file that corresponds to this model.
                print 'No bmp file found for', obj,'- deleting .mtl and refs'
                remove(mtl)
                stripObjOfMtlRefs(obj)
        else:
            print 'No mtl file found for', obj

# Removes two types of lines from .obj files:
# 1) Reference to .mtl file
# 2) References to materials in .mtl file
def stripObjOfMtlRefs(obj_file):
    rf = open(obj_file, 'r')
    lines = rf.readlines()
    rf.close()
    lines = [l for l in lines if not l.startswith('mtllib') and not l.startswith('usemtl')]
    wf = open(obj_file, 'w')
    wf.writelines(lines)
    wf.close()

# Creates a new .mtl file with one material, designed for this model.
def rewriteMtl(mtl_file, bmp_file):
    wf = open(mtl_file, 'w')

    wf.write('# File produced by Open Asset Import Library (http://www.assimp.sf.net)\n')
    wf.write('# (assimp v3.1.29665513)\n')
    wf.write('\n')
    wf.write('newmtl MainMaterial\n')
    wf.write('kd 1 1 1\n')
    wf.write('ks 1 1 1\n')
    wf.write('ke 0 0 0\n')
    wf.write('illum 1\n')
    wf.write('map_Ka ' + bmp_file + '\n')
    wf.write('map_Kd ' + bmp_file + '\n')
    wf.close()

# Replaces all original materials with the new single material
def replaceMaterialsInObj(obj_file):
    rf = open(obj_file, 'r')
    lines = rf.readlines()
    rf.close()

    for x in range(len(lines)):
        if lines[x].startswith('usemtl'):
            lines[x] = 'usemtl MainMaterial\n'
    
    wf = open(obj_file, 'w')
    wf.writelines(lines)
    wf.close()

if __name__ == '__main__':
    main()

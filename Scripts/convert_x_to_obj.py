# This script will automate the process of converting X models
# to OBJ models. WARNING: There is a .01% chance that this works
# on the first run on other machines. It will manually manipulate
# the mouse and keyboard to control Assimp.

import pyautogui
import subprocess
import time
from os import listdir, makedirs
from os.path import isfile, isdir, join, exists

ASSIMP_EXE_LOC = 'C:\\Users\\Brian\\Desktop\\assimp-3.1.1-win-binaries\\bin64\\assimp_viewer.exe'
MODELS_LOC = 'E:\\Git\\AllegianceModels\\Models'

def main():
    #Start by walking over each model
    allfolders = [f for f in listdir(MODELS_LOC) if isdir(join(MODELS_LOC, f))]

    #Sometimes we want to resume from somewhere:
    start_after = 'cube'
    found_folder = start_after == '' #False if value
    
    for f in allfolders:
        if found_folder:
            print 'Processing folder:', f
            processFolder(f)
        elif start_after == f:
            found_folder = True

def processFolder(f):
    model_dir = join(MODELS_LOC, f)
    allmodels = [m for m in listdir(model_dir) if isfile(join(model_dir, m)) and '.x' in m]

    for model in allmodels:
        
        print 'Processing model:', model
        processModel(model_dir, model)
        time.sleep(3)

def processModel(model_dir, m):
    obj_dir = model_dir + '\\obj'
    
    #Check if we have the correct folder already created. If not, make it.
    if not exists(obj_dir):
        makedirs(obj_dir)

    #Debug
    #print [model_dir, m, join(model_dir, m), obj_dir]

    #Open up Assimp, process the model.
    subprocess.Popen([ASSIMP_EXE_LOC, join(model_dir, m)])
    time.sleep(2) #Wait for execution

    #Select Tools -> Smooth normals
    pyautogui.moveTo(535,165)
    pyautogui.click() #Tools
    pyautogui.moveTo(560,305)
    pyautogui.click() #Smooth Normals

    #Select Export -> .obj
    pyautogui.moveTo(650,165)
    pyautogui.click() #Export
    pyautogui.moveTo(685,210)
    pyautogui.click() #.obj

    #Give the export window time to open
    time.sleep(.5)

    #Select where to export
    pyautogui.moveTo(1140,225)
    pyautogui.click()
    pyautogui.typewrite(obj_dir)
    pyautogui.press('enter')

    #Name should be auto populated, hit save
    pyautogui.moveTo(1250,680)
    pyautogui.click()

    #Exit
    pyautogui.moveTo(1440,140)
    pyautogui.click()
    
if __name__ == '__main__':
    main()

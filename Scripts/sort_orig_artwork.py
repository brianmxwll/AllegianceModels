# This script looks at a folder of the original artwork
# and sorts all .x models & associated files into a destination
# directory. Typically associated files will just be texture images.

from os import listdir, makedirs
from os.path import isfile, join, exists
from shutil import copyfile

SRC_DIR = 'E:\\OriginalArtwork\\'
DEST_DIR = 'E:\\XModels\\'

def main():
    allfiles = [f for f in listdir(SRC_DIR) if isfile(join(SRC_DIR, f))]
    
    #Get only the .x models for now, "_static" and alt versions of model will be considered related
    xmodels = [f for f in allfiles if '.x' in f and '_' not in f and '-' not in f]

    for filename in xmodels:
        #Get just the model name
        name = filename[:filename.find('.')] # 'acs01.x' -> 'acs01'
        modeldir = join(DEST_DIR, name)
        
        #All results will be sorted into a directory. Create directory.
        if not exists(modeldir):
            makedirs(modeldir)
            
        #Store the model itself
        copyfile(join(SRC_DIR, filename), join(modeldir, filename))

        #Search the original files for files with the same name but diff extension (some files have prefix, so 'in' covers)
        relatedfiles = [f for f in allfiles if name in f and f != filename]
        modelfolder = join(DEST_DIR, modeldir)
        for related in relatedfiles:
            copyfile(join(SRC_DIR, related), join(modeldir, related)) 

if __name__ == '__main__':
    main()

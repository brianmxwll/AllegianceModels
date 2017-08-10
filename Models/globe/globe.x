xof 0302txt 0032
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template FrameTransformMatrix {
 <F6F23F41-7686-11cf-8F52-0040333594A3>
 Matrix4x4 frameMatrix;
}

template Frame {
 <3D82AB46-62DA-11cf-AB39-0020AF71E433>
 [...]
}
template FloatKeys {
 <10DD46A9-775B-11cf-8F52-0040333594A3>
 DWORD nValues;
 array FLOAT values[nValues];
}

template TimedFloatKeys {
 <F406B180-7B3B-11cf-8F52-0040333594A3>
 DWORD time;
 FloatKeys tfkeys;
}

template AnimationKey {
 <10DD46A8-775B-11cf-8F52-0040333594A3>
 DWORD keyType;
 DWORD nKeys;
 array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
 <E2BF56C0-840F-11cf-8F52-0040333594A3>
 DWORD openclosed;
 DWORD positionquality;
}

template Animation {
 <3D82AB4F-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template AnimationSet {
 <3D82AB50-62DA-11cf-AB39-0020AF71E433>
 [Animation]
}

Header {
 1;
 0;
 1;
}

Frame frm-Reciever {
  FrameTransformMatrix {
1500.000000,0.000000,0.000000,0.000000,
0.000000,0.000113,-1500.000000,0.000000,
0.000000,1500.000000,0.000113,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh Reciever {
 88;
 -4.898316;0.751767;-0.000000;,
 -4.898316;0.751767;-0.000000;,
 -4.898316;0.751767;-0.000000;,
 -4.898316;-0.751767;-0.000000;,
 -4.898316;-0.751767;-0.000000;,
 -3.463633;0.751767;-3.463633;,
 -3.463633;0.751767;-3.463633;,
 -3.463633;0.751767;-3.463633;,
 -3.463633;-0.751767;-3.463633;,
 -3.463633;-0.751767;-3.463633;,
 0.000000;0.751767;-4.898316;,
 0.000000;0.751767;-4.898316;,
 0.000000;0.751767;-4.898316;,
 0.000000;-0.751767;-4.898316;,
 0.000000;-0.751767;-4.898316;,
 -0.000000;-0.751767;4.898316;,
 -0.000000;-0.751767;4.898316;,
 -3.463633;-0.751767;3.463633;,
 -3.463633;-0.751767;3.463633;,
 3.463633;0.751767;-3.463633;,
 3.463633;0.751767;-3.463633;,
 3.463633;0.751767;-3.463633;,
 3.463633;-0.751767;-3.463633;,
 3.463633;-0.751767;-3.463633;,
 4.898316;0.751767;-0.000000;,
 4.898316;0.751767;-0.000000;,
 4.898316;0.751767;-0.000000;,
 4.898316;-0.751767;-0.000000;,
 4.898316;-0.751767;-0.000000;,
 3.463633;0.751767;3.463632;,
 3.463633;0.751767;3.463632;,
 3.463633;0.751767;3.463632;,
 3.463633;-0.751767;3.463632;,
 3.463633;-0.751767;3.463632;,
 -0.000000;0.751767;4.898315;,
 -0.000000;0.751767;4.898315;,
 -3.463633;0.751767;3.463633;,
 -3.463633;0.751767;3.463633;,
 -3.463633;0.751767;3.463633;,
 -0.000000;0.751767;4.898315;,
 3.463633;-0.751767;3.463632;,
 3.463633;0.751767;3.463632;,
 4.898316;-0.751767;-0.000000;,
 4.898316;0.751767;-0.000000;,
 3.463633;-0.751767;-3.463633;,
 3.463633;0.751767;-3.463633;,
 0.000000;-4.856168;-0.000000;,
 0.000000;4.856168;-0.000000;,
 -0.000000;4.330127;2.500000;,
 -0.000000;2.500000;4.330126;,
 -3.463633;-0.751767;3.463633;,
 -0.000000;-2.500000;4.330127;,
 -0.000000;-4.330127;2.500000;,
 -1.767767;4.330127;1.767767;,
 -3.061862;2.500000;3.061862;,
 -0.000000;-0.751767;4.898316;,
 -3.061862;-2.500000;3.061862;,
 -1.767767;-4.330127;1.767767;,
 -2.500000;4.330127;-0.000000;,
 -4.330127;2.500000;-0.000000;,
 0.000000;-0.751767;-4.898316;,
 -4.330127;-2.500000;-0.000000;,
 -2.500000;-4.330127;-0.000000;,
 -1.767767;4.330127;-1.767767;,
 -3.061862;2.500000;-3.061862;,
 0.000000;0.751767;-4.898316;,
 -3.061862;-2.500000;-3.061862;,
 -1.767767;-4.330127;-1.767767;,
 0.000000;4.330127;-2.500000;,
 0.000000;2.500000;-4.330127;,
 -3.463633;-0.751767;-3.463633;,
 0.000000;-2.500000;-4.330127;,
 0.000000;-4.330127;-2.500000;,
 1.767767;4.330127;-1.767767;,
 3.061862;2.500000;-3.061862;,
 -3.463633;0.751767;-3.463633;,
 3.061862;-2.500000;-3.061862;,
 1.767767;-4.330127;-1.767767;,
 2.500000;4.330127;-0.000000;,
 4.330127;2.500000;-0.000000;,
 -4.898316;-0.751767;-0.000000;,
 4.330127;-2.500000;-0.000000;,
 2.500000;-4.330127;-0.000000;,
 1.767767;4.330127;1.767767;,
 3.061862;2.500000;3.061862;,
 -4.898316;0.751767;-0.000000;,
 3.061862;-2.500000;3.061862;,
 1.767767;-4.330127;1.767767;;

 56;
 4;37,54,49,35;,
 4;86,81,82,87;,
 4;28,33,31,26;,
 4;30,84,79,25;,
 4;83,78,79,84;,
 4;48,83,84,49;,
 4;81,76,77,82;,
 4;23,27,24,21;,
 4;43,79,74,20;,
 4;78,73,74,79;,
 4;56,51,52,57;,
 4;51,86,87,52;,
 4;76,71,72,77;,
 4;14,22,19,12;,
 4;45,74,69,11;,
 4;73,68,69,74;,
 4;34,49,84,29;,
 4;58,53,54,59;,
 4;71,66,67,72;,
 4;9,13,10,7;,
 4;65,69,64,6;,
 4;68,63,64,69;,
 4;53,48,49,54;,
 4;2,59,54,36;,
 4;66,61,62,67;,
 4;4,8,5,1;,
 4;75,64,59,0;,
 4;63,58,59,64;,
 4;61,56,57,62;,
 3;47,78,83;,
 3;47,58,63;,
 3;73,78,47;,
 3;47,63,68;,
 3;47,68,73;,
 3;53,58,47;,
 3;47,83,48;,
 3;47,48,53;,
 3;46,52,87;,
 3;46,72,67;,
 3;57,52,46;,
 3;46,67,62;,
 3;77,72,46;,
 3;46,82,77;,
 3;87,82,46;,
 3;46,62,57;,
 4;39,41,32,16;,
 4;38,39,15,18;,
 4;85,38,17,3;,
 4;60,71,76,44;,
 4;44,76,81,42;,
 4;42,81,86,40;,
 4;40,86,51,55;,
 4;55,51,56,50;,
 4;50,56,61,80;,
 4;80,61,66,70;,
 4;70,66,71,60;;

 MeshMaterialList {
  3;
  56;
  0,
  1,
  2,
  0,
  0,
  0,
  1,
  2,
  0,
  0,
  1,
  1,
  1,
  2,
  0,
  0,
  0,
  0,
  1,
  2,
  0,
  0,
  0,
  0,
  1,
  2,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  2,
  2,
  2,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 0.890000;0.881200;0.670000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "environtest.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 0.846000;0.670000;0.890000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "environtest.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "environtest.ppm";
 }
 }
}
 MeshNormals {
  88;
  0.987595;-0.157025;-0.000000;,
  0.987595;-0.157025;-0.000000;,
  0.987595;-0.157025;-0.000000;,
  0.987595;0.157025;-0.000000;,
  0.987595;0.157025;-0.000000;,
  0.698335;-0.157025;0.698335;,
  0.698335;-0.157025;0.698335;,
  0.698335;-0.157025;0.698335;,
  0.698335;0.157025;0.698335;,
  0.698335;0.157025;0.698335;,
  -0.000000;-0.157025;0.987595;,
  -0.000000;-0.157025;0.987595;,
  -0.000000;-0.157025;0.987595;,
  0.000000;0.157025;0.987595;,
  0.000000;0.157025;0.987595;,
  -0.000000;0.157025;-0.987595;,
  -0.000000;0.157025;-0.987595;,
  0.698335;0.157025;-0.698335;,
  0.698335;0.157025;-0.698335;,
  -0.698335;-0.157025;0.698335;,
  -0.698335;-0.157025;0.698335;,
  -0.698335;-0.157025;0.698335;,
  -0.698335;0.157025;0.698335;,
  -0.698335;0.157025;0.698335;,
  -0.987595;-0.157025;-0.000000;,
  -0.987595;-0.157025;-0.000000;,
  -0.987595;-0.157025;-0.000000;,
  -0.987595;0.157025;-0.000000;,
  -0.987595;0.157025;-0.000000;,
  -0.698335;-0.157025;-0.698335;,
  -0.698335;-0.157025;-0.698335;,
  -0.698335;-0.157025;-0.698335;,
  -0.698335;0.157025;-0.698335;,
  -0.698335;0.157025;-0.698335;,
  -0.000000;-0.157025;-0.987595;,
  -0.000000;-0.157025;-0.987595;,
  0.698335;-0.157025;-0.698335;,
  0.698335;-0.157025;-0.698335;,
  0.698335;-0.157025;-0.698335;,
  -0.000000;-0.157025;-0.987595;,
  -0.698335;0.157025;-0.698335;,
  -0.698335;-0.157025;-0.698335;,
  -0.987595;0.157025;-0.000000;,
  -0.987595;-0.157025;-0.000000;,
  -0.698335;0.157025;0.698335;,
  -0.698335;-0.157025;0.698335;,
  0.000000;1.000000;-0.000000;,
  -0.000000;-1.000000;-0.000000;,
  0.000000;-0.881948;-0.471346;,
  -0.000000;-0.525698;-0.850671;,
  0.698335;0.157025;-0.698335;,
  -0.000000;0.525698;-0.850671;,
  -0.000000;0.881948;-0.471346;,
  0.333292;-0.881948;-0.333292;,
  0.601515;-0.525698;-0.601515;,
  -0.000000;0.157025;-0.987595;,
  0.601515;0.525698;-0.601515;,
  0.333292;0.881948;-0.333292;,
  0.471346;-0.881948;-0.000000;,
  0.850671;-0.525698;-0.000000;,
  0.000000;0.157025;0.987595;,
  0.850671;0.525698;0.000000;,
  0.471346;0.881948;0.000000;,
  0.333292;-0.881948;0.333292;,
  0.601515;-0.525698;0.601515;,
  -0.000000;-0.157025;0.987595;,
  0.601515;0.525698;0.601515;,
  0.333292;0.881948;0.333292;,
  -0.000000;-0.881948;0.471346;,
  0.000000;-0.525698;0.850671;,
  0.698335;0.157025;0.698335;,
  0.000000;0.525698;0.850671;,
  0.000000;0.881948;0.471346;,
  -0.333292;-0.881948;0.333292;,
  -0.601515;-0.525698;0.601515;,
  0.698335;-0.157025;0.698335;,
  -0.601515;0.525698;0.601515;,
  -0.333292;0.881948;0.333292;,
  -0.471346;-0.881948;-0.000000;,
  -0.850671;-0.525698;-0.000000;,
  0.987595;0.157025;-0.000000;,
  -0.850671;0.525698;-0.000000;,
  -0.471346;0.881948;-0.000000;,
  -0.333292;-0.881948;-0.333292;,
  -0.601515;-0.525698;-0.601515;,
  0.987595;-0.157025;-0.000000;,
  -0.601515;0.525698;-0.601515;,
  -0.333292;0.881948;-0.333292;;

  56;
  4;37,54,49,35;,
  4;86,81,82,87;,
  4;28,33,31,26;,
  4;30,84,79,25;,
  4;83,78,79,84;,
  4;48,83,84,49;,
  4;81,76,77,82;,
  4;23,27,24,21;,
  4;43,79,74,20;,
  4;78,73,74,79;,
  4;56,51,52,57;,
  4;51,86,87,52;,
  4;76,71,72,77;,
  4;14,22,19,12;,
  4;45,74,69,11;,
  4;73,68,69,74;,
  4;34,49,84,29;,
  4;58,53,54,59;,
  4;71,66,67,72;,
  4;9,13,10,7;,
  4;65,69,64,6;,
  4;68,63,64,69;,
  4;53,48,49,54;,
  4;2,59,54,36;,
  4;66,61,62,67;,
  4;4,8,5,1;,
  4;75,64,59,0;,
  4;63,58,59,64;,
  4;61,56,57,62;,
  3;47,78,83;,
  3;47,58,63;,
  3;73,78,47;,
  3;47,63,68;,
  3;47,68,73;,
  3;53,58,47;,
  3;47,83,48;,
  3;47,48,53;,
  3;46,52,87;,
  3;46,72,67;,
  3;57,52,46;,
  3;46,67,62;,
  3;77,72,46;,
  3;46,82,77;,
  3;87,82,46;,
  3;46,62,57;,
  4;39,41,32,16;,
  4;38,39,15,18;,
  4;85,38,17,3;,
  4;60,71,76,44;,
  4;44,76,81,42;,
  4;42,81,86,40;,
  4;40,86,51,55;,
  4;55,51,56,50;,
  4;50,56,61,80;,
  4;80,61,66,70;,
  4;70,66,71,60;;
 }
 MeshTextureCoords { 
 88;
 0.001953;0.498047;,
 0.750833;0.000833;,
 0.001953;0.498047;,
 0.999167;0.999167;,
 0.999167;0.000833;,
 0.750833;0.249167;,
 0.001953;0.998047;,
 0.750833;0.249167;,
 0.999167;0.249167;,
 0.999167;0.249167;,
 0.750833;0.499167;,
 0.376953;0.998047;,
 0.750833;0.499167;,
 0.999167;0.499167;,
 0.999167;0.499167;,
 0.999167;0.499167;,
 0.999167;0.499167;,
 0.999167;0.749167;,
 0.999167;0.749167;,
 0.750833;0.749167;,
 0.751953;0.998047;,
 0.750833;0.749167;,
 0.999167;0.749167;,
 0.999167;0.749167;,
 0.750833;0.999167;,
 0.751953;0.498047;,
 0.750833;0.000833;,
 0.999167;0.999167;,
 0.999167;0.000833;,
 0.751953;0.001953;,
 0.751953;0.001953;,
 0.750833;0.249167;,
 0.999167;0.249167;,
 0.999167;0.249167;,
 0.376953;0.001953;,
 0.376953;0.001953;,
 0.001953;0.001953;,
 0.001953;0.001953;,
 0.750833;0.749167;,
 0.750833;0.499167;,
 0.751953;0.998047;,
 0.750833;0.249167;,
 0.751953;0.498047;,
 0.751953;0.498047;,
 0.751953;0.001953;,
 0.751953;0.998047;,
 0.376953;0.498047;,
 0.376953;0.498047;,
 0.376953;0.185547;,
 0.376953;0.060547;,
 0.001953;0.998047;,
 0.376953;0.935547;,
 0.376953;0.810547;,
 0.189453;0.185547;,
 0.064453;0.060547;,
 0.376953;0.998047;,
 0.064453;0.935547;,
 0.189453;0.810547;,
 0.189453;0.498047;,
 0.064453;0.498047;,
 0.376953;0.001953;,
 0.064453;0.498047;,
 0.189453;0.498047;,
 0.189453;0.810547;,
 0.064453;0.935547;,
 0.376953;0.998047;,
 0.064453;0.060547;,
 0.189453;0.185547;,
 0.376953;0.810547;,
 0.376953;0.935547;,
 0.001953;0.001953;,
 0.376953;0.060547;,
 0.376953;0.185547;,
 0.564453;0.810547;,
 0.689453;0.935547;,
 0.001953;0.998047;,
 0.689453;0.060547;,
 0.564453;0.185547;,
 0.564453;0.498047;,
 0.689453;0.498047;,
 0.001953;0.498047;,
 0.689453;0.498047;,
 0.564453;0.498047;,
 0.564453;0.185547;,
 0.689453;0.060547;,
 0.750833;0.999167;,
 0.689453;0.935547;,
 0.564453;0.810547;;
 }
}
}
AnimationSet {
 Animation anim-Reciever {
  {frm-Reciever}
  AnimationKey {
  0;
  2;
  0; 4; 0.707107, -0.707107, 0.000000, 0.000000;;,
  30; 4; 0.707107, -0.707107, 0.000000, 0.000000;;;
  }
  AnimationKey {
  1;
  2;
  0; 3; 1500.000000, 1500.000000, 1500.000000;;,
  30; 3; 1500.000000, 1500.000000, 1500.000000;;;
  }
 }
}

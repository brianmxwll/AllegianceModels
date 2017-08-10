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

Frame frm-acs40 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh acs40 {
 82;
 0.270852;-0.372796;0.000000;,
 0.270852;-0.372796;0.000000;,
 0.438248;-0.142395;0.000000;,
 0.438248;0.142395;0.000000;,
 0.270852;0.372796;0.000000;,
 0.270852;0.372796;0.000000;,
 0.191521;-0.372796;0.191521;,
 0.191521;-0.372796;0.191521;,
 0.309888;-0.142395;0.309888;,
 0.309888;0.142395;0.309888;,
 0.191521;0.372796;0.191521;,
 0.191521;0.372796;0.191521;,
 0.000000;-0.372796;0.270852;,
 0.000000;-0.372796;0.270852;,
 0.000000;-0.142395;0.438248;,
 0.000000;0.142395;0.438248;,
 0.000000;0.372796;0.270852;,
 0.000000;0.372796;0.270852;,
 -0.191521;-0.372796;0.191521;,
 -0.191521;-0.372796;0.191521;,
 -0.309888;-0.142395;0.309888;,
 -0.309888;0.142395;0.309888;,
 -0.191521;0.372796;0.191521;,
 -0.191521;0.372796;0.191521;,
 -0.270852;-0.372796;0.000000;,
 -0.270852;-0.372796;0.000000;,
 -0.438248;-0.142395;0.000000;,
 -0.438248;0.142395;0.000000;,
 -0.270852;0.372796;0.000000;,
 -0.270852;0.372796;0.000000;,
 -0.191521;-0.372796;-0.191521;,
 -0.191521;-0.372796;-0.191521;,
 -0.309888;-0.142395;-0.309888;,
 -0.309888;0.142395;-0.309888;,
 -0.191521;0.372796;-0.191521;,
 -0.191521;0.372796;-0.191521;,
 0.000000;-0.372796;-0.270852;,
 0.000000;-0.372796;-0.270852;,
 0.000000;-0.142395;-0.438248;,
 0.000000;0.142395;-0.438248;,
 0.000000;0.372796;-0.270852;,
 0.000000;0.372796;-0.270852;,
 0.191521;-0.372796;-0.191521;,
 0.191521;-0.372796;-0.191521;,
 0.309888;-0.142395;-0.309888;,
 0.309888;0.142395;-0.309888;,
 0.191521;0.372796;-0.191521;,
 0.191521;0.372796;-0.191521;,
 0.191521;0.372796;-0.191521;,
 0.309888;0.142395;-0.309888;,
 0.309888;-0.142395;-0.309888;,
 0.191521;-0.372796;-0.191521;,
 0.000000;0.372796;-0.270852;,
 0.000000;0.142395;-0.438248;,
 0.000000;-0.142395;-0.438248;,
 0.000000;-0.372796;-0.270852;,
 -0.191521;0.372796;-0.191521;,
 -0.309888;0.142395;-0.309888;,
 -0.309888;-0.142395;-0.309888;,
 -0.191521;-0.372796;-0.191521;,
 -0.270852;0.372796;0.000000;,
 -0.438248;0.142395;0.000000;,
 -0.438248;-0.142395;0.000000;,
 -0.270852;-0.372796;0.000000;,
 -0.191521;0.372796;0.191521;,
 -0.309888;0.142395;0.309888;,
 -0.309888;-0.142395;0.309888;,
 -0.191521;-0.372796;0.191521;,
 0.000000;0.372796;0.270852;,
 0.000000;0.142395;0.438248;,
 0.000000;-0.142395;0.438248;,
 0.000000;-0.372796;0.270852;,
 0.191521;0.372796;0.191521;,
 0.309888;0.142395;0.309888;,
 0.309888;-0.142395;0.309888;,
 0.191521;-0.372796;0.191521;,
 0.270852;0.372796;0.000000;,
 0.438248;0.142395;0.000000;,
 0.438248;-0.142395;0.000000;,
 0.270852;-0.372796;0.000000;,
 0.000000;0.460801;0.000000;,
 0.000000;-0.460801;0.000000;;

 40;
 3;81,1,7;,
 3;81,7,13;,
 3;81,13,19;,
 3;81,19,25;,
 3;81,25,31;,
 3;81,31,37;,
 3;81,37,43;,
 3;81,43,1;,
 4;3,9,8,2;,
 4;5,11,9,3;,
 4;2,8,6,0;,
 3;80,10,4;,
 3;80,34,28;,
 3;80,22,16;,
 3;80,40,34;,
 3;80,16,10;,
 3;80,46,40;,
 3;80,28,22;,
 3;80,4,46;,
 4;73,15,14,74;,
 4;72,17,15,73;,
 4;74,14,12,75;,
 4;68,23,21,69;,
 4;70,20,18,71;,
 4;69,21,20,70;,
 4;66,26,24,67;,
 4;65,27,26,66;,
 4;64,29,27,65;,
 4;61,33,32,62;,
 4;60,35,33,61;,
 4;62,32,30,63;,
 4;56,41,39,57;,
 4;58,38,36,59;,
 4;57,39,38,58;,
 4;54,44,42,55;,
 4;53,45,44,54;,
 4;52,47,45,53;,
 4;49,77,78,50;,
 4;48,76,77,49;,
 4;50,78,79,51;;

 MeshMaterialList {
  1;
  40;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.500000;0.500000;0.500000;;
 TextureFilename {
  "acs40.bmp";
 }
 }
}
 MeshNormals {
  82;
  0.581845;-0.813300;0.000000;,
  0.581845;-0.813300;0.000000;,
  0.949745;-0.313025;0.000000;,
  0.949745;0.313025;0.000000;,
  0.581845;0.813300;0.000000;,
  0.581845;0.813300;0.000000;,
  0.411426;-0.813300;0.411426;,
  0.411426;-0.813300;0.411426;,
  0.671571;-0.313025;0.671571;,
  0.671571;0.313025;0.671571;,
  0.411426;0.813300;0.411426;,
  0.411426;0.813300;0.411426;,
  0.000000;-0.813300;0.581845;,
  0.000000;-0.813300;0.581845;,
  0.000000;-0.313025;0.949745;,
  0.000000;0.313025;0.949745;,
  0.000000;0.813300;0.581845;,
  0.000000;0.813300;0.581845;,
  -0.411426;-0.813300;0.411426;,
  -0.411426;-0.813300;0.411426;,
  -0.671571;-0.313025;0.671571;,
  -0.671571;0.313025;0.671571;,
  -0.411426;0.813300;0.411426;,
  -0.411426;0.813300;0.411426;,
  -0.581845;-0.813300;0.000000;,
  -0.581845;-0.813300;0.000000;,
  -0.949745;-0.313025;0.000000;,
  -0.949745;0.313025;0.000000;,
  -0.581845;0.813300;0.000000;,
  -0.581845;0.813300;0.000000;,
  -0.411426;-0.813300;-0.411426;,
  -0.411426;-0.813300;-0.411426;,
  -0.671571;-0.313025;-0.671571;,
  -0.671571;0.313025;-0.671571;,
  -0.411426;0.813300;-0.411426;,
  -0.411426;0.813300;-0.411426;,
  0.000000;-0.813300;-0.581845;,
  0.000000;-0.813300;-0.581845;,
  0.000000;-0.313025;-0.949745;,
  0.000000;0.313025;-0.949745;,
  0.000000;0.813300;-0.581845;,
  0.000000;0.813300;-0.581845;,
  0.411426;-0.813300;-0.411426;,
  0.411426;-0.813300;-0.411426;,
  0.671571;-0.313025;-0.671571;,
  0.671571;0.313025;-0.671571;,
  0.411426;0.813300;-0.411426;,
  0.411426;0.813300;-0.411426;,
  0.411426;0.813300;-0.411426;,
  0.671571;0.313025;-0.671571;,
  0.671571;-0.313025;-0.671571;,
  0.411426;-0.813300;-0.411426;,
  0.000000;0.813300;-0.581845;,
  0.000000;0.313025;-0.949745;,
  0.000000;-0.313025;-0.949745;,
  0.000000;-0.813300;-0.581845;,
  -0.411426;0.813300;-0.411426;,
  -0.671571;0.313025;-0.671571;,
  -0.671571;-0.313025;-0.671571;,
  -0.411426;-0.813300;-0.411426;,
  -0.581845;0.813300;0.000000;,
  -0.949745;0.313025;0.000000;,
  -0.949745;-0.313025;0.000000;,
  -0.581845;-0.813300;0.000000;,
  -0.411426;0.813300;0.411426;,
  -0.671571;0.313025;0.671571;,
  -0.671571;-0.313025;0.671571;,
  -0.411426;-0.813300;0.411426;,
  0.000000;0.813300;0.581845;,
  0.000000;0.313025;0.949745;,
  0.000000;-0.313025;0.949745;,
  0.000000;-0.813300;0.581845;,
  0.411426;0.813300;0.411426;,
  0.671571;0.313025;0.671571;,
  0.671571;-0.313025;0.671571;,
  0.411426;-0.813300;0.411426;,
  0.581845;0.813300;0.000000;,
  0.949745;0.313025;0.000000;,
  0.949745;-0.313025;0.000000;,
  0.581845;-0.813300;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;0.000000;;

  40;
  3;81,1,7;,
  3;81,7,13;,
  3;81,13,19;,
  3;81,19,25;,
  3;81,25,31;,
  3;81,31,37;,
  3;81,37,43;,
  3;81,43,1;,
  4;3,9,8,2;,
  4;5,11,9,3;,
  4;2,8,6,0;,
  3;80,10,4;,
  3;80,34,28;,
  3;80,22,16;,
  3;80,40,34;,
  3;80,16,10;,
  3;80,46,40;,
  3;80,28,22;,
  3;80,4,46;,
  4;73,15,14,74;,
  4;72,17,15,73;,
  4;74,14,12,75;,
  4;68,23,21,69;,
  4;70,20,18,71;,
  4;69,21,20,70;,
  4;66,26,24,67;,
  4;65,27,26,66;,
  4;64,29,27,65;,
  4;61,33,32,62;,
  4;60,35,33,61;,
  4;62,32,30,63;,
  4;56,41,39,57;,
  4;58,38,36,59;,
  4;57,39,38,58;,
  4;54,44,42,55;,
  4;53,45,44,54;,
  4;52,47,45,53;,
  4;49,77,78,50;,
  4;48,76,77,49;,
  4;50,78,79,51;;
 }
 MeshTextureCoords {
 82;
 0.710938;0.835938;,
 0.500000;0.398438;,
 0.656250;0.632812;,
 0.656250;0.382812;,
 0.500000;0.617188;,
 0.710938;0.179688;,
 0.890625;0.835938;,
 0.367188;0.351562;,
 0.953125;0.632812;,
 0.953125;0.382812;,
 0.367188;0.664062;,
 0.890625;0.179688;,
 0.281250;0.835938;,
 0.312500;0.218750;,
 0.335938;0.632812;,
 0.335938;0.375000;,
 0.312500;0.796875;,
 0.281250;0.179688;,
 0.890625;0.835938;,
 0.367188;0.093750;,
 0.953125;0.632812;,
 0.953125;0.382812;,
 0.367188;0.921875;,
 0.890625;0.179688;,
 0.281250;0.835938;,
 0.500000;0.039062;,
 0.335938;0.632812;,
 0.335938;0.382812;,
 0.500000;0.976562;,
 0.281250;0.179688;,
 0.890625;0.835938;,
 0.625000;0.093750;,
 0.953125;0.632812;,
 0.953125;0.382812;,
 0.625000;0.921875;,
 0.890625;0.179688;,
 0.281250;0.835938;,
 0.679688;0.218750;,
 0.335938;0.632812;,
 0.335938;0.382812;,
 0.679688;0.796875;,
 0.281250;0.179688;,
 0.890625;0.835938;,
 0.625000;0.351562;,
 0.953125;0.632812;,
 0.953125;0.382812;,
 0.625000;0.664062;,
 0.890625;0.179688;,
 0.101562;0.179688;,
 0.046875;0.375000;,
 0.046875;0.632812;,
 0.101562;0.835938;,
 0.710938;0.179688;,
 0.656250;0.382812;,
 0.656250;0.632812;,
 0.710938;0.835938;,
 0.101562;0.179688;,
 0.046875;0.382812;,
 0.046875;0.632812;,
 0.101562;0.835938;,
 0.710938;0.179688;,
 0.656250;0.382812;,
 0.656250;0.632812;,
 0.710938;0.835938;,
 0.101562;0.179688;,
 0.046875;0.382812;,
 0.046875;0.632812;,
 0.101562;0.835938;,
 0.710938;0.179688;,
 0.656250;0.382812;,
 0.656250;0.632812;,
 0.710938;0.835938;,
 0.101562;0.179688;,
 0.046875;0.375000;,
 0.046875;0.632812;,
 0.101562;0.835938;,
 0.281250;0.179688;,
 0.335938;0.375000;,
 0.335938;0.632812;,
 0.281250;0.835938;,
 0.500000;0.796875;,
 0.500000;0.218750;;
 }
}
}

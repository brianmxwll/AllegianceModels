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

Frame frm-Mis05 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Frame frm-body {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh body {
 37;
 0.171860;-0.001551;-5.500528;,
 0.171860;-0.001551;-5.500528;,
 0.242126;-0.000001;-4.170271;,
 0.242126;-0.000001;-4.170271;,
 0.242126;-0.000001;5.726039;,
 0.000000;0.000000;-5.619207;,
 0.121062;0.209686;5.726039;,
 0.121062;0.209686;-4.170271;,
 0.084580;0.146497;-5.500528;,
 -0.121064;0.209687;5.726039;,
 -0.121064;0.209687;-4.170271;,
 -0.087273;0.148060;-5.500528;,
 -0.242126;0.000001;5.726039;,
 -0.242126;0.000001;-4.170271;,
 -0.171860;0.001551;-5.500528;,
 -0.121062;-0.209686;5.726039;,
 -0.121062;-0.209686;-4.170271;,
 -0.084580;-0.146497;-5.500528;,
 0.121064;-0.209687;5.726039;,
 0.121064;-0.209687;-4.170271;,
 0.087273;-0.148060;-5.500528;,
 0.242126;-0.000001;5.726039;,
 0.242126;-0.000001;-4.170271;,
 0.171860;-0.001551;-5.500528;,
 0.242126;-0.000001;5.726039;,
 0.087273;-0.148060;-5.500528;,
 0.121064;-0.209687;-4.170271;,
 0.121064;-0.209687;5.726039;,
 0.121064;-0.209687;5.726039;,
 -0.121062;-0.209686;5.726039;,
 -0.242126;0.000001;5.726039;,
 -0.087273;0.148060;-5.500528;,
 -0.121064;0.209687;-4.170271;,
 -0.121064;0.209687;5.726039;,
 -0.121064;0.209687;5.726039;,
 0.121062;0.209686;5.726039;,
 0.000000;0.000000;-5.619207;;

 19;
 6;29,27,24,35,33,30;,
 4;7,32,34,6;,
 4;10,13,12,9;,
 4;11,14,13,10;,
 3;5,14,11;,
 4;13,16,15,12;,
 4;14,17,16,13;,
 3;5,17,14;,
 4;8,31,32,7;,
 4;16,26,28,15;,
 4;17,25,26,16;,
 3;5,25,17;,
 4;19,3,4,18;,
 4;20,1,2,19;,
 3;36,0,20;,
 3;36,31,8;,
 4;22,7,6,21;,
 4;23,8,7,22;,
 3;36,8,23;;

 MeshMaterialList {
  2;
  19;
  0,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
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
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "mis11.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "mis11.ppm";
 }
 }
}
 MeshNormals {
  37;
  0.916370;0.003333;-0.400318;,
  0.916370;0.003333;-0.400318;,
  0.999650;0.000826;-0.026453;,
  0.999650;0.000826;-0.026453;,
  0.000049;0.000013;1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000023;0.000040;1.000000;,
  0.499819;0.865712;-0.026909;,
  0.458638;0.794384;-0.398252;,
  -0.000027;0.000036;1.000000;,
  -0.499111;0.866134;-0.026453;,
  -0.455299;0.795266;-0.400318;,
  -0.000049;-0.000013;1.000000;,
  -0.999650;-0.000826;-0.026453;,
  -0.916370;-0.003333;-0.400318;,
  -0.000018;-0.000051;1.000000;,
  -0.499819;-0.865712;-0.026909;,
  -0.458638;-0.794384;-0.398252;,
  0.000027;-0.000036;1.000000;,
  0.499111;-0.866134;-0.026453;,
  0.455299;-0.795266;-0.400318;,
  0.000049;0.000013;1.000000;,
  0.999650;0.000826;-0.026453;,
  0.916370;0.003333;-0.400318;,
  0.000049;0.000013;1.000000;,
  0.455299;-0.795266;-0.400318;,
  0.499111;-0.866134;-0.026453;,
  0.000027;-0.000036;1.000000;,
  0.000027;-0.000036;1.000000;,
  -0.000018;-0.000051;1.000000;,
  -0.000049;-0.000013;1.000000;,
  -0.455299;0.795266;-0.400318;,
  -0.499111;0.866134;-0.026453;,
  -0.000027;0.000036;1.000000;,
  -0.000027;0.000036;1.000000;,
  0.000023;0.000040;1.000000;,
  0.000000;0.000000;-1.000000;;

  19;
  6;29,27,24,35,33,30;,
  4;7,32,34,6;,
  4;10,13,12,9;,
  4;11,14,13,10;,
  3;5,14,11;,
  4;13,16,15,12;,
  4;14,17,16,13;,
  3;5,17,14;,
  4;8,31,32,7;,
  4;16,26,28,15;,
  4;17,25,26,16;,
  3;5,25,17;,
  4;19,3,4,18;,
  4;20,1,2,19;,
  3;36,0,20;,
  3;36,31,8;,
  4;22,7,6,21;,
  4;23,8,7,22;,
  3;36,8,23;;
 }
 MeshTextureCoords { 
 37;
 0.550781;0.988281;,
 0.550781;0.988281;,
 0.550781;0.871094;,
 0.550781;0.871094;,
 0.550781;0.011719;,
 0.690538;0.823351;,
 0.902344;0.011719;,
 0.902344;0.871094;,
 0.902344;0.988281;,
 0.832031;0.011719;,
 0.832031;0.871094;,
 0.832031;0.988281;,
 0.753906;0.011719;,
 0.761719;0.871094;,
 0.761719;0.988281;,
 0.683594;0.011719;,
 0.683594;0.871094;,
 0.683594;0.988281;,
 0.613281;0.011719;,
 0.613281;0.871094;,
 0.613281;0.988281;,
 0.972656;0.011719;,
 0.972656;0.871094;,
 0.972656;0.988281;,
 0.346008;0.219788;,
 0.613281;0.988281;,
 0.613281;0.871094;,
 0.138367;0.219788;,
 0.613281;0.011719;,
 0.034546;0.132813;,
 0.138367;0.045837;,
 0.832031;0.988281;,
 0.832031;0.871094;,
 0.346008;0.045837;,
 0.832031;0.011719;,
 0.449829;0.132813;,
 0.690538;0.823351;;
 }
}
}
Frame frm-front_fins {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,-2.267082,1.000000;;
 }
Frame frm-frontfin7 {
  FrameTransformMatrix {
-0.000000,-1.000000,-0.000000,0.000000,
-1.000000,0.000000,0.000000,0.000000,
0.000000,0.000000,-1.000000,0.000000,
0.000000,0.000000,-0.029513,1.000000;;
 }
Mesh frontfin7 {
 11;
 0.157776;-0.023184;-0.381319;,
 0.663691;-0.000000;-0.484442;,
 0.410733;-0.000000;-0.016552;,
 0.410733;-0.000000;-0.016552;,
 0.410733;-0.000000;-0.016552;,
 0.410733;-0.000000;-0.016552;,
 0.663691;-0.000000;-0.484442;,
 0.157776;-0.000000;0.451338;,
 0.157776;-0.023184;-0.381319;,
 0.157776;0.023184;-0.381319;,
 0.157776;0.023184;-0.381319;;

 5;
 3;10,7,4;,
 3;0,9,1;,
 3;8,6,3;,
 3;2,7,8;,
 3;5,6,10;;

 MeshMaterialList {
  1;
  5;
  0,
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "mis11.ppm";
 }
 }
}
 MeshNormals {
  11;
  -0.044000;-0.906603;-0.419685;,
  -0.104269;-0.000000;-0.994549;,
  0.879672;-0.000001;0.475581;,
  0.879672;-0.000001;0.475581;,
  0.879672;-0.000001;0.475581;,
  0.879672;-0.000001;0.475581;,
  -0.104269;-0.000000;-0.994549;,
  0.879672;-0.000001;0.475581;,
  -0.044000;-0.906603;-0.419685;,
  -0.199728;0.000000;-0.979851;,
  0.051414;0.998291;0.027796;;

  5;
  3;10,7,4;,
  3;0,9,1;,
  3;8,6,3;,
  3;2,7,8;,
  3;5,6,10;;
 }
 MeshTextureCoords { 
 11;
 1.000000;0.889800;,
 0.500000;1.000000;,
 0.453125;0.254987;,
 0.453125;0.254987;,
 0.320833;0.404125;,
 0.320833;0.404125;,
 0.050521;0.255167;,
 0.454427;0.473698;,
 0.320833;0.404125;,
 -0.000000;0.889800;,
 0.453125;0.254987;;
 }
}
}
Frame frm-frontfin4 {
  FrameTransformMatrix {
0.000000,1.000000,0.000000,0.000000,
-1.000000,0.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,-0.029513,1.000000;;
 }
Mesh frontfin4 {
 11;
 0.157776;-0.023184;0.381319;,
 0.663691;-0.000000;0.484442;,
 0.410733;-0.000000;0.016552;,
 0.410733;-0.000000;0.016552;,
 0.410733;-0.000000;0.016552;,
 0.410733;-0.000000;0.016552;,
 0.663691;-0.000000;0.484442;,
 0.157776;-0.000000;-0.451338;,
 0.157776;-0.023184;0.381319;,
 0.157776;0.023184;0.381319;,
 0.157776;0.023184;0.381319;;

 5;
 3;4,7,10;,
 3;1,9,0;,
 3;3,6,8;,
 3;8,7,2;,
 3;10,6,5;;

 MeshMaterialList {
  1;
  5;
  0,
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "mis11.ppm";
 }
 }
}
 MeshNormals {
  11;
  -0.044000;-0.906603;0.419685;,
  -0.104269;-0.000000;0.994549;,
  0.879672;-0.000001;-0.475581;,
  0.879672;-0.000001;-0.475581;,
  0.879672;-0.000001;-0.475581;,
  0.879672;-0.000001;-0.475581;,
  -0.104269;-0.000000;0.994549;,
  0.879672;-0.000001;-0.475581;,
  -0.044000;-0.906603;0.419685;,
  -0.199728;0.000000;0.979851;,
  0.051414;0.998291;-0.027796;;

  5;
  3;4,7,10;,
  3;1,9,0;,
  3;3,6,8;,
  3;8,7,2;,
  3;10,6,5;;
 }
 MeshTextureCoords { 
 11;
 1.000000;0.889800;,
 0.500000;1.000000;,
 0.453125;0.254987;,
 0.453125;0.254987;,
 0.320833;0.404125;,
 0.320833;0.404125;,
 0.050521;0.255167;,
 0.454427;0.473698;,
 0.320833;0.404125;,
 -0.000000;0.889800;,
 0.453125;0.254987;;
 }
}
}
Frame frm-frontfin5 {
  FrameTransformMatrix {
-1.000000,0.000000,-0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,-1.000000,0.000000,
0.000000,0.000000,-0.029513,1.000000;;
 }
Mesh frontfin5 {
 11;
 0.157776;-0.023184;-0.381319;,
 0.663691;-0.000000;-0.484442;,
 0.410733;-0.000000;-0.016552;,
 0.410733;-0.000000;-0.016552;,
 0.410733;-0.000000;-0.016552;,
 0.410733;-0.000000;-0.016552;,
 0.663691;-0.000000;-0.484442;,
 0.157776;-0.000000;0.451338;,
 0.157776;-0.023184;-0.381319;,
 0.157776;0.023184;-0.381319;,
 0.157776;0.023184;-0.381319;;

 5;
 3;10,7,4;,
 3;0,9,1;,
 3;8,6,3;,
 3;2,7,8;,
 3;5,6,10;;

 MeshMaterialList {
  1;
  5;
  0,
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "mis11.ppm";
 }
 }
}
 MeshNormals {
  11;
  -0.044000;-0.906603;-0.419685;,
  -0.104269;-0.000000;-0.994549;,
  0.879672;-0.000001;0.475581;,
  0.879672;-0.000001;0.475581;,
  0.879672;-0.000001;0.475581;,
  0.879672;-0.000001;0.475581;,
  -0.104269;-0.000000;-0.994549;,
  0.879672;-0.000001;0.475581;,
  -0.044000;-0.906603;-0.419685;,
  -0.199728;0.000000;-0.979851;,
  0.051414;0.998291;0.027796;;

  5;
  3;10,7,4;,
  3;0,9,1;,
  3;8,6,3;,
  3;2,7,8;,
  3;5,6,10;;
 }
 MeshTextureCoords { 
 11;
 1.000000;0.889800;,
 0.500000;1.000000;,
 0.453125;0.254987;,
 0.453125;0.254987;,
 0.320833;0.404125;,
 0.320833;0.404125;,
 0.050521;0.255167;,
 0.454427;0.473698;,
 0.320833;0.404125;,
 -0.000000;0.889800;,
 0.453125;0.254987;;
 }
}
}
Frame frm-frontfin4_1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,-0.029513,1.000000;;
 }
Mesh frontfin4_1 {
 11;
 0.157776;-0.023184;0.381319;,
 0.663691;-0.000000;0.484442;,
 0.410733;-0.000000;0.016552;,
 0.410733;-0.000000;0.016552;,
 0.410733;-0.000000;0.016552;,
 0.410733;-0.000000;0.016552;,
 0.663691;-0.000000;0.484442;,
 0.157776;-0.000000;-0.451338;,
 0.157776;-0.023184;0.381319;,
 0.157776;0.023184;0.381319;,
 0.157776;0.023184;0.381319;;

 5;
 3;4,7,10;,
 3;1,9,0;,
 3;3,6,8;,
 3;8,7,2;,
 3;10,6,5;;

 MeshMaterialList {
  1;
  5;
  0,
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "mis11.ppm";
 }
 }
}
 MeshNormals {
  11;
  -0.044000;-0.906603;0.419685;,
  -0.104269;-0.000000;0.994549;,
  0.879672;-0.000001;-0.475581;,
  0.879672;-0.000001;-0.475581;,
  0.879672;-0.000001;-0.475581;,
  0.879672;-0.000001;-0.475581;,
  -0.104269;-0.000000;0.994549;,
  0.879672;-0.000001;-0.475581;,
  -0.044000;-0.906603;0.419685;,
  -0.199728;0.000000;0.979851;,
  0.051414;0.998291;-0.027796;;

  5;
  3;4,7,10;,
  3;1,9,0;,
  3;3,6,8;,
  3;8,7,2;,
  3;10,6,5;;
 }
 MeshTextureCoords { 
 11;
 1.000000;0.889800;,
 0.500000;1.000000;,
 0.453125;0.254987;,
 0.453125;0.254987;,
 0.320833;0.404125;,
 0.320833;0.404125;,
 0.050521;0.255167;,
 0.454427;0.473698;,
 0.320833;0.404125;,
 -0.000000;0.889800;,
 0.453125;0.254987;;
 }
}
}
}
Frame frm-rear_fins {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,4.030646,1.000000;;
 }
Frame frm-rear_fin7 {
  FrameTransformMatrix {
-0.000000,-1.000000,-0.000000,0.000000,
-1.000000,0.000000,0.000000,0.000000,
0.000000,0.000000,-1.000000,0.000000,
0.000000,0.000000,-0.507026,1.000000;;
 }
Mesh rear_fin7 {
 15;
 0.864081;-0.000000;-1.141099;,
 0.864081;-0.000000;0.220224;,
 0.864081;-0.000000;0.220224;,
 0.209568;0.017060;-1.141099;,
 0.209568;0.017060;0.860686;,
 0.209568;-0.017061;-1.141099;,
 0.209568;-0.017061;0.860686;,
 0.864081;-0.000000;-1.141099;,
 0.864081;-0.000000;0.220224;,
 0.864081;-0.000000;0.220224;,
 0.864081;-0.000000;-1.141099;,
 0.209568;-0.017061;0.860686;,
 0.209568;-0.017061;-1.141099;,
 0.209568;0.017060;0.860686;,
 0.209568;0.017060;-1.141099;;

 6;
 3;14,13,2;,
 3;14,1,0;,
 3;4,11,8;,
 3;6,12,10;,
 3;6,10,9;,
 3;5,3,7;;

 MeshMaterialList {
  1;
  6;
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
 0.0; 0.0; 0.0;;
 TextureFilename {
  "mis11.ppm";
 }
 }
}
 MeshNormals {
  15;
  0.055218;-0.705908;-0.706148;,
  0.959307;-0.000000;0.282364;,
  0.959307;-0.000000;0.282364;,
  0.023313;0.894123;-0.447214;,
  0.047107;0.998658;0.021530;,
  0.018431;-0.706867;-0.707107;,
  0.047107;-0.998658;0.021530;,
  0.055218;-0.705908;-0.706148;,
  0.959307;-0.000000;0.282364;,
  0.959307;-0.000000;0.282364;,
  0.055218;-0.705908;-0.706148;,
  0.047107;-0.998658;0.021530;,
  0.018431;-0.706867;-0.707107;,
  0.047107;0.998658;0.021530;,
  0.023313;0.894123;-0.447214;;

  6;
  3;14,13,2;,
  3;14,1,0;,
  3;4,11,8;,
  3;6,12,10;,
  3;6,10,9;,
  3;5,3,7;;
 }
 MeshTextureCoords { 
 15;
 0.467957;0.960946;,
 0.468533;0.690466;,
 0.468533;0.690466;,
 0.038279;0.964151;,
 0.048164;0.531806;,
 0.038279;0.964151;,
 0.043100;0.537063;,
 0.467957;0.960946;,
 0.468533;0.690466;,
 0.468479;0.691361;,
 0.470318;0.965138;,
 0.048164;0.531806;,
 0.051929;0.960487;,
 0.048164;0.531806;,
 0.038279;0.964151;;
 }
}
}
Frame frm-rear_fin5 {
  FrameTransformMatrix {
0.000000,1.000000,0.000000,0.000000,
-1.000000,0.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,-0.507026,1.000000;;
 }
Mesh rear_fin5 {
 15;
 0.864081;-0.000000;1.141099;,
 0.864081;-0.000000;-0.220224;,
 0.864081;-0.000000;-0.220224;,
 0.209568;0.017060;1.141099;,
 0.209568;0.017060;-0.860686;,
 0.209568;-0.017061;1.141099;,
 0.209568;-0.017061;-0.860686;,
 0.864081;-0.000000;1.141099;,
 0.864081;-0.000000;-0.220224;,
 0.864081;-0.000000;-0.220224;,
 0.864081;-0.000000;1.141099;,
 0.209568;-0.017061;-0.860686;,
 0.209568;-0.017061;1.141099;,
 0.209568;0.017060;-0.860686;,
 0.209568;0.017060;1.141099;;

 6;
 3;2,13,14;,
 3;0,1,14;,
 3;8,11,4;,
 3;10,12,6;,
 3;9,10,6;,
 3;7,3,5;;

 MeshMaterialList {
  1;
  6;
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
 0.0; 0.0; 0.0;;
 TextureFilename {
  "mis11.ppm";
 }
 }
}
 MeshNormals {
  15;
  0.055218;-0.705908;0.706148;,
  0.959307;-0.000000;-0.282364;,
  0.959307;-0.000000;-0.282364;,
  0.023313;0.894123;0.447214;,
  0.047107;0.998658;-0.021530;,
  0.018431;-0.706867;0.707107;,
  0.047107;-0.998658;-0.021530;,
  0.055218;-0.705908;0.706148;,
  0.959307;-0.000000;-0.282364;,
  0.959307;-0.000000;-0.282364;,
  0.055218;-0.705908;0.706148;,
  0.047107;-0.998658;-0.021530;,
  0.018431;-0.706867;0.707107;,
  0.047107;0.998658;-0.021530;,
  0.023313;0.894123;0.447214;;

  6;
  3;2,13,14;,
  3;0,1,14;,
  3;8,11,4;,
  3;10,12,6;,
  3;9,10,6;,
  3;7,3,5;;
 }
 MeshTextureCoords { 
 15;
 0.467957;0.960946;,
 0.468533;0.690466;,
 0.468533;0.690466;,
 0.038279;0.964151;,
 0.048164;0.531806;,
 0.038279;0.964151;,
 0.043100;0.537063;,
 0.467957;0.960946;,
 0.468533;0.690466;,
 0.468479;0.691361;,
 0.470318;0.965138;,
 0.048164;0.531806;,
 0.051929;0.960487;,
 0.048164;0.531806;,
 0.038279;0.964151;;
 }
}
}
Frame frm-rear_fin6 {
  FrameTransformMatrix {
-1.000000,0.000000,-0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,-1.000000,0.000000,
0.000000,0.000000,-0.507026,1.000000;;
 }
Mesh rear_fin6 {
 15;
 0.864081;-0.000000;-1.141099;,
 0.864081;-0.000000;0.220224;,
 0.864081;-0.000000;0.220224;,
 0.209568;0.017060;-1.141099;,
 0.209568;0.017060;0.860686;,
 0.209568;-0.017061;-1.141099;,
 0.209568;-0.017061;0.860686;,
 0.864081;-0.000000;-1.141099;,
 0.864081;-0.000000;0.220224;,
 0.864081;-0.000000;0.220224;,
 0.864081;-0.000000;-1.141099;,
 0.209568;-0.017061;0.860686;,
 0.209568;-0.017061;-1.141099;,
 0.209568;0.017060;0.860686;,
 0.209568;0.017060;-1.141099;;

 6;
 3;14,13,2;,
 3;14,1,0;,
 3;4,11,8;,
 3;6,12,10;,
 3;6,10,9;,
 3;5,3,7;;

 MeshMaterialList {
  1;
  6;
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
 0.0; 0.0; 0.0;;
 TextureFilename {
  "mis11.ppm";
 }
 }
}
 MeshNormals {
  15;
  0.055218;-0.705908;-0.706148;,
  0.959307;-0.000000;0.282364;,
  0.959307;-0.000000;0.282364;,
  0.023313;0.894123;-0.447214;,
  0.047107;0.998658;0.021530;,
  0.018431;-0.706867;-0.707107;,
  0.047107;-0.998658;0.021530;,
  0.055218;-0.705908;-0.706148;,
  0.959307;-0.000000;0.282364;,
  0.959307;-0.000000;0.282364;,
  0.055218;-0.705908;-0.706148;,
  0.047107;-0.998658;0.021530;,
  0.018431;-0.706867;-0.707107;,
  0.047107;0.998658;0.021530;,
  0.023313;0.894123;-0.447214;;

  6;
  3;14,13,2;,
  3;14,1,0;,
  3;4,11,8;,
  3;6,12,10;,
  3;6,10,9;,
  3;5,3,7;;
 }
 MeshTextureCoords { 
 15;
 0.467957;0.960946;,
 0.468533;0.690466;,
 0.468533;0.690466;,
 0.038279;0.964151;,
 0.048164;0.531806;,
 0.038279;0.964151;,
 0.043100;0.537063;,
 0.467957;0.960946;,
 0.468533;0.690466;,
 0.468479;0.691361;,
 0.470318;0.965138;,
 0.048164;0.531806;,
 0.051929;0.960487;,
 0.048164;0.531806;,
 0.038279;0.964151;;
 }
}
}
Frame frm-rear_fin5_1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,-0.507026,1.000000;;
 }
Mesh rear_fin5_1 {
 15;
 0.864081;-0.000000;1.141099;,
 0.864081;-0.000000;-0.220224;,
 0.864081;-0.000000;-0.220224;,
 0.209568;0.017060;1.141099;,
 0.209568;0.017060;-0.860686;,
 0.209568;-0.017061;1.141099;,
 0.209568;-0.017061;-0.860686;,
 0.864081;-0.000000;1.141099;,
 0.864081;-0.000000;-0.220224;,
 0.864081;-0.000000;-0.220224;,
 0.864081;-0.000000;1.141099;,
 0.209568;-0.017061;-0.860686;,
 0.209568;-0.017061;1.141099;,
 0.209568;0.017060;-0.860686;,
 0.209568;0.017060;1.141099;;

 6;
 3;2,13,14;,
 3;0,1,14;,
 3;8,11,4;,
 3;10,12,6;,
 3;9,10,6;,
 3;7,3,5;;

 MeshMaterialList {
  1;
  6;
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
 0.0; 0.0; 0.0;;
 TextureFilename {
  "mis11.ppm";
 }
 }
}
 MeshNormals {
  15;
  0.055218;-0.705908;0.706148;,
  0.959307;-0.000000;-0.282364;,
  0.959307;-0.000000;-0.282364;,
  0.023313;0.894123;0.447214;,
  0.047107;0.998658;-0.021530;,
  0.018431;-0.706867;0.707107;,
  0.047107;-0.998658;-0.021530;,
  0.055218;-0.705908;0.706148;,
  0.959307;-0.000000;-0.282364;,
  0.959307;-0.000000;-0.282364;,
  0.055218;-0.705908;0.706148;,
  0.047107;-0.998658;-0.021530;,
  0.018431;-0.706867;0.707107;,
  0.047107;0.998658;-0.021530;,
  0.023313;0.894123;0.447214;;

  6;
  3;2,13,14;,
  3;0,1,14;,
  3;8,11,4;,
  3;10,12,6;,
  3;9,10,6;,
  3;7,3,5;;
 }
 MeshTextureCoords { 
 15;
 0.467957;0.960946;,
 0.468533;0.690466;,
 0.468533;0.690466;,
 0.038279;0.964151;,
 0.048164;0.531806;,
 0.038279;0.964151;,
 0.043100;0.537063;,
 0.467957;0.960946;,
 0.468533;0.690466;,
 0.468479;0.691361;,
 0.470318;0.965138;,
 0.048164;0.531806;,
 0.051929;0.960487;,
 0.048164;0.531806;,
 0.038279;0.964151;;
 }
}
}
}
Frame frm-trail {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,5.758122,1.000000;;
 }
Mesh trail {
 8;
 0.030000;0.030000;-0.030000;,
 0.030000;0.030000;0.030000;,
 0.030000;-0.030000;-0.030000;,
 0.030000;-0.030000;0.030000;,
 -0.030000;0.030000;-0.030000;,
 -0.030000;0.030000;0.030000;,
 -0.030000;-0.030000;-0.030000;,
 -0.030000;-0.030000;0.030000;;

 6;
 4;5,4,6,7;,
 4;4,0,2,6;,
 4;0,1,3,2;,
 4;1,5,7,3;,
 4;7,6,2,3;,
 4;1,0,4,5;;

 MeshNormals {
  8;
  0.577350;0.577350;-0.577350;,
  0.577350;0.577350;0.577350;,
  0.577350;-0.577350;-0.577350;,
  0.577350;-0.577350;0.577350;,
  -0.577350;0.577350;-0.577350;,
  -0.577350;0.577350;0.577350;,
  -0.577350;-0.577350;-0.577350;,
  -0.577350;-0.577350;0.577350;;

  6;
  4;5,4,6,7;,
  4;4,0,2,6;,
  4;0,1,3,2;,
  4;1,5,7,3;,
  4;7,6,2,3;,
  4;1,0,4,5;;
 }
}
}
Frame frm-thrust {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,5.758122,1.000000;;
 }
Mesh thrust {
 8;
 0.030000;0.030000;-0.030000;,
 0.030000;0.030000;0.030000;,
 0.030000;-0.030000;-0.030000;,
 0.030000;-0.030000;0.030000;,
 -0.030000;0.030000;-0.030000;,
 -0.030000;0.030000;0.030000;,
 -0.030000;-0.030000;-0.030000;,
 -0.030000;-0.030000;0.030000;;

 6;
 4;5,4,6,7;,
 4;4,0,2,6;,
 4;0,1,3,2;,
 4;1,5,7,3;,
 4;7,6,2,3;,
 4;1,0,4,5;;

 MeshNormals {
  8;
  0.577350;0.577350;-0.577350;,
  0.577350;0.577350;0.577350;,
  0.577350;-0.577350;-0.577350;,
  0.577350;-0.577350;0.577350;,
  -0.577350;0.577350;-0.577350;,
  -0.577350;0.577350;0.577350;,
  -0.577350;-0.577350;-0.577350;,
  -0.577350;-0.577350;0.577350;;

  6;
  4;5,4,6,7;,
  4;4,0,2,6;,
  4;0,1,3,2;,
  4;1,5,7,3;,
  4;7,6,2,3;,
  4;1,0,4,5;;
 }
}
}
Frame frm-rocket {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,5.758122,1.000000;;
 }
Mesh rocket {
 8;
 0.030000;0.030000;-0.030000;,
 0.030000;0.030000;0.030000;,
 0.030000;-0.030000;-0.030000;,
 0.030000;-0.030000;0.030000;,
 -0.030000;0.030000;-0.030000;,
 -0.030000;0.030000;0.030000;,
 -0.030000;-0.030000;-0.030000;,
 -0.030000;-0.030000;0.030000;;

 6;
 4;5,4,6,7;,
 4;4,0,2,6;,
 4;0,1,3,2;,
 4;1,5,7,3;,
 4;7,6,2,3;,
 4;1,0,4,5;;

 MeshNormals {
  8;
  0.577350;0.577350;-0.577350;,
  0.577350;0.577350;0.577350;,
  0.577350;-0.577350;-0.577350;,
  0.577350;-0.577350;0.577350;,
  -0.577350;0.577350;-0.577350;,
  -0.577350;0.577350;0.577350;,
  -0.577350;-0.577350;-0.577350;,
  -0.577350;-0.577350;0.577350;;

  6;
  4;5,4,6,7;,
  4;4,0,2,6;,
  4;0,1,3,2;,
  4;1,5,7,3;,
  4;7,6,2,3;,
  4;1,0,4,5;;
 }
}
}
}
AnimationSet {
 Animation anim-front_fins {
  {frm-front_fins}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, -2.267082;;,
  100; 3; 0.000000, 0.000000, -2.267082;;;
  }
 }
 Animation anim-frontfin7 {
  {frm-frontfin7}
  AnimationKey {
  0;
  2;
  1; 4; 0.000000, -0.707107, 0.707107, -0.000000;;,
  100; 4; 0.000000, -0.707107, 0.707107, -0.000000;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, -0.029513;;,
  100; 3; 0.000000, 0.000000, -0.029513;;;
  }
 }
 Animation anim-frontfin4 {
  {frm-frontfin4}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, 0.000000, 0.000000, -0.707107;;,
  100; 4; 0.707107, 0.000000, 0.000000, -0.707107;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, -0.029513;;,
  100; 3; 0.000000, 0.000000, -0.029513;;;
  }
 }
 Animation anim-frontfin5 {
  {frm-frontfin5}
  AnimationKey {
  0;
  2;
  1; 4; 0.000000, 0.000000, 1.000000, -0.000000;;,
  100; 4; 0.000000, 0.000000, 1.000000, -0.000000;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, -0.029513;;,
  100; 3; 0.000000, 0.000000, -0.029513;;;
  }
 }
 Animation anim-frontfin4_1 {
  {frm-frontfin4_1}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, -0.029513;;,
  100; 3; 0.000000, 0.000000, -0.029513;;;
  }
 }
 Animation anim-rear_fins {
  {frm-rear_fins}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, 4.030646;;,
  100; 3; 0.000000, 0.000000, 4.030646;;;
  }
 }
 Animation anim-rear_fin7 {
  {frm-rear_fin7}
  AnimationKey {
  0;
  2;
  1; 4; 0.000000, -0.707107, 0.707107, -0.000000;;,
  100; 4; 0.000000, -0.707107, 0.707107, -0.000000;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, -0.507026;;,
  100; 3; 0.000000, 0.000000, -0.507026;;;
  }
 }
 Animation anim-rear_fin5 {
  {frm-rear_fin5}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, 0.000000, 0.000000, -0.707107;;,
  100; 4; 0.707107, 0.000000, 0.000000, -0.707107;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, -0.507026;;,
  100; 3; 0.000000, 0.000000, -0.507026;;;
  }
 }
 Animation anim-rear_fin6 {
  {frm-rear_fin6}
  AnimationKey {
  0;
  2;
  1; 4; 0.000000, 0.000000, 1.000000, -0.000000;;,
  100; 4; 0.000000, 0.000000, 1.000000, -0.000000;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, -0.507026;;,
  100; 3; 0.000000, 0.000000, -0.507026;;;
  }
 }
 Animation anim-rear_fin5_1 {
  {frm-rear_fin5_1}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, -0.507026;;,
  100; 3; 0.000000, 0.000000, -0.507026;;;
  }
 }
 Animation anim-trail {
  {frm-trail}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, 5.758122;;,
  100; 3; 0.000000, 0.000000, 5.758122;;;
  }
 }
 Animation anim-thrust {
  {frm-thrust}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, 5.758122;;,
  100; 3; 0.000000, 0.000000, 5.758122;;;
  }
 }
 Animation anim-rocket {
  {frm-rocket}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, 5.758122;;,
  100; 3; 0.000000, 0.000000, 5.758122;;;
  }
 }
}

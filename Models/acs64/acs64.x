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

Frame frm-turret1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh turret1 {
 25;
 1.241378;-0.000009;0.000000;,
 1.241378;-0.000009;0.000000;,
 0.620689;-0.000009;1.075065;,
 0.620689;-0.000009;1.075065;,
 -0.620689;-0.000009;1.075065;,
 -0.620689;-0.000009;1.075065;,
 -1.241378;-0.000009;-0.000000;,
 -1.241378;-0.000009;-0.000000;,
 -0.620689;-0.000009;-1.075065;,
 -0.620689;-0.000009;-1.075065;,
 0.620689;-0.000009;-1.075064;,
 0.620689;-0.000009;-1.075064;,
 0.463580;0.481383;-0.802944;,
 0.620689;-0.000009;-1.075064;,
 -0.463580;0.481383;-0.802944;,
 -0.620689;-0.000009;-1.075065;,
 -0.927160;0.481383;-0.000000;,
 -1.241378;-0.000009;-0.000000;,
 -0.463580;0.481383;0.802944;,
 -0.620689;-0.000009;1.075065;,
 0.463580;0.481383;0.802944;,
 0.620689;-0.000009;1.075065;,
 0.927160;0.481383;0.000000;,
 1.241378;-0.000009;0.000000;,
 0.000000;0.742616;0.000000;;

 13;
 3;24,22,12;,
 4;12,22,1,11;,
 4;16,14,9,7;,
 4;22,20,3,0;,
 3;24,20,22;,
 3;24,14,16;,
 3;24,12,14;,
 3;24,16,18;,
 4;20,18,5,2;,
 3;24,18,20;,
 4;14,12,10,8;,
 4;18,16,6,4;,
 6;23,21,19,17,15,13;;

 MeshMaterialList {
  2;
  13;
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
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
}
 MeshNormals {
  25;
  0.998456;0.055555;0.000000;,
  0.998456;0.055555;0.000000;,
  0.499228;0.055555;0.864688;,
  0.499228;0.055555;0.864688;,
  -0.499228;0.055555;0.864688;,
  -0.499228;0.055555;0.864688;,
  -0.998456;0.055555;-0.000000;,
  -0.998456;0.055555;-0.000000;,
  -0.499228;0.055555;-0.864688;,
  -0.499228;0.055555;-0.864688;,
  0.499228;0.055555;-0.864688;,
  0.499228;0.055555;-0.864688;,
  0.288951;0.816107;-0.500477;,
  0.499228;0.055555;-0.864688;,
  -0.288950;0.816107;-0.500477;,
  -0.499228;0.055555;-0.864688;,
  -0.577901;0.816107;-0.000000;,
  -0.998456;0.055555;-0.000000;,
  -0.288951;0.816107;0.500477;,
  -0.499228;0.055555;0.864688;,
  0.288950;0.816107;0.500477;,
  0.499228;0.055555;0.864688;,
  0.577901;0.816107;0.000000;,
  0.998456;0.055555;0.000000;,
  0.000000;1.000000;-0.000000;;

  13;
  3;24,22,12;,
  4;12,22,1,11;,
  4;16,14,9,7;,
  4;22,20,3,0;,
  3;24,20,22;,
  3;24,14,16;,
  3;24,12,14;,
  3;24,16,18;,
  4;20,18,5,2;,
  3;24,18,20;,
  4;14,12,10,8;,
  4;18,16,6,4;,
  6;23,21,19,17,15,13;;
 }
 MeshTextureCoords { 
 25;
 0.382813;0.031250;,
 0.382813;0.031250;,
 0.023438;0.234375;,
 0.023438;0.234375;,
 0.023438;0.648438;,
 0.023438;0.648438;,
 0.382813;0.859375;,
 0.382813;0.859375;,
 0.742188;0.648438;,
 0.742188;0.648438;,
 0.742188;0.234375;,
 0.742188;0.234375;,
 0.625000;0.304688;,
 0.568359;0.136719;,
 0.625000;0.585938;,
 0.212891;0.136719;,
 0.382813;0.726563;,
 0.035156;0.437500;,
 0.132813;0.585938;,
 0.212891;0.738281;,
 0.132813;0.304688;,
 0.568359;0.738281;,
 0.382813;0.164063;,
 0.746094;0.437500;,
 0.382813;0.445313;;
 }
}
Frame frm-rwingzz {
  FrameTransformMatrix {
1.270000,0.000000,0.000000,0.000000,
0.000000,1.270000,0.000000,0.000000,
0.000000,0.000000,1.270000,0.000000,
-0.515974,0.318904,0.284941,1.000000;;
 }
Mesh rwingzz {
 26;
 -0.750178;-0.048827;0.210000;,
 -0.750178;-0.048827;0.210000;,
 -0.750178;-0.048827;0.210000;,
 -0.750178;-0.048827;-0.210000;,
 -0.750178;-0.048827;-0.210000;,
 -0.750178;-0.048827;-0.210000;,
 -0.750178;0.048827;0.210000;,
 -0.750178;0.048827;0.210000;,
 -0.750178;0.048827;0.210000;,
 -0.750178;0.048827;-0.210000;,
 -0.750178;0.048827;-0.210000;,
 -0.750178;0.048827;-0.210000;,
 -0.001642;-0.108657;0.279300;,
 -0.001642;-0.108657;0.279300;,
 -0.001642;-0.108657;-0.279300;,
 -0.001642;0.108657;0.279300;,
 -0.001642;0.108657;-0.279300;,
 -0.001642;0.108657;-0.279300;,
 -0.001642;0.108657;-0.279300;,
 -0.001642;0.108657;0.279300;,
 -0.001642;-0.108657;-0.279300;,
 -0.001642;-0.108657;0.279300;,
 -0.750178;0.048827;-0.210000;,
 -0.750178;0.048827;0.210000;,
 -0.750178;-0.048827;-0.210000;,
 -0.750178;-0.048827;0.210000;;

 10;
 3;11,5,2;,
 3;8,10,1;,
 3;17,14,4;,
 3;9,16,3;,
 3;18,22,7;,
 3;15,18,6;,
 3;23,0,13;,
 3;19,23,12;,
 3;24,20,21;,
 3;25,24,21;;

 MeshMaterialList {
  5;
  10;
  0,
  0,
  1,
  1,
  2,
  2,
  3,
  3,
  4,
  4;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
}
 MeshNormals {
  26;
  -0.838930;-0.385044;0.384627;,
  -0.838930;-0.385044;0.384627;,
  -0.838930;-0.385044;0.384627;,
  -0.430420;-0.638601;-0.637909;,
  -0.430420;-0.638601;-0.637909;,
  -0.430420;-0.638601;-0.637909;,
  -0.430420;0.638601;0.637909;,
  -0.430420;0.638601;0.637909;,
  -0.430420;0.638601;0.637909;,
  -0.838930;0.385044;-0.384627;,
  -0.838930;0.385044;-0.384627;,
  -0.838930;0.385044;-0.384627;,
  -0.121081;-0.702284;0.701524;,
  -0.121081;-0.702284;0.701524;,
  -0.121081;-0.702284;-0.701524;,
  -0.121081;0.702284;0.701524;,
  -0.121081;0.702284;-0.701524;,
  -0.121081;0.702284;-0.701524;,
  -0.121081;0.702284;-0.701524;,
  -0.121081;0.702284;0.701524;,
  -0.121081;-0.702284;-0.701524;,
  -0.121081;-0.702284;0.701524;,
  -0.838930;0.385044;-0.384627;,
  -0.430420;0.638601;0.637909;,
  -0.430420;-0.638601;-0.637909;,
  -0.838930;-0.385044;0.384627;;

  10;
  3;11,5,2;,
  3;8,10,1;,
  3;17,14,4;,
  3;9,16,3;,
  3;18,22,7;,
  3;15,18,6;,
  3;23,0,13;,
  3;19,23,12;,
  3;24,20,21;,
  3;25,24,21;;
 }
 MeshTextureCoords { 
 26;
 0.476563;0.085938;,
 0.742188;0.742188;,
 0.742188;0.742188;,
 0.476563;0.078125;,
 0.476563;0.078125;,
 0.976563;0.742188;,
 0.960938;0.367188;,
 0.960938;0.367188;,
 0.742188;0.687500;,
 0.476563;0.046875;,
 0.976563;0.687500;,
 0.976563;0.687500;,
 0.757813;0.101563;,
 0.757813;0.101563;,
 0.757813;0.101563;,
 0.984375;0.664063;,
 0.757813;0.023438;,
 0.757813;0.023438;,
 0.765625;0.664063;,
 0.757813;0.023438;,
 0.765625;0.664063;,
 0.984375;0.664063;,
 0.796875;0.367188;,
 0.476563;0.046875;,
 0.796875;0.367188;,
 0.960938;0.367188;;
 }
}
Frame frm-cyl1 {
  FrameTransformMatrix {
0.787402,0.000000,0.000000,0.000000,
0.000000,0.787402,0.000000,0.000000,
0.000000,0.000000,0.787402,0.000000,
-0.572470,-0.001277,-0.529720,1.000000;;
 }
Mesh cyl1 {
 20;
 0.045966;-0.000000;-0.667884;,
 0.045966;-0.000000;-0.667884;,
 0.014204;0.043716;-0.667884;,
 0.014204;0.043716;-0.667884;,
 -0.037187;0.027018;-0.667884;,
 -0.037187;0.027018;-0.667884;,
 -0.037187;-0.027018;-0.667884;,
 -0.037187;-0.027018;-0.667884;,
 0.014204;-0.043716;-0.667884;,
 0.014204;-0.043716;-0.667884;,
 0.014204;-0.043716;-0.667884;,
 0.024239;-0.074601;0.498255;,
 -0.037187;-0.027018;-0.667884;,
 -0.063460;-0.046106;0.498255;,
 -0.037187;0.027018;-0.667884;,
 -0.063460;0.046106;0.498255;,
 0.014204;0.043716;-0.667884;,
 0.024239;0.074601;0.498255;,
 0.045966;-0.000000;-0.667884;,
 0.078440;-0.000000;0.498255;;

 6;
 4;3,5,15,17;,
 4;9,1,19,11;,
 4;4,7,13,15;,
 4;6,8,11,13;,
 4;0,2,17,19;,
 5;18,10,12,14,16;;

 MeshMaterialList {
  2;
  6;
  0,
  0,
  0,
  0,
  0,
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
}
 MeshNormals {
  20;
  0.839961;0.000000;-0.542647;,
  0.839961;0.000000;-0.542647;,
  0.259562;0.798850;-0.542647;,
  0.259562;0.798850;-0.542647;,
  -0.679543;0.493717;-0.542647;,
  -0.679543;0.493717;-0.542647;,
  -0.679543;-0.493717;-0.542647;,
  -0.679543;-0.493717;-0.542647;,
  0.259562;-0.798850;-0.542647;,
  0.259562;-0.798850;-0.542647;,
  0.259562;-0.798850;-0.542647;,
  0.308897;-0.950688;-0.027837;,
  -0.679543;-0.493717;-0.542647;,
  -0.808703;-0.587558;-0.027837;,
  -0.679543;0.493717;-0.542647;,
  -0.808703;0.587557;-0.027837;,
  0.259562;0.798850;-0.542647;,
  0.308897;0.950688;-0.027837;,
  0.839961;0.000000;-0.542647;,
  0.999612;0.000000;-0.027837;;

  6;
  4;3,5,15,17;,
  4;9,1,19,11;,
  4;4,7,13,15;,
  4;6,8,11,13;,
  4;0,2,17,19;,
  5;18,10,12,14,16;;
 }
 MeshTextureCoords { 
 20;
 0.869979;0.306704;,
 0.869979;0.306704;,
 0.778362;0.306940;,
 0.778362;0.306940;,
 0.813357;0.306850;,
 0.813357;0.306850;,
 0.926601;0.306559;,
 0.926601;0.306559;,
 0.961596;0.306469;,
 0.961596;0.306469;,
 0.687389;0.166272;,
 0.963544;0.846286;,
 0.658945;0.166194;,
 0.928550;0.846376;,
 0.650997;0.141577;,
 0.815305;0.846667;,
 0.674529;0.126441;,
 0.780311;0.846757;,
 0.697020;0.141704;,
 0.871927;0.846522;;
 }
}
Frame frm-rwepemt {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,-1.000000,0.000000,0.000000,
-0.001403,-0.007164,-0.665743,1.000000;;
 }
Mesh rwepemt {
 4;
 -0.003771;-0.001333;0.000000;,
 0.000000;0.004000;0.000000;,
 0.001886;-0.001333;0.003266;,
 0.001886;-0.001333;-0.003266;;

 4;
 3;2,1,0;,
 3;3,0,1;,
 3;0,3,2;,
 3;1,2,3;;

 MeshMaterialList {
  1;
  4;
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "acs64.ppm";
 }
 }
}
 MeshNormals {
  4;
  -0.942809;-0.333333;0.000000;,
  0.000000;1.000000;-0.000000;,
  0.471404;-0.333333;0.816497;,
  0.471404;-0.333333;-0.816497;;

  4;
  3;2,1,0;,
  3;3,0,1;,
  3;0,3,2;,
  3;1,2,3;;
 }
 MeshTextureCoords { 
 4;
 0.000000;1.000000;,
 0.000000;1.000000;,
 0.000000;1.000000;,
 0.000000;1.000000;;
 }
}
}
}
}
Frame frm-lwingzz {
  FrameTransformMatrix {
-1.270000,0.000000,-0.000000,0.000000,
0.000000,1.270000,0.000000,0.000000,
0.000000,0.000000,-1.270000,0.000000,
0.515974,0.318904,0.284941,1.000000;;
 }
Mesh lwingzz {
 26;
 -0.750178;-0.048827;-0.210000;,
 -0.750178;-0.048827;-0.210000;,
 -0.750178;-0.048827;-0.210000;,
 -0.750178;-0.048827;0.210000;,
 -0.750178;-0.048827;0.210000;,
 -0.750178;-0.048827;0.210000;,
 -0.750178;0.048827;-0.210000;,
 -0.750178;0.048827;-0.210000;,
 -0.750178;0.048827;-0.210000;,
 -0.750178;0.048827;0.210000;,
 -0.750178;0.048827;0.210000;,
 -0.750178;0.048827;0.210000;,
 -0.001642;-0.108657;-0.279300;,
 -0.001642;-0.108657;0.279300;,
 -0.001642;-0.108657;0.279300;,
 -0.001642;0.108657;-0.279300;,
 -0.001642;0.108657;-0.279300;,
 -0.001642;0.108657;0.279300;,
 -0.001642;0.108657;0.279300;,
 -0.001642;0.108657;-0.279300;,
 -0.001642;-0.108657;0.279300;,
 -0.001642;-0.108657;-0.279300;,
 -0.750178;0.048827;0.210000;,
 -0.750178;0.048827;-0.210000;,
 -0.750178;-0.048827;0.210000;,
 -0.750178;-0.048827;-0.210000;;

 10;
 3;5,11,8;,
 3;2,4,7;,
 3;14,17,10;,
 3;3,13,9;,
 3;22,18,16;,
 3;6,22,15;,
 3;1,23,19;,
 3;12,0,19;,
 3;20,24,25;,
 3;21,20,25;;

 MeshMaterialList {
  5;
  10;
  0,
  0,
  1,
  1,
  2,
  2,
  3,
  3,
  4,
  4;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
}
 MeshNormals {
  26;
  -0.430420;-0.638601;-0.637909;,
  -0.430420;-0.638601;-0.637909;,
  -0.430420;-0.638601;-0.637909;,
  -0.838930;-0.385044;0.384627;,
  -0.838930;-0.385044;0.384627;,
  -0.838930;-0.385044;0.384627;,
  -0.838930;0.385044;-0.384627;,
  -0.838930;0.385044;-0.384627;,
  -0.838930;0.385044;-0.384627;,
  -0.430420;0.638601;0.637909;,
  -0.430420;0.638601;0.637909;,
  -0.430420;0.638601;0.637909;,
  -0.121081;-0.702284;-0.701524;,
  -0.121081;-0.702284;0.701524;,
  -0.121081;-0.702284;0.701524;,
  -0.121081;0.702284;-0.701524;,
  -0.121081;0.702284;-0.701524;,
  -0.121081;0.702284;0.701524;,
  -0.121081;0.702284;0.701524;,
  -0.121081;0.702284;-0.701524;,
  -0.121081;-0.702284;0.701524;,
  -0.121081;-0.702284;-0.701524;,
  -0.430420;0.638601;0.637909;,
  -0.838930;0.385044;-0.384627;,
  -0.838930;-0.385044;0.384627;,
  -0.430420;-0.638601;-0.637909;;

  10;
  3;5,11,8;,
  3;2,4,7;,
  3;14,17,10;,
  3;3,13,9;,
  3;22,18,16;,
  3;6,22,15;,
  3;1,23,19;,
  3;12,0,19;,
  3;20,24,25;,
  3;21,20,25;;
 }
 MeshTextureCoords { 
 26;
 0.476563;0.085938;,
 0.476563;0.085938;,
 0.976563;0.742188;,
 0.476563;0.085938;,
 0.742188;0.742188;,
 0.742188;0.742188;,
 0.960938;0.367188;,
 0.976563;0.687500;,
 0.976563;0.687500;,
 0.476563;0.046875;,
 0.476563;0.046875;,
 0.742188;0.687500;,
 0.757813;0.101563;,
 0.757813;0.101563;,
 0.757813;0.101563;,
 0.984375;0.664063;,
 0.984375;0.664063;,
 0.757813;0.023438;,
 0.765625;0.664063;,
 0.757813;0.023438;,
 0.765625;0.664063;,
 0.984375;0.664063;,
 0.796875;0.367188;,
 0.476563;0.046875;,
 0.796875;0.367188;,
 0.960938;0.367188;;
 }
}
Frame frm-antenn1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-0.532229,0.096097,-0.004198,1.000000;;
 }
Mesh antenn1 {
 18;
 0.092950;-0.037700;-0.092950;,
 0.065065;0.037700;-0.065065;,
 0.065065;0.037700;-0.065065;,
 0.065065;0.037700;0.065065;,
 0.065065;0.037700;0.065065;,
 -0.092950;-0.037700;0.092950;,
 -0.065065;0.037700;-0.065065;,
 -0.065065;0.037700;-0.065065;,
 -0.065065;0.037700;0.065065;,
 -0.065065;0.037700;0.065065;,
 -0.065065;0.037700;0.065065;,
 -0.065065;0.037700;-0.065065;,
 -0.092950;-0.037700;0.092950;,
 -0.092950;-0.037700;-0.092950;,
 0.065065;0.037700;0.065065;,
 0.065065;0.037700;-0.065065;,
 0.092950;-0.037700;0.092950;,
 0.092950;-0.037700;-0.092950;;

 5;
 4;2,4,16,0;,
 4;3,9,5,16;,
 4;8,7,13,12;,
 4;6,1,17,13;,
 4;11,10,14,15;;

 MeshMaterialList {
  5;
  5;
  0,
  1,
  2,
  3,
  4;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
}
 MeshNormals {
  18;
  0.626582;0.463454;-0.626582;,
  0.435976;0.787306;-0.435975;,
  0.435976;0.787306;-0.435975;,
  0.435975;0.787306;0.435976;,
  0.435975;0.787306;0.435976;,
  -0.626582;0.463454;0.626582;,
  -0.435975;0.787306;-0.435976;,
  -0.435975;0.787306;-0.435976;,
  -0.435976;0.787306;0.435975;,
  -0.435976;0.787306;0.435975;,
  -0.435976;0.787306;0.435975;,
  -0.435975;0.787306;-0.435976;,
  -0.626582;0.463454;0.626582;,
  -0.626582;0.463454;-0.626582;,
  0.435975;0.787306;0.435976;,
  0.435976;0.787306;-0.435975;,
  0.626582;0.463454;0.626582;,
  0.626582;0.463454;-0.626582;;

  5;
  4;2,4,16,0;,
  4;3,9,5,16;,
  4;8,7,13,12;,
  4;6,1,17,13;,
  4;11,10,14,15;;
 }
 MeshTextureCoords { 
 18;
 0.468750;0.976563;,
 0.312500;0.898438;,
 0.437500;0.898438;,
 0.312500;0.898438;,
 0.312500;0.898438;,
 0.468750;0.976563;,
 0.437500;0.898438;,
 0.437500;0.898438;,
 0.312500;0.898438;,
 0.437500;0.898438;,
 0.476563;0.992188;,
 0.625000;0.992188;,
 0.281250;0.976563;,
 0.468750;0.976563;,
 0.476563;0.843750;,
 0.625000;0.843750;,
 0.281250;0.976563;,
 0.281250;0.976563;;
 }
}
Frame frm-antenn2 {
  FrameTransformMatrix {
-1.000000,0.000000,-0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,-1.000000,0.000000,
-0.001758,0.286162,-0.000725,1.000000;;
 }
Mesh antenn2 {
 14;
 -0.030051;-0.250000;0.030051;,
 -0.030051;-0.250000;0.030051;,
 -0.011675;0.250000;0.011786;,
 0.030051;-0.250000;0.030051;,
 0.011675;0.250000;0.011786;,
 0.011675;0.250000;0.011786;,
 0.011675;0.250000;-0.011786;,
 0.011675;0.250000;0.011786;,
 0.030051;-0.250000;-0.030051;,
 0.030051;-0.250000;0.030051;,
 -0.011675;0.250000;-0.011786;,
 -0.011675;0.250000;0.011786;,
 -0.030051;-0.250000;-0.030051;,
 -0.030051;-0.250000;0.030051;;

 8;
 3;10,12,1;,
 3;2,10,0;,
 3;6,8,12;,
 3;10,6,12;,
 3;5,3,8;,
 3;6,4,8;,
 3;11,13,9;,
 3;7,11,9;;

 MeshMaterialList {
  4;
  8;
  0,
  0,
  1,
  1,
  2,
  2,
  3,
  3;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
}
 MeshNormals {
  14;
  -0.893345;0.049150;0.446676;,
  -0.893345;0.049150;0.446676;,
  -0.446672;0.049050;0.893352;,
  0.446672;0.049050;0.893352;,
  0.893345;0.049150;0.446676;,
  0.893345;0.049150;0.446676;,
  0.446672;0.049050;-0.893352;,
  0.893345;0.049150;0.446676;,
  0.893345;0.049150;-0.446676;,
  0.446672;0.049050;0.893352;,
  -0.893345;0.049150;-0.446676;,
  -0.446672;0.049050;0.893352;,
  -0.446672;0.049050;-0.893352;,
  -0.893345;0.049150;0.446676;;

  8;
  3;10,12,1;,
  3;2,10,0;,
  3;6,8,12;,
  3;10,6,12;,
  3;5,3,8;,
  3;6,4,8;,
  3;11,13,9;,
  3;7,11,9;;
 }
 MeshTextureCoords { 
 14;
 0.023438;0.023438;,
 0.023438;0.023438;,
 0.335938;0.031250;,
 0.023438;0.054688;,
 0.335938;0.046875;,
 0.335938;0.046875;,
 0.335938;0.031250;,
 0.335938;0.031250;,
 0.023438;0.023438;,
 0.023438;0.023438;,
 0.335938;0.046875;,
 0.335938;0.046875;,
 0.023438;0.054688;,
 0.023438;0.054688;;
 }
}
Frame frm-antenn3 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-0.000000,0.266898,-0.000000,1.000000;;
 }
Mesh antenn3 {
 21;
 -0.025543;-0.047500;-0.025543;,
 -0.016374;0.047500;0.016530;,
 -0.016374;0.047500;0.016530;,
 -0.016374;0.047500;0.016530;,
 -0.016374;0.047500;-0.016530;,
 -0.016374;0.047500;-0.016530;,
 0.025543;-0.047500;-0.025543;,
 0.016374;0.047500;0.016530;,
 0.016374;0.047500;0.016530;,
 0.016374;0.047500;0.016530;,
 0.016374;0.047500;-0.016530;,
 0.016374;0.047500;-0.016530;,
 0.016374;0.047500;-0.016530;,
 0.016374;0.047500;-0.016530;,
 0.016374;0.047500;0.016530;,
 0.025543;-0.047500;-0.025543;,
 0.025543;-0.047500;0.025543;,
 -0.016374;0.047500;-0.016530;,
 -0.016374;0.047500;0.016530;,
 -0.025543;-0.047500;-0.025543;,
 -0.025543;-0.047500;0.025543;;

 10;
 3;5,0,20;,
 3;3,4,20;,
 3;12,6,19;,
 3;17,11,19;,
 3;9,16,15;,
 3;10,8,15;,
 3;2,20,16;,
 3;7,1,16;,
 3;13,17,18;,
 3;14,13,18;;

 MeshMaterialList {
  4;
  10;
  0,
  0,
  1,
  1,
  2,
  2,
  3,
  3,
  1,
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
}
 MeshNormals {
  21;
  -0.443538;0.126988;-0.887214;,
  -0.312028;0.716291;0.624152;,
  -0.312028;0.716291;0.624152;,
  -0.312028;0.716291;0.624152;,
  -0.774341;0.500449;-0.387231;,
  -0.774341;0.500449;-0.387231;,
  0.887076;0.127710;-0.443607;,
  0.774341;0.500449;0.387231;,
  0.774341;0.500449;0.387231;,
  0.774341;0.500449;0.387231;,
  0.312028;0.716291;-0.624152;,
  0.312028;0.716291;-0.624152;,
  0.312028;0.716291;-0.624152;,
  0.312028;0.716291;-0.624152;,
  0.774341;0.500449;0.387231;,
  0.887076;0.127710;-0.443607;,
  0.443538;0.126988;0.887214;,
  -0.774341;0.500449;-0.387231;,
  -0.312028;0.716291;0.624152;,
  -0.443538;0.126988;-0.887214;,
  -0.887076;0.127710;0.443607;;

  10;
  3;5,0,20;,
  3;3,4,20;,
  3;12,6,19;,
  3;17,11,19;,
  3;9,16,15;,
  3;10,8,15;,
  3;2,20,16;,
  3;7,1,16;,
  3;13,17,18;,
  3;14,13,18;;
 }
 MeshTextureCoords { 
 21;
 0.757813;0.117188;,
 0.648438;0.164063;,
 0.648438;0.164063;,
 0.648438;0.164063;,
 0.648438;0.125000;,
 0.648438;0.125000;,
 0.757813;0.117188;,
 0.648438;0.125000;,
 0.648438;0.125000;,
 0.648438;0.125000;,
 0.648438;0.164063;,
 0.648438;0.125000;,
 0.648438;0.125000;,
 0.648438;0.125000;,
 0.632813;0.125000;,
 0.757813;0.171875;,
 0.757813;0.117188;,
 0.648438;0.164063;,
 0.632813;0.164063;,
 0.757813;0.171875;,
 0.757813;0.171875;;
 }
}
}
}
}
Frame frm-cyl2 {
  FrameTransformMatrix {
-0.787402,0.000000,-0.000000,0.000000,
0.000000,0.787402,0.000000,0.000000,
0.000000,0.000000,-0.787402,0.000000,
-0.566837,-0.001277,0.529720,1.000000;;
 }
Mesh cyl2 {
 20;
 0.045966;-0.000000;-0.667884;,
 0.045966;-0.000000;-0.667884;,
 0.014204;0.043716;-0.667884;,
 0.014204;0.043716;-0.667884;,
 -0.037187;0.027018;-0.667884;,
 -0.037187;0.027018;-0.667884;,
 -0.037187;-0.027018;-0.667884;,
 -0.037187;-0.027018;-0.667884;,
 0.014204;-0.043716;-0.667884;,
 0.014204;-0.043716;-0.667884;,
 0.014204;-0.043716;-0.667884;,
 0.024239;-0.074601;0.498255;,
 -0.037187;-0.027018;-0.667884;,
 -0.063460;-0.046106;0.498255;,
 -0.037187;0.027018;-0.667884;,
 -0.063460;0.046106;0.498255;,
 0.014204;0.043716;-0.667884;,
 0.024239;0.074601;0.498255;,
 0.045966;-0.000000;-0.667884;,
 0.078440;-0.000000;0.498255;;

 6;
 4;3,5,15,17;,
 4;9,1,19,11;,
 4;4,7,13,15;,
 4;6,8,11,13;,
 4;0,2,17,19;,
 5;18,10,12,14,16;;

 MeshMaterialList {
  2;
  6;
  0,
  0,
  0,
  0,
  0,
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
}
 MeshNormals {
  20;
  0.839961;0.000000;-0.542647;,
  0.839961;0.000000;-0.542647;,
  0.259562;0.798850;-0.542647;,
  0.259562;0.798850;-0.542647;,
  -0.679543;0.493717;-0.542647;,
  -0.679543;0.493717;-0.542647;,
  -0.679543;-0.493717;-0.542647;,
  -0.679543;-0.493717;-0.542647;,
  0.259562;-0.798850;-0.542647;,
  0.259562;-0.798850;-0.542647;,
  0.259562;-0.798850;-0.542647;,
  0.308897;-0.950688;-0.027837;,
  -0.679543;-0.493717;-0.542647;,
  -0.808703;-0.587558;-0.027837;,
  -0.679543;0.493717;-0.542647;,
  -0.808703;0.587557;-0.027837;,
  0.259562;0.798850;-0.542647;,
  0.308897;0.950688;-0.027837;,
  0.839961;0.000000;-0.542647;,
  0.999612;0.000000;-0.027837;;

  6;
  4;3,5,15,17;,
  4;9,1,19,11;,
  4;4,7,13,15;,
  4;6,8,11,13;,
  4;0,2,17,19;,
  5;18,10,12,14,16;;
 }
 MeshTextureCoords { 
 20;
 0.869979;0.306704;,
 0.869979;0.306704;,
 0.778362;0.306940;,
 0.778362;0.306940;,
 0.813357;0.306850;,
 0.813357;0.306850;,
 0.926601;0.306559;,
 0.926601;0.306559;,
 0.961596;0.306469;,
 0.961596;0.306469;,
 0.687389;0.166272;,
 0.963544;0.846286;,
 0.658945;0.166194;,
 0.928550;0.846376;,
 0.650997;0.141577;,
 0.815305;0.846667;,
 0.674529;0.126441;,
 0.780311;0.846757;,
 0.697020;0.141704;,
 0.871927;0.846522;;
 }
}
Frame frm-lwepemt {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,-1.000000,0.000000,0.000000,
0.004761,-0.007164,-0.665743,1.000000;;
 }
Mesh lwepemt {
 4;
 -0.003771;-0.001333;0.000000;,
 0.000000;0.004000;0.000000;,
 0.001886;-0.001333;0.003266;,
 0.001886;-0.001333;-0.003266;;

 4;
 3;2,1,0;,
 3;3,0,1;,
 3;0,3,2;,
 3;1,2,3;;

 MeshMaterialList {
  1;
  4;
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "acs64.ppm";
 }
 }
}
 MeshNormals {
  4;
  -0.942809;-0.333333;0.000000;,
  0.000000;1.000000;-0.000000;,
  0.471404;-0.333333;0.816497;,
  0.471404;-0.333333;-0.816497;;

  4;
  3;2,1,0;,
  3;3,0,1;,
  3;0,3,2;,
  3;1,2,3;;
 }
 MeshTextureCoords { 
 4;
 0.000000;1.000000;,
 0.000000;1.000000;,
 0.000000;1.000000;,
 0.000000;1.000000;;
 }
}
}
}
}
Frame frm-cube1 {
  FrameTransformMatrix {
0.000000,0.000000,0.150000,0.000000,
0.000000,0.150000,0.000000,0.000000,
-0.150000,0.000000,0.000000,0.000000,
0.000000,-0.749113,0.000000,1.000000;;
 }
Mesh cube1 {
 10;
 -4.415997;5.047861;-0.000001;,
 4.415997;5.047861;0.000000;,
 2.207999;5.047861;-3.824365;,
 2.207999;5.047861;3.824366;,
 1.515121;-11.560655;-1.515121;,
 1.515121;-11.560655;1.515121;,
 -2.207998;5.047861;-3.824366;,
 -2.207999;5.047861;3.824366;,
 -1.515121;-11.560655;-1.515121;,
 -1.515121;-11.560655;1.515121;;

 10;
 3;0,6,8;,
 4;6,2,4,8;,
 3;4,2,1;,
 4;3,7,9,5;,
 6;3,1,2,6,0,7;,
 3;1,3,5;,
 3;5,4,1;,
 3;9,7,0;,
 3;8,9,0;,
 4;8,4,5,9;;

 MeshMaterialList {
  1;
  10;
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
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
}
 MeshNormals {
  10;
  -0.981424;0.191851;-0.000000;,
  0.981424;0.191851;0.000000;,
  0.470828;0.341821;-0.813314;,
  0.470828;0.341821;0.813314;,
  0.742562;-0.166303;-0.648803;,
  0.742562;-0.166303;0.648803;,
  -0.470828;0.341821;-0.813314;,
  -0.470828;0.341821;0.813314;,
  -0.742562;-0.166303;-0.648803;,
  -0.742562;-0.166303;0.648803;;

  10;
  3;0,6,8;,
  4;6,2,4,8;,
  3;4,2,1;,
  4;3,7,9,5;,
  6;3,1,2,6,0,7;,
  3;1,3,5;,
  3;5,4,1;,
  3;9,7,0;,
  3;8,9,0;,
  4;8,4,5,9;;
 }
 MeshTextureCoords { 
 10;
 0.758967;0.366294;,
 0.975408;0.366294;,
 0.921298;0.366294;,
 0.921298;0.366294;,
 0.904318;0.677880;,
 0.904318;0.677880;,
 0.813077;0.366294;,
 0.813077;0.366294;,
 0.830057;0.677880;,
 0.830057;0.677880;;
 }
}
Frame frm-cube2 {
  FrameTransformMatrix {
0.000000,0.000000,-0.831330,0.000000,
0.000000,0.182710,0.000000,0.000000,
0.182710,0.000000,0.000000,0.000000,
0.000000,-11.687669,0.000000,1.000000;;
 }
Mesh cube2 {
 6;
 0.000000;5.000000;5.000000;,
 0.000000;-5.000000;5.000000;,
 0.000000;-5.000000;-5.000000;,
 0.000000;5.000000;-5.000000;,
 8.851231;7.398666;-1.340000;,
 -8.851231;7.398666;-1.340000;;

 8;
 3;5,3,2;,
 3;2,3,4;,
 3;4,3,0;,
 3;4,0,1;,
 3;4,1,2;,
 3;0,3,5;,
 3;2,1,5;,
 3;5,1,0;;

 MeshMaterialList {
  1;
  8;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;
Material {
 0.700000;0.700000;0.700000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs64.ppm";
 }
 }
}
 MeshNormals {
  6;
  0.000000;0.775938;0.630810;,
  0.000000;-0.581459;0.813575;,
  0.000000;-0.502380;-0.864647;,
  0.000000;0.707107;-0.707107;,
  0.966953;0.244909;-0.070858;,
  -0.966953;0.244909;-0.070858;;

  8;
  3;5,3,2;,
  3;2,3,4;,
  3;4,3,0;,
  3;4,0,1;,
  3;4,1,2;,
  3;0,3,5;,
  3;2,1,5;,
  3;5,1,0;;
 }
 MeshTextureCoords { 
 6;
 0.476563;0.153696;,
 0.476563;0.223008;,
 0.476563;0.223008;,
 0.476563;0.153696;,
 0.730469;0.141927;,
 0.730469;0.141927;;
 }
}
}
}
}
AnimationSet {
 Animation anim-rwingzz {
  {frm-rwingzz}
  AnimationKey {
  1;
  2;
  1; 3; 1.270000, 1.270000, 1.270000;;,
  2; 3; 1.270000, 1.270000, 1.270000;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; -0.515974, 0.318904, 0.284941;;,
  2; 3; -0.515974, 0.318904, 0.284941;;;
  }
 }
 Animation anim-cyl1 {
  {frm-cyl1}
  AnimationKey {
  1;
  2;
  1; 3; 0.787402, 0.787402, 0.787402;;,
  2; 3; 0.787402, 0.787402, 0.787402;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; -0.572470, -0.001277, -0.529720;;,
  2; 3; -0.572470, -0.001277, -0.529720;;;
  }
 }
 Animation anim-rwepemt {
  {frm-rwepemt}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, 0.707107, 0.000000, 0.000000;;,
  2; 4; 0.707107, 0.707107, 0.000000, 0.000000;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; -0.001403, -0.007164, -0.665743;;,
  2; 3; -0.001403, -0.007164, -0.665743;;;
  }
 }
 Animation anim-lwingzz {
  {frm-lwingzz}
  AnimationKey {
  0;
  2;
  1; 4; 0.000000, 0.000000, 1.000000, -0.000000;;,
  2; 4; 0.000000, 0.000000, 1.000000, -0.000000;;;
  }
  AnimationKey {
  1;
  2;
  1; 3; 1.270000, 1.270000, 1.270000;;,
  2; 3; 1.270000, 1.270000, 1.270000;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.515974, 0.318904, 0.284941;;,
  2; 3; 0.515974, 0.318904, 0.284941;;;
  }
 }
 Animation anim-antenn1 {
  {frm-antenn1}
  AnimationKey {
  2;
  2;
  1; 3; -0.532229, 0.096097, -0.004198;;,
  2; 3; -0.532229, 0.096097, -0.004198;;;
  }
 }
 Animation anim-antenn2 {
  {frm-antenn2}
  AnimationKey {
  0;
  2;
  1; 4; 0.000000, 0.000000, 1.000000, -0.000000;;,
  2; 4; 0.000000, 0.000000, 1.000000, -0.000000;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; -0.001758, 0.286162, -0.000725;;,
  2; 3; -0.001758, 0.286162, -0.000725;;;
  }
 }
 Animation anim-antenn3 {
  {frm-antenn3}
  AnimationKey {
  2;
  2;
  1; 3; -0.000000, 0.266898, -0.000000;;,
  2; 3; -0.000000, 0.266898, -0.000000;;;
  }
 }
 Animation anim-cyl2 {
  {frm-cyl2}
  AnimationKey {
  0;
  2;
  1; 4; 0.000000, 0.000000, 1.000000, -0.000000;;,
  2; 4; 0.000000, 0.000000, 1.000000, -0.000000;;;
  }
  AnimationKey {
  1;
  2;
  1; 3; 0.787402, 0.787402, 0.787402;;,
  2; 3; 0.787402, 0.787402, 0.787402;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; -0.566837, -0.001277, 0.529720;;,
  2; 3; -0.566837, -0.001277, 0.529720;;;
  }
 }
 Animation anim-lwepemt {
  {frm-lwepemt}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, 0.707107, 0.000000, 0.000000;;,
  2; 4; 0.707107, 0.707107, 0.000000, 0.000000;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.004761, -0.007164, -0.665743;;,
  2; 3; 0.004761, -0.007164, -0.665743;;;
  }
 }
 Animation anim-cube1 {
  {frm-cube1}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, 0.000000, -0.707107, 0.000000;;,
  2; 4; 0.707107, 0.000000, -0.707107, 0.000000;;;
  }
  AnimationKey {
  1;
  2;
  1; 3; 0.150000, 0.150000, 0.150000;;,
  2; 3; 0.150000, 0.150000, 0.150000;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, -0.749113, 0.000000;;,
  2; 3; 0.000000, -0.749113, 0.000000;;;
  }
 }
 Animation anim-cube2 {
  {frm-cube2}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, 0.000000, 0.707107, 0.000000;;,
  2; 4; 0.707107, 0.000000, 0.707107, 0.000000;;;
  }
  AnimationKey {
  1;
  2;
  1; 3; 0.831330, 0.182710, 0.182710;;,
  2; 3; 0.831330, 0.182710, 0.182710;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, -11.687669, 0.000000;;,
  2; 3; 0.000000, -11.687669, 0.000000;;;
  }
 }
}

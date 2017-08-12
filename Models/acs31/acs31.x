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

Frame frm-acs31 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Frame frm-fuselg1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh fuselg1 {
 20;
 -0.002282;0.104208;-0.052210;,
 -0.002282;0.016345;-0.073386;,
 -0.002282;-0.012453;0.073386;,
 0.002282;-0.012453;0.073386;,
 0.002282;0.104208;0.073386;,
 0.002282;-0.012453;0.073386;,
 0.002282;0.104208;-0.052210;,
 0.002282;-0.012453;-0.052210;,
 0.002282;-0.104208;-0.052210;,
 0.002282;0.104208;-0.073386;,
 0.002282;0.016345;-0.073386;,
 -0.002282;-0.104208;0.073386;,
 0.002282;-0.104208;0.073386;,
 -0.002282;-0.104208;-0.052210;,
 -0.002282;-0.012453;0.073386;,
 -0.002282;0.104208;0.073386;,
 -0.002282;0.104208;-0.073386;,
 -0.002282;0.016345;-0.073386;,
 -0.002282;-0.012453;-0.052210;,
 -0.002282;0.104208;-0.052210;;

 24;
 3;1,18,0;,
 3;16,17,19;,
 3;15,0,18;,
 3;2,15,18;,
 3;11,13,8;,
 3;12,11,8;,
 3;2,18,13;,
 3;11,2,13;,
 3;9,10,1;,
 3;16,9,1;,
 3;4,6,0;,
 3;15,4,0;,
 3;9,6,7;,
 3;10,9,7;,
 3;3,7,6;,
 3;4,3,6;,
 3;16,0,6;,
 3;9,16,6;,
 3;12,8,7;,
 3;3,12,7;,
 3;15,2,3;,
 3;4,15,3;,
 3;12,5,14;,
 3;11,12,2;;

 MeshMaterialList {
  1;
  24;
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
 0.400000;0.400000;0.400000;;
 TextureFilename {
  "acs31.bmp";
 }
 }
}
 MeshNormals {
  20;
  -0.707107;0.707107;0.000000;,
  -0.707107;0.000000;-0.707107;,
  -0.707107;0.000000;0.707107;,
  0.707107;0.000000;0.707107;,
  0.408248;0.816497;0.408248;,
  0.707107;0.000000;0.707107;,
  0.707107;0.707107;0.000000;,
  1.000000;0.000000;0.000000;,
  0.447214;-0.894427;0.000000;,
  0.666667;0.333333;-0.666667;,
  0.707107;0.000000;-0.707107;,
  -0.408248;-0.816497;0.408248;,
  0.666667;-0.333333;0.666667;,
  -0.894427;-0.447214;0.000000;,
  -0.707107;0.000000;0.707107;,
  -0.666667;0.333333;0.666667;,
  -0.408248;0.816497;-0.408248;,
  -0.707107;0.000000;-0.707107;,
  -1.000000;0.000000;0.000000;,
  -0.707107;0.707107;0.000000;;

  24;
  3;1,18,0;,
  3;16,17,19;,
  3;15,0,18;,
  3;2,15,18;,
  3;11,13,8;,
  3;12,11,8;,
  3;2,18,13;,
  3;11,2,13;,
  3;9,10,1;,
  3;16,9,1;,
  3;4,6,0;,
  3;15,4,0;,
  3;9,6,7;,
  3;10,9,7;,
  3;3,7,6;,
  3;4,3,6;,
  3;16,0,6;,
  3;9,16,6;,
  3;12,8,7;,
  3;3,12,7;,
  3;15,2,3;,
  3;4,15,3;,
  3;12,5,14;,
  3;11,12,2;;
 }
 MeshTextureCoords {
 20;
 0.106204;0.014236;,
 0.015625;0.354218;,
 0.986057;0.412957;,
 0.986057;0.412957;,
 0.984375;0.015625;,
 0.984375;0.413574;,
 0.106204;0.014236;,
 0.107886;0.410643;,
 0.106204;0.725174;,
 0.015625;0.015625;,
 0.015625;0.354218;,
 0.984375;0.726562;,
 0.984375;0.726562;,
 0.106204;0.725174;,
 0.984375;0.413574;,
 0.984375;0.015625;,
 0.015625;0.015625;,
 0.015625;0.315338;,
 0.107886;0.410643;,
 0.155398;0.015625;;
 }
}
Frame frm-fuselg2 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,-0.112971,-0.022948,1.000000;;
 }
Mesh fuselg2 {
 8;
 0.001826;0.008769;-0.061258;,
 0.001826;0.008769;0.037847;,
 0.001826;-0.008769;-0.061258;,
 0.001826;-0.008769;0.037847;,
 -0.001826;0.008769;-0.061258;,
 -0.001826;0.008769;0.037847;,
 -0.001826;-0.008769;-0.061258;,
 -0.001826;-0.008769;0.037847;;

 10;
 3;4,6,7;,
 3;5,4,7;,
 3;0,2,6;,
 3;4,0,6;,
 3;1,3,2;,
 3;0,1,2;,
 3;5,7,3;,
 3;1,5,3;,
 3;6,2,3;,
 3;7,6,3;;

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
 0.600000;0.600000;0.600000;;
 TextureFilename {
  "acs31.bmp";
 }
 }
}
 MeshNormals {
  8;
  0.447214;0.000000;-0.894427;,
  0.894427;0.000000;0.447214;,
  0.816497;-0.408248;-0.408248;,
  0.333333;-0.666667;0.666667;,
  -0.894427;0.000000;-0.447214;,
  -0.447214;0.000000;0.894427;,
  -0.333333;-0.666667;-0.666667;,
  -0.816497;-0.408248;0.408248;;

  10;
  3;4,6,7;,
  3;5,4,7;,
  3;0,2,6;,
  3;4,0,6;,
  3;1,3,2;,
  3;0,1,2;,
  3;5,7,3;,
  3;1,5,3;,
  3;6,2,3;,
  3;7,6,3;;
 }
 MeshTextureCoords {
 8;
 0.937500;0.765625;,
 0.187500;0.765625;,
 0.937500;0.859375;,
 0.187500;0.859375;,
 0.937500;0.765625;,
 0.187500;0.765625;,
 0.937500;0.859375;,
 0.187500;0.859375;;
 }
}
}
Frame frm-lignt1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.003512,0.091827,0.058665,1.000000;;
 }
Mesh lignt1 {
 8;
 0.001282;0.003390;-0.003390;,
 0.001282;0.003390;0.003390;,
 0.001282;-0.003390;-0.003390;,
 0.001282;-0.003390;0.003390;,
 -0.001282;0.003390;-0.003390;,
 -0.001282;0.003390;0.003390;,
 -0.001282;-0.003390;-0.003390;,
 -0.001282;-0.003390;0.003390;;

 10;
 3;0,4,5;,
 3;1,0,5;,
 3;0,2,6;,
 3;4,0,6;,
 3;1,3,2;,
 3;0,1,2;,
 3;5,7,3;,
 3;1,5,3;,
 3;6,2,3;,
 3;7,6,3;;

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
 1.000000;0.000000;0.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 1.000000;0.000000;0.000000;;
 TextureFilename {
  "acs31.bmp";
 }
 }
}
 MeshNormals {
  8;
  0.333333;0.666667;-0.666667;,
  0.816497;0.408248;0.408248;,
  0.816497;-0.408248;-0.408248;,
  0.333333;-0.666667;0.666667;,
  0.000000;0.707107;-0.707107;,
  0.000000;0.707107;0.707107;,
  0.000000;-0.707107;-0.707107;,
  0.000000;-0.707107;0.707107;;

  10;
  3;0,4,5;,
  3;1,0,5;,
  3;0,2,6;,
  3;4,0,6;,
  3;1,3,2;,
  3;0,1,2;,
  3;5,7,3;,
  3;1,5,3;,
  3;6,2,3;,
  3;7,6,3;;
 }
 MeshTextureCoords {
 8;
 0.968750;0.890625;,
 0.796875;0.890625;,
 0.968750;0.984375;,
 0.796875;0.984375;,
 0.968750;0.890625;,
 0.796875;0.890625;,
 0.968750;0.984375;,
 0.796875;0.984375;;
 }
}
Frame frm-SS1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.599809,0.000000,
-0.001051,-0.000014,-0.000045,1.000000;;
 }
Mesh SS1 {
 17;
 0.000000;-0.005725;-0.005375;,
 0.000000;0.000000;-0.007790;,
 0.004383;-0.004359;-0.004093;,
 0.004383;0.000000;-0.005931;,
 0.000000;0.005725;-0.005375;,
 0.000000;0.008297;0.000000;,
 0.004383;0.004359;-0.004093;,
 0.004383;0.006318;0.000000;,
 0.000000;-0.005725;0.005375;,
 0.000000;-0.008297;0.000000;,
 0.004383;-0.004359;0.004093;,
 0.004383;-0.006318;0.000000;,
 0.000000;0.005725;0.005375;,
 0.000000;0.000000;0.007790;,
 0.007411;0.000000;0.000000;,
 0.004383;0.004359;0.004093;,
 0.004383;0.000000;0.005931;;

 30;
 3;14,15,16;,
 3;13,16,15;,
 3;12,13,15;,
 3;14,10,11;,
 3;9,11,10;,
 3;8,9,10;,
 3;14,6,7;,
 3;5,7,6;,
 3;4,5,6;,
 3;14,2,3;,
 3;1,3,2;,
 3;0,1,2;,
 3;14,3,6;,
 3;4,6,3;,
 3;1,4,3;,
 3;14,7,15;,
 3;12,15,7;,
 3;5,12,7;,
 3;14,16,10;,
 3;8,10,16;,
 3;13,8,16;,
 3;14,11,2;,
 3;0,2,11;,
 3;9,0,11;,
 3;0,9,8;,
 3;1,0,8;,
 3;4,1,8;,
 3;5,4,8;,
 3;12,5,8;,
 3;13,12,8;;

 MeshMaterialList {
  1;
  30;
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
 1.000000;0.000000;0.000000;0.500000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 1.000000;0.000000;0.000000;;
 }
}
 MeshNormals {
  17;
  -0.285847;-0.742631;-0.605632;,
  -0.290088;-0.133243;-0.947679;,
  0.631455;-0.478827;-0.609910;,
  0.631710;0.080484;-0.771015;,
  -0.289756;0.567764;-0.770510;,
  -0.273128;0.949968;-0.151533;,
  0.633931;0.582794;-0.508412;,
  0.651322;0.753465;0.089840;,
  -0.868138;-0.294425;0.399563;,
  0.080803;-0.984286;0.157008;,
  0.633930;-0.582794;0.508412;,
  0.651322;-0.753465;-0.089840;,
  -0.285848;0.742631;0.605632;,
  0.058311;0.138993;0.988575;,
  1.000000;0.000000;0.000000;,
  0.631454;0.478827;0.609910;,
  0.631710;-0.080484;0.771016;;

  30;
  3;14,15,16;,
  3;13,16,15;,
  3;12,13,15;,
  3;14,10,11;,
  3;9,11,10;,
  3;8,9,10;,
  3;14,6,7;,
  3;5,7,6;,
  3;4,5,6;,
  3;14,2,3;,
  3;1,3,2;,
  3;0,1,2;,
  3;14,3,6;,
  3;4,6,3;,
  3;1,4,3;,
  3;14,7,15;,
  3;12,15,7;,
  3;5,12,7;,
  3;14,16,10;,
  3;8,10,16;,
  3;13,8,16;,
  3;14,11,2;,
  3;0,2,11;,
  3;9,0,11;,
  3;0,9,8;,
  3;1,0,8;,
  3;4,1,8;,
  3;5,4,8;,
  3;12,5,8;,
  3;13,12,8;;
 }
 MeshTextureCoords {
 17;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
}
Frame frm-light2 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.003512,0.091827,0.041762,1.000000;;
 }
Mesh light2 {
 8;
 0.001282;0.003390;-0.003390;,
 0.001282;0.003390;0.003390;,
 0.001282;-0.003390;-0.003390;,
 0.001282;-0.003390;0.003390;,
 -0.001282;0.003390;-0.003390;,
 -0.001282;0.003390;0.003390;,
 -0.001282;-0.003390;-0.003390;,
 -0.001282;-0.003390;0.003390;;

 10;
 3;0,4,5;,
 3;1,0,5;,
 3;0,2,6;,
 3;4,0,6;,
 3;1,3,2;,
 3;0,1,2;,
 3;5,7,3;,
 3;1,5,3;,
 3;6,2,3;,
 3;7,6,3;;

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
 1.000000;0.000000;0.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 1.000000;0.000000;0.000000;;
 TextureFilename {
  "acs31.bmp";
 }
 }
}
 MeshNormals {
  8;
  0.333333;0.666667;-0.666667;,
  0.816497;0.408248;0.408248;,
  0.816497;-0.408248;-0.408248;,
  0.333333;-0.666667;0.666667;,
  0.000000;0.707107;-0.707107;,
  0.000000;0.707107;0.707107;,
  0.000000;-0.707107;-0.707107;,
  0.000000;-0.707107;0.707107;;

  10;
  3;0,4,5;,
  3;1,0,5;,
  3;0,2,6;,
  3;4,0,6;,
  3;1,3,2;,
  3;0,1,2;,
  3;5,7,3;,
  3;1,5,3;,
  3;6,2,3;,
  3;7,6,3;;
 }
 MeshTextureCoords {
 8;
 0.781250;0.890625;,
 0.546875;0.890625;,
 0.781250;0.984375;,
 0.546875;0.984375;,
 0.781250;0.890625;,
 0.546875;0.890625;,
 0.781250;0.984375;,
 0.546875;0.984375;;
 }
}
Frame frm-SS2 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.599809,0.000000,
-0.001051,-0.000014,0.000057,1.000000;;
 }
Mesh SS2 {
 17;
 0.000000;-0.005725;-0.005823;,
 0.000000;0.000000;-0.008439;,
 0.004383;-0.004359;-0.004433;,
 0.004383;0.000000;-0.006425;,
 0.000000;0.005725;-0.005823;,
 0.000000;0.008297;0.000000;,
 0.004383;0.004359;-0.004433;,
 0.004383;0.006318;0.000000;,
 0.000000;-0.005725;0.005823;,
 0.000000;-0.008297;0.000000;,
 0.004383;-0.004359;0.004433;,
 0.004383;-0.006318;0.000000;,
 0.000000;0.005725;0.005823;,
 0.000000;0.000000;0.008439;,
 0.007411;0.000000;0.000000;,
 0.004383;0.004359;0.004433;,
 0.004383;0.000000;0.006425;;

 30;
 3;14,15,16;,
 3;13,16,15;,
 3;12,13,15;,
 3;14,10,11;,
 3;9,11,10;,
 3;8,9,10;,
 3;14,6,7;,
 3;5,7,6;,
 3;4,5,6;,
 3;14,2,3;,
 3;1,3,2;,
 3;0,1,2;,
 3;14,3,6;,
 3;4,6,3;,
 3;1,4,3;,
 3;14,7,15;,
 3;12,15,7;,
 3;5,12,7;,
 3;14,16,10;,
 3;8,10,16;,
 3;13,8,16;,
 3;14,11,2;,
 3;0,2,11;,
 3;9,0,11;,
 3;0,9,8;,
 3;1,0,8;,
 3;4,1,8;,
 3;5,4,8;,
 3;12,5,8;,
 3;13,12,8;;

 MeshMaterialList {
  1;
  30;
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
 1.000000;0.000000;0.000000;0.500000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 1.000000;0.000000;0.000000;;
 }
}
 MeshNormals {
  17;
  -0.276975;-0.763293;-0.583669;,
  -0.267879;-0.145071;-0.952468;,
  0.644899;-0.490984;-0.585696;,
  0.655713;0.085748;-0.750125;,
  -0.275885;0.593872;-0.755780;,
  -0.272596;0.951865;-0.140161;,
  0.644225;0.592900;-0.483160;,
  0.650508;0.754920;0.083279;,
  -0.867593;-0.307242;0.391006;,
  0.081505;-0.986040;0.145194;,
  0.644225;-0.592900;0.483160;,
  0.650508;-0.754920;-0.083279;,
  -0.276975;0.763293;0.583668;,
  0.087720;0.149993;0.984788;,
  1.000000;0.000000;0.000000;,
  0.644899;0.490984;0.585696;,
  0.655713;-0.085748;0.750125;;

  30;
  3;14,15,16;,
  3;13,16,15;,
  3;12,13,15;,
  3;14,10,11;,
  3;9,11,10;,
  3;8,9,10;,
  3;14,6,7;,
  3;5,7,6;,
  3;4,5,6;,
  3;14,2,3;,
  3;1,3,2;,
  3;0,1,2;,
  3;14,3,6;,
  3;4,6,3;,
  3;1,4,3;,
  3;14,7,15;,
  3;12,15,7;,
  3;5,12,7;,
  3;14,16,10;,
  3;8,10,16;,
  3;13,8,16;,
  3;14,11,2;,
  3;0,2,11;,
  3;9,0,11;,
  3;0,9,8;,
  3;1,0,8;,
  3;4,1,8;,
  3;5,4,8;,
  3;12,5,8;,
  3;13,12,8;;
 }
 MeshTextureCoords {
 17;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
}
}
}
AnimationSet {
 Animation anim-fuselg2 {
  {frm-fuselg2}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, -0.112971, 0.022948;;,
  60; 3; 0.000000, -0.112971, 0.022948;;;
  }
 }
 Animation anim-lignt1 {
  {frm-lignt1}
  AnimationKey {
  2;
  2;
  1; 3; 0.003512, 0.091827, -0.058665;;,
  60; 3; 0.003512, 0.091827, -0.058665;;;
  }
 }
 Animation anim-SS1 {
  {frm-SS1}
  AnimationKey {
  1;
  28;
  1; 3; 1.000000, 1.000000, 1.599809;;,
  2; 3; 0.300000, 0.300000, 0.310001;;,
  11; 3; 0.300000, 0.300000, 0.310001;;,
  12; 3; 0.368659, 0.368659, 0.436511;;,
  13; 3; 0.541696, 0.541696, 0.755344;;,
  14; 3; 0.750453, 0.750453, 1.139998;;,
  15; 3; 0.926149, 0.926149, 1.463733;;,
  16; 3; 1.000000, 1.000000, 1.599809;;,
  17; 3; 0.300000, 0.300000, 0.310001;;,
  26; 3; 0.300000, 0.300000, 0.310001;;,
  27; 3; 0.368659, 0.368659, 0.436510;;,
  28; 3; 0.541696, 0.541696, 0.755344;;,
  29; 3; 0.750453, 0.750453, 1.139998;;,
  30; 3; 0.926149, 0.926149, 1.463733;;,
  31; 3; 1.000000, 1.000000, 1.599809;;,
  32; 3; 0.300000, 0.300000, 0.310001;;,
  41; 3; 0.300000, 0.300000, 0.310001;;,
  42; 3; 0.368659, 0.368659, 0.436510;;,
  43; 3; 0.541695, 0.541695, 0.755343;;,
  44; 3; 0.750454, 0.750454, 1.139998;;,
  45; 3; 0.926149, 0.926149, 1.463733;;,
  46; 3; 1.000000, 1.000000, 1.599809;;,
  47; 3; 0.300000, 0.300000, 0.310001;;,
  56; 3; 0.300000, 0.300000, 0.310001;;,
  57; 3; 0.368659, 0.368659, 0.436510;;,
  58; 3; 0.541695, 0.541695, 0.755343;;,
  59; 3; 0.750454, 0.750454, 1.139998;;,
  60; 3; 0.926149, 0.926149, 1.463733;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; -0.001051, -0.000014, 0.000045;;,
  60; 3; -0.001051, -0.000014, 0.000045;;;
  }
 }
 Animation anim-light2 {
  {frm-light2}
  AnimationKey {
  2;
  2;
  1; 3; 0.003512, 0.091827, -0.041762;;,
  60; 3; 0.003512, 0.091827, -0.041762;;;
  }
 }
 Animation anim-SS2 {
  {frm-SS2}
  AnimationKey {
  1;
  28;
  1; 3; 1.000000, 1.000000, 1.599809;;,
  2; 3; 0.300000, 0.300000, 0.310001;;,
  11; 3; 0.300000, 0.300000, 0.310001;;,
  12; 3; 0.368659, 0.368659, 0.436511;;,
  13; 3; 0.541696, 0.541696, 0.755344;;,
  14; 3; 0.750453, 0.750453, 1.139998;;,
  15; 3; 0.926149, 0.926149, 1.463733;;,
  16; 3; 1.000000, 1.000000, 1.599809;;,
  17; 3; 0.300000, 0.300000, 0.310001;;,
  26; 3; 0.300000, 0.300000, 0.310001;;,
  27; 3; 0.368659, 0.368659, 0.436510;;,
  28; 3; 0.541696, 0.541696, 0.755344;;,
  29; 3; 0.750453, 0.750453, 1.139998;;,
  30; 3; 0.926149, 0.926149, 1.463733;;,
  31; 3; 1.000000, 1.000000, 1.599809;;,
  32; 3; 0.300000, 0.300000, 0.310001;;,
  41; 3; 0.300000, 0.300000, 0.310001;;,
  42; 3; 0.368659, 0.368659, 0.436510;;,
  43; 3; 0.541695, 0.541695, 0.755343;;,
  44; 3; 0.750454, 0.750454, 1.139998;;,
  45; 3; 0.926149, 0.926149, 1.463733;;,
  46; 3; 1.000000, 1.000000, 1.599809;;,
  47; 3; 0.300000, 0.300000, 0.310001;;,
  56; 3; 0.300000, 0.300000, 0.310001;;,
  57; 3; 0.368659, 0.368659, 0.436510;;,
  58; 3; 0.541695, 0.541695, 0.755343;;,
  59; 3; 0.750454, 0.750454, 1.139998;;,
  60; 3; 0.926149, 0.926149, 1.463733;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; -0.001051, -0.000014, -0.000057;;,
  60; 3; -0.001051, -0.000014, -0.000057;;;
  }
 }
  }
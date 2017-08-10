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

Frame frm-acs56 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Frame frm-wepbar1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000783,-0.022099,1.000000;;
 }
Mesh wepbar1 {
 20;
 -0.020395;-0.020395;-0.353210;,
 -0.020395;0.020395;-0.353210;,
 -0.020395;0.020395;-0.353210;,
 0.020395;-0.020395;-0.353210;,
 0.020395;-0.020395;-0.353210;,
 0.020395;0.020395;-0.353210;,
 -0.036499;-0.036499;-0.022084;,
 -0.036499;0.036499;-0.022084;,
 -0.036499;0.036499;-0.022084;,
 0.036499;-0.036499;-0.022084;,
 0.036499;-0.036499;-0.022084;,
 0.036499;0.036499;-0.022084;,
 0.036499;0.036499;-0.022084;,
 0.036499;-0.036499;-0.022084;,
 -0.036499;0.036499;-0.022084;,
 -0.036499;-0.036499;-0.022084;,
 0.020395;0.020395;-0.353210;,
 0.020395;-0.020395;-0.353210;,
 -0.020395;0.020395;-0.353210;,
 -0.020395;-0.020395;-0.353210;;

 12;
 3;10,4,5;,
 3;11,10,5;,
 3;11,5,2;,
 3;8,11,2;,
 3;7,1,0;,
 3;6,7,0;,
 3;6,0,3;,
 3;9,6,3;,
 3;15,13,12;,
 3;14,15,12;,
 3;18,16,17;,
 3;19,18,17;;

 MeshMaterialList {
  4;
  12;
  0,
  0,
  0,
  0,
  1,
  1,
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
 0.600000;0.600000;0.600000;;
 TextureFilename {
  "acs56c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.500000;0.500000;0.500000;;
 TextureFilename {
  "acs56c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.400000;0.400000;0.400000;;
 TextureFilename {
  "acs56c.bmp";
 }
 }
}
 MeshNormals {
  20;
  -0.795822;-0.397911;-0.456436;,
  -0.322496;0.644993;-0.692806;,
  -0.322496;0.644993;-0.692806;,
  0.322496;-0.644993;-0.692806;,
  0.322496;-0.644993;-0.692806;,
  0.795822;0.397911;-0.456436;,
  -0.344082;-0.688165;0.638777;,
  -0.835402;0.417701;0.357253;,
  -0.835402;0.417701;0.357253;,
  0.835402;-0.417701;0.357253;,
  0.835402;-0.417701;0.357253;,
  0.344082;0.688165;0.638777;,
  0.344082;0.688165;0.638777;,
  0.835402;-0.417701;0.357253;,
  -0.835402;0.417701;0.357253;,
  -0.344082;-0.688165;0.638777;,
  0.795822;0.397911;-0.456436;,
  0.322496;-0.644993;-0.692806;,
  -0.322496;0.644993;-0.692806;,
  -0.795822;-0.397911;-0.456436;;

  12;
  3;10,4,5;,
  3;11,10,5;,
  3;11,5,2;,
  3;8,11,2;,
  3;7,1,0;,
  3;6,7,0;,
  3;6,0,3;,
  3;9,6,3;,
  3;15,13,12;,
  3;14,15,12;,
  3;18,16,17;,
  3;19,18,17;;
 }
 MeshTextureCoords {
 20;
 0.968750;0.144531;,
 0.968750;0.083333;,
 0.968750;0.020833;,
 0.968750;0.218750;,
 0.971354;0.145833;,
 0.968750;0.082031;,
 0.022135;0.162760;,
 0.023438;0.059896;,
 0.023438;0.023438;,
 0.023438;0.218750;,
 0.020833;0.169271;,
 0.023438;0.055990;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.562500;0.250000;,
 0.562500;0.367188;,
 0.453125;0.250000;,
 0.453125;0.367188;;
 }
}
Frame frm-wepbar3 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000231,0.130884,1.000000;;
 }
Mesh wepbar3 {
 20;
 -0.048939;-0.049133;0.020117;,
 -0.048939;-0.049519;-0.020233;,
 -0.048939;0.047767;0.020117;,
 -0.048939;0.047767;0.020117;,
 -0.048939;0.048359;-0.020233;,
 -0.048939;0.048359;-0.020233;,
 0.048939;-0.049133;0.020117;,
 0.048939;-0.049133;0.020117;,
 0.048939;-0.049519;-0.020233;,
 0.048939;-0.049519;-0.020233;,
 0.048939;0.047767;0.020117;,
 0.048939;0.048359;-0.020233;,
 0.048939;0.048359;-0.020233;,
 0.048939;0.047767;0.020117;,
 0.048939;-0.049519;-0.020233;,
 0.048939;-0.049133;0.020117;,
 -0.048939;0.048359;-0.020233;,
 -0.048939;0.047767;0.020117;,
 -0.048939;-0.049519;-0.020233;,
 -0.048939;-0.049133;0.020117;;

 12;
 3;5,1,0;,
 3;3,5,0;,
 3;1,14,15;,
 3;0,1,15;,
 3;10,7,8;,
 3;12,10,8;,
 3;12,16,17;,
 3;10,12,17;,
 3;11,9,18;,
 3;4,11,18;,
 3;2,19,6;,
 3;13,2,6;;

 MeshMaterialList {
  2;
  12;
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
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.300000;0.300000;0.300000;;
 TextureFilename {
  "acs56c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.200000;0.200000;0.200000;;
 TextureFilename {
  "acs56c.bmp";
 }
 }
}
 MeshNormals {
  20;
  -0.815197;-0.407580;0.411499;,
  -0.334760;-0.669490;-0.663113;,
  -0.331179;0.662286;0.672085;,
  -0.331179;0.662286;0.672085;,
  -0.818502;0.409207;-0.403241;,
  -0.818502;0.409207;-0.403241;,
  0.331925;-0.663819;0.670202;,
  0.331925;-0.663819;0.670202;,
  0.817802;-0.408882;-0.404988;,
  0.817802;-0.408882;-0.404988;,
  0.814505;0.407209;0.413233;,
  0.335530;0.670989;-0.661206;,
  0.335530;0.670989;-0.661206;,
  0.814505;0.407209;0.413233;,
  0.817802;-0.408882;-0.404988;,
  0.331925;-0.663819;0.670202;,
  -0.818502;0.409207;-0.403241;,
  -0.331179;0.662286;0.672085;,
  -0.334760;-0.669490;-0.663113;,
  -0.815197;-0.407580;0.411499;;

  12;
  3;5,1,0;,
  3;3,5,0;,
  3;1,14,15;,
  3;0,1,15;,
  3;10,7,8;,
  3;12,10,8;,
  3;12,16,17;,
  3;10,12,17;,
  3;11,9,18;,
  3;4,11,18;,
  3;2,19,6;,
  3;13,2,6;;
 }
 MeshTextureCoords {
 20;
 0.804688;0.382812;,
 0.968750;0.382812;,
 0.617188;0.398438;,
 0.804688;0.234375;,
 0.617188;0.226562;,
 0.968750;0.234375;,
 0.789062;0.226562;,
 0.968750;0.523438;,
 0.804688;0.523438;,
 0.789062;0.398438;,
 0.968750;0.382812;,
 0.789062;0.226562;,
 0.804688;0.382812;,
 0.789062;0.398438;,
 0.968750;0.523438;,
 0.804688;0.523438;,
 0.804688;0.234375;,
 0.968750;0.234375;,
 0.617188;0.398438;,
 0.617188;0.226562;;
 }
}
}
Frame frm-wepbar2 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000231,0.221524,1.000000;;
 }
Mesh wepbar2 {
 20;
 -0.044045;-0.041763;0.020117;,
 -0.044045;-0.041763;0.020117;,
 -0.044045;-0.042091;-0.020233;,
 -0.044045;-0.042091;-0.020233;,
 -0.044045;0.040602;0.020117;,
 -0.044045;0.041105;-0.020233;,
 0.044045;-0.041763;0.020117;,
 0.044045;-0.042091;-0.020233;,
 0.044045;0.040602;0.020117;,
 0.044045;0.040602;0.020117;,
 0.044045;0.041105;-0.020233;,
 0.044045;0.041105;-0.020233;,
 0.044045;0.041105;-0.020233;,
 0.044045;0.040602;0.020117;,
 0.044045;-0.042091;-0.020233;,
 0.044045;-0.041763;0.020117;,
 -0.044045;0.041105;-0.020233;,
 -0.044045;0.040602;0.020117;,
 -0.044045;-0.042091;-0.020233;,
 -0.044045;-0.041763;0.020117;;

 12;
 3;5,3,1;,
 3;4,5,1;,
 3;12,5,4;,
 3;13,12,4;,
 3;18,14,6;,
 3;19,18,6;,
 3;9,6,14;,
 3;10,9,14;,
 3;11,7,2;,
 3;16,11,2;,
 3;17,0,15;,
 3;8,17,15;;

 MeshMaterialList {
  2;
  12;
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
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.300000;0.300000;0.300000;;
 TextureFilename {
  "acs56c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.200000;0.200000;0.200000;;
 TextureFilename {
  "acs56c.bmp";
 }
 }
}
 MeshNormals {
  20;
  -0.815392;-0.407682;0.411012;,
  -0.815392;-0.407682;0.411012;,
  -0.334545;-0.669068;-0.663648;,
  -0.334545;-0.669068;-0.663648;,
  -0.331499;0.662947;0.671275;,
  -0.818201;0.409068;-0.403994;,
  0.332135;-0.664248;0.669673;,
  0.817606;-0.408789;-0.405478;,
  0.814803;0.407370;0.412487;,
  0.814803;0.407370;0.412487;,
  0.335198;0.670344;-0.662028;,
  0.335198;0.670344;-0.662028;,
  0.335198;0.670344;-0.662028;,
  0.814803;0.407370;0.412487;,
  0.817606;-0.408789;-0.405478;,
  0.332135;-0.664248;0.669673;,
  -0.818201;0.409068;-0.403994;,
  -0.331499;0.662947;0.671275;,
  -0.334545;-0.669068;-0.663648;,
  -0.815392;-0.407682;0.411012;;

  12;
  3;5,3,1;,
  3;4,5,1;,
  3;12,5,4;,
  3;13,12,4;,
  3;18,14,6;,
  3;19,18,6;,
  3;9,6,14;,
  3;10,9,14;,
  3;11,7,2;,
  3;16,11,2;,
  3;17,0,15;,
  3;8,17,15;;
 }
 MeshTextureCoords {
 20;
 0.617188;0.226562;,
 0.804688;0.523438;,
 0.617188;0.398438;,
 0.968750;0.523438;,
 0.804688;0.382812;,
 0.968750;0.382812;,
 0.804688;0.382812;,
 0.789062;0.398438;,
 0.789062;0.398438;,
 0.804688;0.523438;,
 0.968750;0.523438;,
 0.789062;0.226562;,
 0.968750;0.234375;,
 0.804688;0.234375;,
 0.968750;0.382812;,
 0.789062;0.226562;,
 0.617188;0.226562;,
 0.617188;0.398438;,
 0.968750;0.234375;,
 0.804688;0.234375;;
 }
}
}
Frame frm-wepemt {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,-0.000783,0.353075,1.000000;;
 }
}
}
}
AnimationSet {
 Animation anim-wepbar1 {
  {frm-wepbar1}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000783, 0.022099;;,
  2; 3; 0.000000, 0.000783, 0.022099;;;
  }
 }
 Animation anim-wepbar3 {
  {frm-wepbar3}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000231, -0.130884;;,
  2; 3; 0.000000, 0.000231, -0.130884;;;
  }
 }
 Animation anim-wepbar2 {
  {frm-wepbar2}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000231, -0.221524;;,
  2; 3; 0.000000, 0.000231, -0.221524;;;
  }
 }
 Animation anim-wepemt {
  {frm-wepemt}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, -0.000783, -0.353075;;,
  2; 3; 0.000000, -0.000783, -0.353075;;;
  }
 }
  }


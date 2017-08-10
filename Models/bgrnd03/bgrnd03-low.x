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

Frame frm-low {
  FrameTransformMatrix {
1.278000,0.000000,0.000000,0.000000,
0.000000,0.652000,0.000000,0.000000,
0.000000,0.000000,0.897680,0.000000,
0.294686,-0.019492,-0.092037,1.000000;;
 }
Mesh low {
 40;
 3.599547;-2.822102;-0.000000;,
 3.599547;-2.822102;-0.000000;,
 3.599547;-2.822102;-0.000000;,
 3.599547;-2.822102;-0.000000;,
 3.599547;-2.822102;-0.000000;,
 5.000000;0.000000;-0.000000;,
 5.000000;0.000000;-0.000000;,
 4.188817;3.156289;0.000000;,
 4.188817;3.156289;0.000000;,
 4.188817;3.156289;0.000000;,
 4.188817;3.156289;0.000000;,
 4.188817;3.156289;0.000000;,
 -0.000000;-3.535534;3.535534;,
 -0.000000;-3.535534;3.535534;,
 -0.000000;-3.535534;3.535534;,
 -0.000000;-3.535534;3.535534;,
 -0.000000;-3.535534;3.535534;,
 3.945501;0.000000;3.945501;,
 3.945501;0.000000;3.945501;,
 3.945501;0.000000;3.945501;,
 3.945501;0.000000;3.945501;,
 3.945501;0.000000;3.945501;,
 3.325561;0.000000;-3.325561;,
 -2.917413;-0.393539;2.973051;,
 3.945501;0.000000;3.945501;,
 -3.263324;-0.440200;-3.325561;,
 0.000000;3.535534;-3.535534;,
 0.000001;0.000000;-5.000000;,
 0.000000;-3.535534;-3.535534;,
 -3.984093;2.704142;-0.000000;,
 -4.906428;-0.661843;-0.000000;,
 -3.932853;-3.424965;-0.000000;,
 -0.000000;3.535534;3.535534;,
 -0.000000;0.000000;5.000000;,
 -0.000000;-3.535534;3.535534;,
 4.188817;3.156289;0.000000;,
 5.000000;0.000000;-0.000000;,
 3.599547;-2.822102;-0.000000;,
 -0.448477;5.115594;-0.000000;,
 -0.064171;-4.982361;-0.000000;;

 32;
 3;39,4,16;,
 3;21,33,15;,
 3;32,33,20;,
 3;38,32,11;,
 3;39,14,31;,
 3;23,30,31;,
 3;29,30,23;,
 3;38,29,32;,
 3;39,31,28;,
 3;25,27,28;,
 3;26,27,25;,
 3;38,26,29;,
 3;39,28,3;,
 3;22,6,2;,
 3;10,5,22;,
 3;38,9,26;,
 3;19,36,8;,
 3;23,33,32;,
 3;1,36,18;,
 3;13,33,23;,
 3;23,32,29;,
 3;31,12,23;,
 3;7,32,17;,
 3;24,34,0;,
 3;22,27,26;,
 3;28,27,22;,
 3;26,35,22;,
 3;22,37,28;,
 3;25,30,29;,
 3;29,26,25;,
 3;31,30,25;,
 3;28,31,25;;

 MeshMaterialList {
  1;
  32;
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
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "bgrnd03.ppm";
 }
 }
}
 MeshNormals {
  40;
  0.718517;-0.693745;-0.049518;,
  0.718517;-0.693745;-0.049518;,
  0.718517;-0.693745;-0.049518;,
  0.718517;-0.693745;-0.049518;,
  0.718517;-0.693745;-0.049518;,
  0.989016;-0.105472;-0.103555;,
  0.989016;-0.105472;-0.103555;,
  0.734734;0.676160;-0.054540;,
  0.734734;0.676160;-0.054540;,
  0.734734;0.676160;-0.054540;,
  0.734734;0.676160;-0.054540;,
  0.734734;0.676160;-0.054540;,
  -0.034370;-0.710159;0.703202;,
  -0.034370;-0.710159;0.703202;,
  -0.034370;-0.710159;0.703202;,
  -0.034370;-0.710159;0.703202;,
  -0.034370;-0.710159;0.703202;,
  0.718083;-0.049297;0.694209;,
  0.718083;-0.049297;0.694209;,
  0.718083;-0.049297;0.694209;,
  0.718083;-0.049297;0.694209;,
  0.718083;-0.049297;0.694209;,
  0.711631;-0.044838;-0.701121;,
  -0.707445;-0.021238;0.706449;,
  0.718083;-0.049297;0.694209;,
  -0.710837;-0.025930;-0.702879;,
  -0.049940;0.672156;-0.738723;,
  -0.003253;-0.004123;-0.999986;,
  0.046848;-0.704509;-0.708148;,
  -0.814206;0.579708;0.031722;,
  -0.997203;-0.033302;0.066909;,
  -0.726842;-0.685986;0.033524;,
  -0.123224;0.676456;0.726101;,
  -0.176010;-0.004437;0.984378;,
  -0.034370;-0.710159;0.703202;,
  0.734734;0.676160;-0.054540;,
  0.989016;-0.105472;-0.103555;,
  0.718517;-0.693745;-0.049518;,
  -0.091898;0.995768;0.000000;,
  0.078361;-0.996925;0.000000;;

  32;
  3;39,4,16;,
  3;21,33,15;,
  3;32,33,20;,
  3;38,32,11;,
  3;39,14,31;,
  3;23,30,31;,
  3;29,30,23;,
  3;38,29,32;,
  3;39,31,28;,
  3;25,27,28;,
  3;26,27,25;,
  3;38,26,29;,
  3;39,28,3;,
  3;22,6,2;,
  3;10,5,22;,
  3;38,9,26;,
  3;19,36,8;,
  3;23,33,32;,
  3;1,36,18;,
  3;13,33,23;,
  3;23,32,29;,
  3;31,12,23;,
  3;7,32,17;,
  3;24,34,0;,
  3;22,27,26;,
  3;28,27,22;,
  3;26,35,22;,
  3;22,37,28;,
  3;25,30,29;,
  3;29,26,25;,
  3;31,30,25;,
  3;28,31,25;;
 }
 MeshTextureCoords { 
 40;
 0.251953;0.748047;,
 0.251953;0.748047;,
 1.000000;0.717301;,
 1.000000;0.717301;,
 1.000000;0.717301;,
 1.000000;0.504281;,
 1.000000;0.504281;,
 0.001953;0.310547;,
 0.001953;0.310547;,
 0.001953;0.310547;,
 1.000000;0.295998;,
 0.001953;0.310547;,
 0.251953;0.748047;,
 0.251953;0.748047;,
 0.251953;0.748047;,
 0.251953;0.748047;,
 0.251953;0.748047;,
 0.126953;0.498047;,
 0.009394;0.547680;,
 0.009394;0.547680;,
 0.126953;0.498047;,
 0.126953;0.498047;,
 0.873873;0.504540;,
 0.374763;0.534750;,
 0.009394;0.547680;,
 0.625371;0.534249;,
 0.747894;0.253041;,
 0.748511;0.504241;,
 0.747894;0.752957;,
 0.500000;0.315567;,
 0.500000;0.546480;,
 0.500000;0.729236;,
 0.252106;0.253041;,
 0.251489;0.504241;,
 0.007492;0.806465;,
 1.000000;0.295998;,
 0.126953;0.498047;,
 1.000000;0.717301;,
 0.500000;0.031124;,
 0.500000;0.993005;;
 }
}
}
AnimationSet {
 Animation anim-low {
  {frm-low}
  AnimationKey {
  1;
  2;
  1; 3; 1.278000, 0.652000, 0.897680;;,
  100; 3; 1.278000, 0.652000, 0.897680;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.294686, -0.019492, -0.092037;;,
  100; 3; 0.294686, -0.019492, -0.092037;;;
  }
 }
}

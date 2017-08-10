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

Frame frm-mis13 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Frame frm-mfuselg {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh mfuselg {
 78;
 0.000000;0.039183;-1.524399;,
 0.000000;0.039183;-1.524399;,
 0.000000;0.039183;-1.524399;,
 0.000000;0.039183;-1.524399;,
 0.090780;0.208997;-1.159890;,
 0.090780;0.208997;-1.159890;,
 0.047612;0.133590;-1.453816;,
 0.047612;0.133590;-1.453816;,
 -0.047612;0.133590;-1.453816;,
 0.047612;-0.055224;-1.453816;,
 0.047612;-0.055224;-1.453816;,
 0.090780;-0.130631;-1.159890;,
 0.090780;-0.130631;-1.159890;,
 0.090780;-0.130631;0.942825;,
 0.090780;-0.130631;0.942825;,
 0.092569;-0.094296;1.249730;,
 0.092569;-0.094296;1.249730;,
 -0.047612;-0.055224;-1.453816;,
 -0.047612;-0.055224;-1.453816;,
 -0.047612;-0.055224;-1.453816;,
 -0.090780;-0.130631;-1.159890;,
 -0.090780;-0.130631;-1.159890;,
 -0.090780;-0.130631;0.942825;,
 -0.090780;-0.130631;0.942825;,
 -0.092569;-0.094296;1.249730;,
 -0.092569;-0.094296;1.249730;,
 -0.037220;-0.023868;1.659132;,
 -0.095224;-0.004768;-1.453816;,
 -0.095224;-0.004768;-1.453816;,
 -0.047612;0.133590;-1.453816;,
 0.092569;0.255634;1.249730;,
 0.090780;0.208997;0.942825;,
 0.090780;0.208997;-1.159890;,
 0.047612;0.133590;-1.453816;,
 -0.037220;0.115379;1.659132;,
 -0.092569;0.255634;1.249730;,
 -0.090780;0.208997;0.942825;,
 -0.090780;0.208997;-1.159890;,
 0.074439;0.036758;1.659132;,
 -0.047612;0.133590;-1.453816;,
 -0.074439;0.036758;1.659132;,
 -0.185138;-0.002030;1.249730;,
 -0.181559;-0.027372;0.942825;,
 -0.181559;-0.027867;-1.159890;,
 0.181559;-0.027867;-1.159890;,
 -0.095224;-0.004768;-1.453816;,
 -0.037220;-0.023868;1.659132;,
 -0.092569;-0.094296;1.249730;,
 -0.090780;-0.130631;0.942825;,
 -0.090780;-0.130631;-1.159890;,
 0.037220;0.115379;1.659132;,
 -0.047612;-0.055224;-1.453816;,
 0.037220;-0.023868;1.659132;,
 0.092569;-0.094296;1.249730;,
 0.090780;-0.130631;0.942825;,
 0.090780;-0.130631;-1.159890;,
 0.095224;-0.004768;-1.453816;,
 0.047612;-0.055224;-1.453816;,
 0.037220;-0.023868;1.659132;,
 -0.037220;-0.023868;1.659132;,
 -0.074439;0.036758;1.659132;,
 -0.047612;0.133590;-1.453816;,
 0.000000;0.039183;-1.524399;,
 -0.090780;0.208997;-1.159890;,
 -0.090780;0.208997;0.942825;,
 -0.092569;0.255634;1.249730;,
 -0.037220;0.115379;1.659132;,
 -0.037220;0.115379;1.659132;,
 0.047612;0.133590;-1.453816;,
 0.181559;-0.027372;0.942825;,
 0.185138;-0.002030;1.249730;,
 0.090780;0.208997;-1.159890;,
 0.090780;0.208997;0.942825;,
 0.092569;0.255634;1.249730;,
 0.037220;0.115379;1.659132;,
 0.037220;0.115379;1.659132;,
 0.074439;0.036758;1.659132;,
 0.000000;0.039183;-1.524399;;

 31;
 6;74,66,60,59,58,76;,
 4;44,5,72,69;,
 4;56,7,4,44;,
 3;3,6,56;,
 4;70,73,75,38;,
 4;35,41,40,34;,
 4;36,42,41,35;,
 4;37,43,42,36;,
 4;29,28,43,37;,
 3;2,27,39;,
 4;69,72,73,70;,
 4;41,25,26,40;,
 4;42,23,24,41;,
 4;43,21,22,42;,
 4;45,19,20,43;,
 3;1,18,45;,
 4;47,16,52,46;,
 4;48,14,15,47;,
 4;49,12,13,48;,
 4;17,10,11,49;,
 3;0,9,51;,
 4;53,70,38,52;,
 4;54,69,70,53;,
 4;55,44,69,54;,
 4;57,56,44,55;,
 3;77,56,57;,
 4;32,63,64,31;,
 4;31,64,65,30;,
 4;30,65,67,50;,
 3;62,8,33;,
 4;68,61,63,71;;

 MeshMaterialList {
  1;
  31;
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
 0.0; 0.0; 0.0;;
 TextureFilename {
  "mis13.ppm";
 }
 }
}
 MeshNormals {
  78;
  0.000000;-0.236895;-0.971535;,
  0.000000;-0.236895;-0.971535;,
  0.000000;-0.236895;-0.971535;,
  0.000000;-0.236895;-0.971535;,
  0.729501;0.657211;-0.189478;,
  0.729501;0.657211;-0.189478;,
  0.624256;0.612094;-0.485433;,
  0.624256;0.612094;-0.485433;,
  0.000000;0.830958;-0.556335;,
  0.319543;-0.734135;-0.599114;,
  0.319543;-0.734135;-0.599114;,
  0.404257;-0.903578;-0.141856;,
  0.404257;-0.903578;-0.141856;,
  0.404552;-0.913189;0.049227;,
  0.404552;-0.913189;0.049227;,
  0.402465;-0.901370;0.159858;,
  0.402465;-0.901370;0.159858;,
  -0.319543;-0.734135;-0.599114;,
  -0.319543;-0.734135;-0.599114;,
  -0.319543;-0.734135;-0.599114;,
  -0.404257;-0.903578;-0.141856;,
  -0.404257;-0.903578;-0.141856;,
  -0.404552;-0.913189;0.049227;,
  -0.404552;-0.913189;0.049227;,
  -0.402465;-0.901370;0.159858;,
  -0.402465;-0.901370;0.159858;,
  -0.406790;-0.886235;0.221607;,
  -0.788588;-0.141956;-0.598313;,
  -0.788588;-0.141956;-0.598313;,
  -0.813628;0.291767;-0.502874;,
  0.000000;0.995986;0.089504;,
  0.000000;0.997159;-0.075331;,
  0.000000;1.000000;-0.000000;,
  0.000000;0.598793;-0.800904;,
  -0.908429;0.350605;0.227671;,
  -0.931456;0.352485;0.090241;,
  -0.935314;0.352969;-0.024499;,
  -0.929566;0.349817;-0.116340;,
  0.950479;-0.160499;0.266139;,
  -0.813628;0.291767;-0.502874;,
  -0.950479;-0.160499;0.266139;,
  -0.973651;-0.180313;0.139607;,
  -0.982311;-0.187214;0.003910;,
  -0.972802;-0.179880;-0.145943;,
  0.972802;-0.179880;-0.145943;,
  -0.788588;-0.141956;-0.598313;,
  -0.406790;-0.886235;0.221607;,
  -0.402465;-0.901370;0.159858;,
  -0.404552;-0.913189;0.049227;,
  -0.404257;-0.903578;-0.141856;,
  0.000000;0.946025;0.324094;,
  -0.319543;-0.734135;-0.599114;,
  0.406790;-0.886235;0.221607;,
  0.402465;-0.901370;0.159858;,
  0.404552;-0.913189;0.049227;,
  0.404257;-0.903578;-0.141856;,
  0.788588;-0.141956;-0.598313;,
  0.319543;-0.734135;-0.599114;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.830958;-0.556335;,
  0.000000;0.598793;-0.800904;,
  0.000000;0.992127;-0.125238;,
  0.000000;0.997159;-0.075331;,
  0.000000;0.995986;0.089504;,
  0.000000;0.000000;1.000000;,
  0.000000;0.946025;0.324094;,
  0.624256;0.612094;-0.485433;,
  0.982311;-0.187214;0.003910;,
  0.973651;-0.180313;0.139607;,
  0.729501;0.657211;-0.189478;,
  0.935314;0.352969;-0.024499;,
  0.931456;0.352485;0.090241;,
  0.000000;0.000000;1.000000;,
  0.908429;0.350605;0.227671;,
  0.000000;0.000000;1.000000;,
  0.000000;-0.236895;-0.971535;;

  31;
  6;74,66,60,59,58,76;,
  4;44,5,72,69;,
  4;56,7,4,44;,
  3;3,6,56;,
  4;70,73,75,38;,
  4;35,41,40,34;,
  4;36,42,41,35;,
  4;37,43,42,36;,
  4;29,28,43,37;,
  3;2,27,39;,
  4;69,72,73,70;,
  4;41,25,26,40;,
  4;42,23,24,41;,
  4;43,21,22,42;,
  4;45,19,20,43;,
  3;1,18,45;,
  4;47,16,52,46;,
  4;48,14,15,47;,
  4;49,12,13,48;,
  4;17,10,11,49;,
  3;0,9,51;,
  4;53,70,38,52;,
  4;54,69,70,53;,
  4;55,44,69,54;,
  4;57,56,44,55;,
  3;77,56,57;,
  4;32,63,64,31;,
  4;31,64,65,30;,
  4;30,65,67,50;,
  3;62,8,33;,
  4;68,61,63,71;;
 }
 MeshTextureCoords { 
 78;
 0.132813;0.148438;,
 0.085938;0.148438;,
 0.117188;0.148438;,
 0.148438;0.132813;,
 0.226563;0.210938;,
 0.226563;0.210938;,
 0.195313;0.148438;,
 0.195313;0.148438;,
 0.429688;0.148438;,
 0.179688;0.148438;,
 0.132813;0.148438;,
 0.066201;0.210938;,
 0.066201;0.210938;,
 0.066201;0.820313;,
 0.066201;0.820313;,
 0.066201;0.882813;,
 0.066201;0.882813;,
 0.179688;0.148438;,
 0.148438;0.132813;,
 0.085938;0.148438;,
 0.054688;0.210938;,
 0.054688;0.210938;,
 0.054688;0.820313;,
 0.054688;0.820313;,
 0.054688;0.882813;,
 0.054688;0.882813;,
 0.101563;0.992188;,
 0.195313;0.148438;,
 0.117188;0.148438;,
 0.195313;0.148438;,
 0.445313;0.882813;,
 0.445313;0.820313;,
 0.445313;0.210938;,
 0.382813;0.132813;,
 0.179688;0.992188;,
 0.257813;0.882813;,
 0.226563;0.820313;,
 0.226563;0.210938;,
 0.148438;0.992188;,
 0.148438;0.132813;,
 0.148438;0.992188;,
 0.101563;0.882813;,
 0.101563;0.820313;,
 0.101563;0.210938;,
 0.101563;0.210938;,
 0.117188;0.148438;,
 0.132813;0.992188;,
 0.120888;0.882813;,
 0.120888;0.820313;,
 0.120888;0.210938;,
 0.398438;0.992188;,
 0.148438;0.132813;,
 0.101563;0.992188;,
 0.054688;0.882813;,
 0.054688;0.820313;,
 0.054688;0.210938;,
 0.117188;0.148438;,
 0.085938;0.148438;,
 0.601563;0.804688;,
 0.742188;0.804688;,
 0.773438;0.742188;,
 0.351563;0.148438;,
 0.351563;0.148438;,
 0.335938;0.210938;,
 0.335938;0.820313;,
 0.335938;0.882813;,
 0.742188;0.695313;,
 0.382813;0.992188;,
 0.429688;0.148438;,
 0.101563;0.820313;,
 0.101563;0.882813;,
 0.445313;0.210938;,
 0.226563;0.820313;,
 0.257813;0.882813;,
 0.601563;0.695313;,
 0.179688;0.992188;,
 0.554688;0.742188;,
 0.148438;0.132813;;
 }
}
Frame frm-tafuselg {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,0.942750,0.333500,0.000000,
0.000000,-0.333500,0.942750,0.000000,
0.000000,0.228157,1.203727,1.000000;;
 }
Mesh tafuselg {
 14;
 -0.072266;-0.041865;-0.599807;,
 -0.072266;0.174829;-0.583904;,
 0.072266;-0.041865;-0.599807;,
 0.072266;0.174829;-0.583904;,
 -0.072266;-0.000747;0.043891;,
 0.072266;-0.000747;0.043891;,
 0.072266;-0.000747;0.043891;,
 -0.072266;-0.000747;0.043891;,
 0.072266;0.174829;-0.583904;,
 0.072266;0.174829;-0.583904;,
 0.072266;-0.041865;-0.599807;,
 -0.072266;0.174829;-0.583904;,
 -0.072266;0.174829;-0.583904;,
 -0.072266;-0.041865;-0.599807;;

 4;
 3;7,11,13;,
 3;9,6,2;,
 4;12,8,10,0;,
 4;5,3,1,4;;

 MeshMaterialList {
  1;
  4;
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;0.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "mis13.ppm";
 }
 }
}
 MeshNormals {
  14;
  -0.447214;0.065466;-0.892028;,
  -0.619727;0.642186;-0.451149;,
  0.707107;0.051755;-0.705210;,
  0.367235;0.761088;-0.534680;,
  -0.447214;0.861374;0.240902;,
  0.707107;0.680977;0.190450;,
  0.707107;0.680977;0.190450;,
  -0.447214;0.861374;0.240902;,
  0.367235;0.761088;-0.534680;,
  0.367235;0.761088;-0.534680;,
  0.707107;0.051755;-0.705210;,
  -0.619727;0.642186;-0.451149;,
  -0.619727;0.642186;-0.451149;,
  -0.447214;0.065466;-0.892028;;

  4;
  3;7,11,13;,
  3;9,6,2;,
  4;12,8,10,0;,
  4;5,3,1,4;;
 }
 MeshTextureCoords { 
 14;
 0.960938;0.789063;,
 0.570313;0.664063;,
 0.960938;0.835938;,
 0.820313;0.664063;,
 0.570313;0.523438;,
 0.820313;0.523438;,
 0.945313;0.476563;,
 0.945313;0.476563;,
 0.851563;0.695313;,
 0.789063;0.820313;,
 0.960938;0.695313;,
 0.789063;0.820313;,
 0.804688;0.789063;,
 0.960938;0.835938;;
 }
}
}
Frame frm-lwingz {
  FrameTransformMatrix {
0.471249,0.000000,-0.882000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.882000,0.000000,0.471249,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh lwingz {
 13;
 0.894053;-0.009472;0.423344;,
 0.894053;-0.009472;0.423344;,
 -0.079407;-0.100270;0.040850;,
 0.920653;-0.011070;0.305844;,
 0.920653;-0.011070;0.305844;,
 0.920653;-0.011070;0.305844;,
 -0.079404;-0.100270;-0.206861;,
 -0.079404;-0.100270;-0.206861;,
 0.920653;-0.011070;0.305844;,
 -0.078270;-0.081369;-0.083006;,
 -0.080540;-0.119172;-0.083006;,
 -0.079407;-0.100270;0.040850;,
 0.894053;-0.009472;0.423344;;

 6;
 3;9,2,1;,
 3;10,6,5;,
 3;4,7,9;,
 3;0,3,9;,
 3;12,11,10;,
 3;10,8,12;;

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
 1.000000;1.000000;1.000000;0.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "mis13.ppm";
 }
 }
}
 MeshNormals {
  13;
  -0.260281;-0.006456;0.965511;,
  -0.260281;-0.006456;0.965511;,
  -0.362894;-0.032395;0.931267;,
  0.539897;0.030873;-0.841165;,
  0.539897;0.030873;-0.841165;,
  0.539897;0.030873;-0.841165;,
  0.453155;0.038503;-0.890600;,
  0.453155;0.038503;-0.890600;,
  0.539897;0.030873;-0.841165;,
  -0.073962;0.997210;-0.010095;,
  0.097388;-0.995165;0.012741;,
  -0.362894;-0.032395;0.931267;,
  -0.260281;-0.006456;0.965511;;

  6;
  3;9,2,1;,
  3;10,6,5;,
  3;4,7,9;,
  3;0,3,9;,
  3;12,11,10;,
  3;10,8,12;;
 }
 MeshTextureCoords { 
 13;
 0.960938;0.132813;,
 0.960938;0.132813;,
 0.023438;0.085938;,
 0.914063;0.039063;,
 0.914063;0.039063;,
 0.960938;0.132813;,
 0.023438;0.085938;,
 0.023438;0.023438;,
 0.960938;0.132813;,
 0.023438;0.054688;,
 0.023438;0.054688;,
 0.023438;0.023438;,
 0.914063;0.039063;;
 }
}
}
Frame frm-alfinz {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh alfinz {
 10;
 0.347563;-0.051842;1.563516;,
 0.002221;-0.031085;1.481959;,
 0.356996;-0.052409;1.467899;,
 0.002221;-0.031085;1.327415;,
 0.002221;-0.031085;1.327415;,
 0.356996;-0.052409;1.467899;,
 0.003303;-0.013083;1.404687;,
 0.001139;-0.049086;1.404687;,
 0.002221;-0.031085;1.481959;,
 0.347563;-0.051842;1.563516;;

 2;
 5;3,6,1,0,2;,
 5;8,7,4,5,9;;

 MeshMaterialList {
  1;
  2;
  0,
  0;
Material {
 1.000000;1.000000;1.000000;0.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "mis13.ppm";
 }
 }
}
 MeshNormals {
  10;
  -0.015922;0.000957;0.999873;,
  -0.229035;0.013767;0.973321;,
  0.531441;-0.031944;-0.846493;,
  0.366930;-0.022055;-0.929987;,
  0.366930;-0.022055;-0.929987;,
  0.531441;-0.031944;-0.846493;,
  0.089073;0.996023;0.001872;,
  -0.030876;-0.999521;0.001872;,
  -0.229035;0.013767;0.973321;,
  -0.015922;0.000957;0.999873;;

  2;
  5;3,6,1,0,2;,
  5;8,7,4,5,9;;
 }
 MeshTextureCoords { 
 10;
 0.898438;0.257813;,
 0.898438;0.460938;,
 0.726563;0.257813;,
 0.570313;0.476563;,
 0.898438;0.460938;,
 0.898438;0.257813;,
 0.773438;0.460938;,
 0.773438;0.460938;,
 0.570313;0.476563;,
 0.726563;0.257813;;
 }
}
}
Frame frm-tafinz {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh tafinz {
 6;
 0.000000;0.148693;1.221071;,
 0.000000;0.564637;1.379705;,
 0.034680;0.148693;1.371071;,
 -0.034680;0.148693;1.371071;,
 0.000000;0.148693;1.521071;,
 0.000000;0.564637;1.494246;;

 2;
 5;0,1,5,4,2;,
 5;4,5,1,0,3;;

 MeshMaterialList {
  1;
  2;
  0,
  0;
Material {
 1.000000;1.000000;1.000000;0.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "mis13.ppm";
 }
 }
}
 MeshNormals {
  6;
  0.000000;0.356348;-0.934353;,
  0.000000;0.600819;-0.799385;,
  0.998066;0.062165;0.000272;,
  -0.998066;0.062165;0.000272;,
  0.000000;0.064360;0.997927;,
  0.000000;0.397652;0.917536;;

  2;
  5;0,1,5,4,2;,
  5;4,5,1,0,3;;
 }
 MeshTextureCoords { 
 6;
 0.898438;0.476563;,
 0.898438;0.257813;,
 0.804688;0.476563;,
 0.804688;0.476563;,
 0.554688;0.476563;,
 0.710938;0.257813;;
 }
}
}
Frame frm-lwingz1 {
  FrameTransformMatrix {
0.462537,0.000000,0.886600,0.000000,
0.000000,1.000000,0.000000,0.000000,
-0.886600,0.000000,0.462537,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh lwingz1 {
 13;
 -0.903917;-0.009472;0.433570;,
 -0.903917;-0.009472;0.433570;,
 0.065489;-0.100270;0.040918;,
 -0.931745;-0.011070;0.316355;,
 -0.931745;-0.011070;0.316355;,
 -0.931745;-0.011070;0.316355;,
 0.062896;-0.100270;-0.206780;,
 0.062896;-0.100270;-0.206780;,
 -0.931745;-0.011070;0.316355;,
 0.063057;-0.081369;-0.082920;,
 0.065328;-0.119172;-0.082943;,
 0.065489;-0.100270;0.040918;,
 -0.903917;-0.009472;0.433570;;

 6;
 3;1,2,9;,
 3;5,6,10;,
 3;9,7,4;,
 3;9,3,0;,
 3;10,11,12;,
 3;12,8,10;;

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
 1.000000;1.000000;1.000000;0.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "mis13.ppm";
 }
 }
}
 MeshNormals {
  13;
  0.270363;-0.006456;0.962737;,
  0.270363;-0.006456;0.962737;,
  0.372612;-0.032395;0.927422;,
  -0.548663;0.030873;-0.835473;,
  -0.548663;0.030873;-0.835473;,
  -0.548663;0.030873;-0.835473;,
  -0.462443;0.038503;-0.885813;,
  -0.462443;0.038503;-0.885813;,
  -0.548663;0.030873;-0.835473;,
  0.073853;0.997210;-0.010868;,
  -0.097249;-0.995165;0.013759;,
  0.372612;-0.032395;0.927422;,
  0.270363;-0.006456;0.962737;;

  6;
  3;1,2,9;,
  3;5,6,10;,
  3;9,7,4;,
  3;9,3,0;,
  3;10,11,12;,
  3;12,8,10;;
 }
 MeshTextureCoords { 
 13;
 0.960938;0.132813;,
 0.960938;0.132813;,
 0.023438;0.085938;,
 0.914063;0.039063;,
 0.914063;0.039063;,
 0.960938;0.132813;,
 0.023438;0.085938;,
 0.023438;0.023438;,
 0.960938;0.132813;,
 0.023438;0.054688;,
 0.023438;0.054688;,
 0.023438;0.023438;,
 0.914063;0.039063;;
 }
}
}
Frame frm-alfinz1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh alfinz1 {
 10;
 -0.347563;-0.051842;1.563516;,
 -0.002221;-0.031085;1.481959;,
 -0.356996;-0.052409;1.467899;,
 -0.002221;-0.031085;1.327415;,
 -0.002221;-0.031085;1.327415;,
 -0.356996;-0.052409;1.467899;,
 -0.003303;-0.013083;1.404687;,
 -0.001139;-0.049086;1.404687;,
 -0.002221;-0.031085;1.481959;,
 -0.347563;-0.051842;1.563516;;

 2;
 5;2,0,1,6,3;,
 5;9,5,4,7,8;;

 MeshMaterialList {
  1;
  2;
  0,
  0;
Material {
 1.000000;1.000000;1.000000;0.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "mis13.ppm";
 }
 }
}
 MeshNormals {
  10;
  0.015923;0.000957;0.999873;,
  0.229035;0.013767;0.973321;,
  -0.531441;-0.031944;-0.846493;,
  -0.366930;-0.022055;-0.929987;,
  -0.366930;-0.022055;-0.929987;,
  -0.531441;-0.031944;-0.846493;,
  -0.089073;0.996023;0.001872;,
  0.030876;-0.999521;0.001872;,
  0.229035;0.013767;0.973321;,
  0.015923;0.000957;0.999873;;

  2;
  5;2,0,1,6,3;,
  5;9,5,4,7,8;;
 }
 MeshTextureCoords { 
 10;
 0.898438;0.257813;,
 0.898438;0.460938;,
 0.726563;0.257813;,
 0.570313;0.476563;,
 0.898438;0.460938;,
 0.898438;0.257813;,
 0.773438;0.460938;,
 0.773438;0.460938;,
 0.570313;0.476563;,
 0.726563;0.257813;;
 }
}
}
}
Frame frm-thrust {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.045464,1.669856,1.000000;;
 }
Mesh thrust {
 8;
 0.005400;0.005400;-0.005400;,
 0.005400;0.005400;0.005400;,
 0.005400;-0.005400;-0.005400;,
 0.005400;-0.005400;0.005400;,
 -0.005400;0.005400;-0.005400;,
 -0.005400;0.005400;0.005400;,
 -0.005400;-0.005400;-0.005400;,
 -0.005400;-0.005400;0.005400;;

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
Frame frm-trail {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.045464,1.671445,1.000000;;
 }
Mesh trail {
 8;
 0.005400;0.005400;-0.005400;,
 0.005400;0.005400;0.005400;,
 0.005400;-0.005400;-0.005400;,
 0.005400;-0.005400;0.005400;,
 -0.005400;0.005400;-0.005400;,
 -0.005400;0.005400;0.005400;,
 -0.005400;-0.005400;-0.005400;,
 -0.005400;-0.005400;0.005400;;

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
0.000000,0.045464,1.669856,1.000000;;
 }
Mesh rocket {
 8;
 0.005400;0.005400;-0.005400;,
 0.005400;0.005400;0.005400;,
 0.005400;-0.005400;-0.005400;,
 0.005400;-0.005400;0.005400;,
 -0.005400;0.005400;-0.005400;,
 -0.005400;0.005400;0.005400;,
 -0.005400;-0.005400;-0.005400;,
 -0.005400;-0.005400;0.005400;;

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
 Animation anim-tafuselg {
  {frm-tafuselg}
  AnimationKey {
  0;
  14;
  1; 4; 0.985584, 0.169189, 0.000000, 0.000000;;,
  2; 4; 0.986002, 0.166734, 0.000000, 0.000000;;,
  3; 4; 0.987132, 0.159908, 0.000000, 0.000000;;,
  4; 4; 0.988780, 0.149376, 0.000000, 0.000000;;,
  5; 4; 0.990728, 0.135860, 0.000000, 0.000000;;,
  6; 4; 0.992753, 0.120171, 0.000000, 0.000000;;,
  7; 4; 0.994692, 0.102896, 0.000000, 0.000000;;,
  9; 4; 0.997763, 0.066850, 0.000000, 0.000000;;,
  10; 4; 0.998771, 0.049561, 0.000000, 0.000000;;,
  11; 4; 0.999431, 0.033719, 0.000000, 0.000000;;,
  12; 4; 0.999799, 0.020054, 0.000000, 0.000000;;,
  13; 4; 0.999956, 0.009400, 0.000000, 0.000000;;,
  14; 4; 0.999997, 0.002500, 0.000000, 0.000000;;,
  15; 4; 1.000000, 0.000000, 0.000000, 0.000000;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.228157, 1.203727;;,
  15; 3; 0.000000, 0.228157, 1.203727;;;
  }
 }
 Animation anim-lwingz {
  {frm-lwingz}
  AnimationKey {
  0;
  14;
  1; 4; 0.857686, 0.000000, 0.514174, 0.000000;;,
  2; 4; 0.861744, 0.000000, 0.507343, 0.000000;;,
  3; 4; 0.872702, 0.000000, 0.488254, 0.000000;;,
  4; 4; 0.888707, 0.000000, 0.458475, 0.000000;;,
  5; 4; 0.907725, 0.000000, 0.419565, 0.000000;;,
  6; 4; 0.927718, 0.000000, 0.373282, 0.000000;;,
  7; 4; 0.946862, 0.000000, 0.321642, 0.000000;;,
  9; 4; 0.977498, 0.000000, 0.210947, 0.000000;;,
  10; 4; 0.987632, 0.000000, 0.156789, 0.000000;;,
  11; 4; 0.994274, 0.000000, 0.106862, 0.000000;;,
  12; 4; 0.997967, 0.000000, 0.063730, 0.000000;;,
  13; 4; 0.999552, 0.000000, 0.029913, 0.000000;;,
  14; 4; 0.999969, 0.000000, 0.007850, 0.000000;;,
  15; 4; 1.000000, 0.000000, 0.000000, 0.000000;;;
  }
 }
 Animation anim-lwingz1 {
  {frm-lwingz1}
  AnimationKey {
  0;
  14;
  1; 4; 0.855142, 0.000000, -0.518393, 0.000000;;,
  2; 4; 0.859201, 0.000000, -0.511638, 0.000000;;,
  3; 4; 0.870388, 0.000000, -0.492367, 0.000000;;,
  4; 4; 0.886709, 0.000000, -0.462327, 0.000000;;,
  5; 4; 0.906059, 0.000000, -0.423151, 0.000000;;,
  6; 4; 0.926388, 0.000000, -0.376570, 0.000000;;,
  7; 4; 0.945882, 0.000000, -0.324512, 0.000000;;,
  9; 4; 0.977078, 0.000000, -0.212880, 0.000000;;,
  10; 4; 0.987400, 0.000000, -0.158244, 0.000000;;,
  11; 4; 0.994169, 0.000000, -0.107829, 0.000000;;,
  12; 4; 0.997932, 0.000000, -0.064283, 0.000000;;,
  13; 4; 0.999545, 0.000000, -0.030164, 0.000000;;,
  14; 4; 0.999968, 0.000000, -0.007950, 0.000000;;,
  15; 4; 1.000000, 0.000000, 0.000000, 0.000000;;;
  }
 }
 Animation anim-thrust {
  {frm-thrust}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.045464, 1.669856;;,
  15; 3; 0.000000, 0.045464, 1.669856;;;
  }
 }
 Animation anim-trail {
  {frm-trail}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.045464, 1.671445;;,
  15; 3; 0.000000, 0.045464, 1.671445;;;
  }
 }
 Animation anim-rocket {
  {frm-rocket}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.045464, 1.669856;;,
  15; 3; 0.000000, 0.045464, 1.669856;;;
  }
 }
}

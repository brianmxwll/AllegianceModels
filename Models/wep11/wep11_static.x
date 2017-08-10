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

Frame frm-wep11b {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Frame frm-wepbar2 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.139863,0.176714,1.000000;;
 }
Mesh wepbar2 {
 29;
 -0.075660;-0.095332;-0.000021;,
 -0.063050;-0.079443;-0.331951;,
 -0.063050;-0.079443;-0.331951;,
 -0.063050;-0.079443;-0.331951;,
 -0.075660;0.095332;-0.000021;,
 -0.063050;0.079443;-0.331951;,
 -0.063050;0.079443;-0.331951;,
 0.075660;-0.095332;-0.000021;,
 0.063050;-0.079443;-0.331951;,
 0.063050;-0.079443;-0.331951;,
 0.075660;0.095332;-0.000021;,
 0.063050;0.079443;-0.331951;,
 0.063050;0.079443;-0.331951;,
 -0.032584;-0.032584;-0.401239;,
 -0.032584;0.032584;-0.401239;,
 0.032584;-0.032584;-0.401239;,
 0.032584;0.032584;-0.401239;,
 0.032584;0.032584;-0.401239;,
 0.032584;-0.032584;-0.401239;,
 -0.032584;0.032584;-0.401239;,
 -0.032584;-0.032584;-0.401239;,
 0.063050;0.079443;-0.331951;,
 0.075660;0.095332;-0.000021;,
 0.063050;-0.079443;-0.331951;,
 0.075660;-0.095332;-0.000021;,
 -0.063050;0.079443;-0.331951;,
 -0.075660;0.095332;-0.000021;,
 -0.063050;-0.079443;-0.331951;,
 -0.075660;-0.095332;-0.000021;;

 16;
 3;6,3,0;,
 3;4,6,0;,
 3;15,16,9;,
 3;16,12,9;,
 3;10,7,9;,
 3;12,10,9;,
 3;13,18,2;,
 3;18,8,2;,
 3;1,23,24;,
 3;28,27,24;,
 3;11,5,26;,
 3;22,11,26;,
 3;17,14,21;,
 3;14,25,21;,
 3;19,20,6;,
 3;20,3,6;;

 MeshMaterialList {
  1;
  16;
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
 0.600000;0.600000;0.600000;;
 TextureFilename {
  "wep11b.bmp";
 }
 }
}
 MeshNormals {
  29;
  -0.893134;-0.446378;-0.055297;,
  -0.430678;-0.821998;-0.372606;,
  -0.430678;-0.821998;-0.372606;,
  -0.430678;-0.821998;-0.372606;,
  -0.446567;0.892756;-0.059699;,
  -0.851608;0.406348;-0.331128;,
  -0.851608;0.406348;-0.331128;,
  0.446567;-0.892756;-0.059699;,
  0.851608;-0.406348;-0.331128;,
  0.851608;-0.406348;-0.331128;,
  0.893134;0.446378;-0.055297;,
  0.430678;0.821998;-0.372606;,
  0.430678;0.821998;-0.372606;,
  -0.660786;-0.701248;-0.267606;,
  -0.761022;0.581369;-0.287846;,
  0.761022;-0.581369;-0.287846;,
  0.660786;0.701248;-0.267606;,
  0.660786;0.701248;-0.267606;,
  0.761022;-0.581369;-0.287846;,
  -0.761022;0.581369;-0.287846;,
  -0.660786;-0.701248;-0.267606;,
  0.430678;0.821998;-0.372606;,
  0.893134;0.446378;-0.055297;,
  0.851608;-0.406348;-0.331128;,
  0.446567;-0.892756;-0.059699;,
  -0.851608;0.406348;-0.331128;,
  -0.446567;0.892756;-0.059699;,
  -0.430678;-0.821998;-0.372606;,
  -0.893134;-0.446378;-0.055297;;

  16;
  3;6,3,0;,
  3;4,6,0;,
  3;15,16,9;,
  3;16,12,9;,
  3;10,7,9;,
  3;12,10,9;,
  3;13,18,2;,
  3;18,8,2;,
  3;1,23,24;,
  3;28,27,24;,
  3;11,5,26;,
  3;22,11,26;,
  3;17,14,21;,
  3;14,25,21;,
  3;19,20,6;,
  3;20,3,6;;
 }
 MeshTextureCoords {
 29;
 0.352106;0.276105;,
 0.634093;0.267643;,
 0.637862;0.262317;,
 0.638278;0.275978;,
 0.352880;0.013910;,
 0.638680;0.025060;,
 0.639052;0.020135;,
 0.352106;0.276105;,
 0.638605;0.025011;,
 0.638278;0.275978;,
 0.352880;0.013910;,
 0.638278;0.260988;,
 0.639052;0.020135;,
 0.706069;0.200319;,
 0.706411;0.087791;,
 0.708732;0.197652;,
 0.707958;0.087791;,
 0.706411;0.200595;,
 0.706217;0.087895;,
 0.707958;0.087791;,
 0.708732;0.197652;,
 0.638219;0.261575;,
 0.354427;0.263910;,
 0.633994;0.026037;,
 0.355201;0.019245;,
 0.638814;0.025177;,
 0.355201;0.019245;,
 0.633349;0.267399;,
 0.354011;0.263441;;
 }
}
Frame frm-wepbar1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.384963,1.000000;;
 }
Mesh wepbar1 {
 42;
 -0.032584;-0.032584;-0.000096;,
 -0.032584;0.032584;-0.000096;,
 0.032584;-0.032584;-0.000096;,
 0.032584;0.032584;-0.000096;,
 -0.032584;-0.032584;-0.089376;,
 -0.032584;-0.032584;-0.089376;,
 -0.032584;0.032584;-0.089376;,
 -0.032584;0.032584;-0.089376;,
 0.032584;-0.032584;-0.089376;,
 0.032584;-0.032584;-0.089376;,
 0.032584;0.032584;-0.089376;,
 0.032584;0.032584;-0.089376;,
 -0.048876;-0.048876;-0.133006;,
 -0.048876;-0.048876;-0.133006;,
 -0.048876;0.048876;-0.133006;,
 0.048876;-0.048876;-0.133006;,
 0.048876;-0.048876;-0.133006;,
 0.048876;0.048876;-0.133006;,
 -0.048876;-0.048876;-0.319586;,
 -0.048876;-0.048876;-0.319586;,
 -0.048876;0.048876;-0.319586;,
 -0.048876;0.048876;-0.319586;,
 0.048876;-0.048876;-0.319586;,
 0.048876;-0.048876;-0.319586;,
 0.048876;0.048876;-0.319586;,
 0.048876;0.048876;-0.319586;,
 0.048876;0.048876;-0.319586;,
 0.048876;-0.048876;-0.319586;,
 -0.048876;0.048876;-0.319586;,
 -0.048876;-0.048876;-0.319586;,
 0.048876;0.048876;-0.133006;,
 0.048876;-0.048876;-0.133006;,
 -0.048876;0.048876;-0.133006;,
 -0.048876;-0.048876;-0.133006;,
 0.032584;0.032584;-0.089376;,
 0.032584;-0.032584;-0.089376;,
 -0.032584;0.032584;-0.089376;,
 -0.032584;-0.032584;-0.089376;,
 0.032584;0.032584;-0.000096;,
 0.032584;-0.032584;-0.000096;,
 -0.032584;0.032584;-0.000096;,
 -0.032584;-0.032584;-0.000096;;

 26;
 3;13,16,5;,
 3;16,9,5;,
 3;25,23,19;,
 3;21,25,19;,
 3;14,12,7;,
 3;12,4,7;,
 3;24,17,15;,
 3;22,24,15;,
 3;17,32,11;,
 3;32,6,11;,
 3;8,10,2;,
 3;10,3,2;,
 3;18,27,33;,
 3;27,31,33;,
 3;20,29,14;,
 3;29,12,14;,
 3;26,28,30;,
 3;28,14,30;,
 3;15,17,8;,
 3;17,10,8;,
 3;37,35,0;,
 3;35,39,0;,
 3;7,4,1;,
 3;4,41,1;,
 3;34,36,38;,
 3;36,40,38;;

 MeshMaterialList {
  2;
  26;
  0,
  0,
  1,
  1,
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
 0.994350;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep11b.bmp";
 }
 }
Material {
 0.994350;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.600000;0.600000;0.600000;;
 TextureFilename {
  "wep11b.bmp";
 }
 }
}
 MeshNormals {
  42;
  -0.660786;-0.701248;-0.267606;,
  -0.761022;0.581369;-0.287846;,
  0.761022;-0.581369;-0.287846;,
  0.660786;0.701248;-0.267606;,
  -0.722135;-0.655797;0.220116;,
  -0.722135;-0.655797;0.220116;,
  -0.655797;0.722135;0.220116;,
  -0.655797;0.722135;0.220116;,
  0.655797;-0.722135;0.220116;,
  0.655797;-0.722135;0.220116;,
  0.722135;0.655797;0.220116;,
  0.722135;0.655797;0.220116;,
  -0.655797;-0.722135;0.220116;,
  -0.655797;-0.722135;0.220116;,
  -0.722135;0.655797;0.220116;,
  0.722135;-0.655797;0.220116;,
  0.722135;-0.655797;0.220116;,
  0.655797;0.722135;0.220116;,
  -0.837214;-0.418607;-0.351909;,
  -0.837214;-0.418607;-0.351909;,
  -0.439516;0.879031;-0.184743;,
  -0.439516;0.879031;-0.184743;,
  0.439516;-0.879031;-0.184743;,
  0.439516;-0.879031;-0.184743;,
  0.837214;0.418607;-0.351909;,
  0.837214;0.418607;-0.351909;,
  0.837214;0.418607;-0.351909;,
  0.439516;-0.879031;-0.184743;,
  -0.439516;0.879031;-0.184743;,
  -0.837214;-0.418607;-0.351909;,
  0.655797;0.722135;0.220116;,
  0.722135;-0.655797;0.220116;,
  -0.722135;0.655797;0.220116;,
  -0.655797;-0.722135;0.220116;,
  0.722135;0.655797;0.220116;,
  0.655797;-0.722135;0.220116;,
  -0.655797;0.722135;0.220116;,
  -0.722135;-0.655797;0.220116;,
  0.660786;0.701248;-0.267606;,
  0.761022;-0.581369;-0.287846;,
  -0.761022;0.581369;-0.287846;,
  -0.660786;-0.701248;-0.267606;;

  26;
  3;13,16,5;,
  3;16,9,5;,
  3;25,23,19;,
  3;21,25,19;,
  3;14,12,7;,
  3;12,4,7;,
  3;24,17,15;,
  3;22,24,15;,
  3;17,32,11;,
  3;32,6,11;,
  3;8,10,2;,
  3;10,3,2;,
  3;18,27,33;,
  3;27,31,33;,
  3;20,29,14;,
  3;29,12,14;,
  3;26,28,30;,
  3;28,14,30;,
  3;15,17,8;,
  3;17,10,8;,
  3;37,35,0;,
  3;35,39,0;,
  3;7,4,1;,
  3;4,41,1;,
  3;34,36,38;,
  3;36,40,38;;
 }
 MeshTextureCoords {
 42;
 0.714837;0.092744;,
 0.714954;0.092719;,
 0.715126;0.194235;,
 0.714954;0.092719;,
 0.786514;0.193162;,
 0.786511;0.192873;,
 0.786591;0.192715;,
 0.786689;0.092511;,
 0.786514;0.193162;,
 0.786639;0.092959;,
 0.786689;0.092511;,
 0.786872;0.093189;,
 0.823754;0.222656;,
 0.823904;0.222815;,
 0.824213;0.066602;,
 0.823754;0.222656;,
 0.824213;0.066602;,
 0.824304;0.066542;,
 0.985396;0.065623;,
 0.910156;0.414062;,
 0.985297;0.065728;,
 0.910156;0.257812;,
 0.985243;0.222475;,
 0.984375;0.414062;,
 0.985297;0.065728;,
 0.984375;0.257812;,
 0.985342;0.222701;,
 0.985382;0.222543;,
 0.985396;0.065623;,
 0.985243;0.222475;,
 0.823904;0.222815;,
 0.823904;0.222815;,
 0.823904;0.222815;,
 0.824213;0.066602;,
 0.786591;0.192715;,
 0.786511;0.192873;,
 0.786872;0.093189;,
 0.786639;0.092959;,
 0.715092;0.193967;,
 0.715092;0.193758;,
 0.714837;0.092744;,
 0.715126;0.194235;;
 }
}
Frame frm-wepemt {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000194,0.319609,1.000000;;
 }
}
}
}
Frame frm-wepbas1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.130401,0.024263,1.000000;;
 }
Mesh wepbas1 {
 42;
 0.082537;0.049602;0.239021;,
 0.082537;0.049602;0.239021;,
 0.082855;0.180117;0.108507;,
 0.082855;0.180117;0.108507;,
 0.082855;0.180117;0.108507;,
 0.082855;0.180117;-0.152523;,
 0.082855;0.180117;-0.152523;,
 0.158909;-0.130515;-0.152523;,
 0.158909;-0.130515;-0.152523;,
 0.082537;-0.130515;0.239021;,
 0.082537;-0.130515;0.239021;,
 -0.083547;0.049602;0.239021;,
 -0.083547;0.049602;0.239021;,
 -0.083547;0.049602;0.239021;,
 -0.083869;0.180117;0.108507;,
 -0.083869;0.180117;0.108507;,
 -0.083869;0.180117;-0.152523;,
 -0.083869;0.180117;-0.152523;,
 -0.160853;-0.130515;-0.152523;,
 -0.160853;-0.130515;-0.152523;,
 -0.083547;-0.130515;0.239021;,
 -0.083547;-0.130515;0.239021;,
 0.158909;0.049625;-0.152523;,
 -0.160853;0.049625;-0.152523;,
 0.158909;-0.130515;0.108735;,
 -0.160853;-0.130515;0.108735;,
 -0.160853;-0.130515;0.108735;,
 0.158909;-0.130515;0.108735;,
 -0.160853;0.049614;0.108735;,
 0.158909;0.049614;0.108735;,
 -0.160853;0.049625;-0.152523;,
 0.158909;0.049625;-0.152523;,
 -0.083547;-0.130515;0.239021;,
 -0.160853;-0.130515;-0.152523;,
 -0.083869;0.180117;-0.152523;,
 -0.083869;0.180117;0.108507;,
 -0.083547;0.049602;0.239021;,
 0.082537;-0.130515;0.239021;,
 0.158909;-0.130515;-0.152523;,
 0.082855;0.180117;-0.152523;,
 0.082855;0.180117;0.108507;,
 0.082537;0.049602;0.239021;;

 28;
 3;1,13,21;,
 3;10,1,21;,
 3;4,15,12;,
 3;0,3,11;,
 3;6,17,14;,
 3;2,6,15;,
 3;8,19,23;,
 3;22,8,23;,
 3;20,25,18;,
 3;9,20,18;,
 3;24,9,18;,
 3;7,24,18;,
 3;31,5,40;,
 3;29,31,40;,
 3;28,36,35;,
 3;41,37,27;,
 3;29,41,27;,
 3;30,33,26;,
 3;28,30,26;,
 3;16,39,22;,
 3;23,16,22;,
 3;38,31,29;,
 3;27,38,29;,
 3;32,36,28;,
 3;26,32,28;,
 3;34,30,28;,
 3;35,34,28;,
 3;40,41,29;;

 MeshMaterialList {
  5;
  28;
  0,
  0,
  1,
  1,
  1,
  1,
  2,
  2,
  3,
  3,
  3,
  3,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  2,
  2,
  4,
  4,
  4,
  4,
  4,
  4,
  4;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.500000;0.500000;0.500000;;
 TextureFilename {
  "wep11b.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.400000;0.400000;0.400000;;
 TextureFilename {
  "wep11b.bmp";
 }
 }
Material {
 0.988701;0.994350;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.400000;0.400000;0.400000;;
 TextureFilename {
  "wep11b.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep11b.bmp";
 }
 }
Material {
 1.000000;1.000000;0.977401;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.700000;0.700000;0.700000;;
 TextureFilename {
  "wep11b.bmp";
 }
 }
}
 MeshNormals {
  42;
  0.490086;0.347165;0.799557;,
  0.490086;0.347165;0.799557;,
  0.490756;0.798811;0.347937;,
  0.490756;0.798811;0.347937;,
  0.490756;0.798811;0.347937;,
  0.472667;0.822551;-0.316222;,
  0.472667;0.822551;-0.316222;,
  0.666667;-0.333333;-0.666667;,
  0.666667;-0.333333;-0.666667;,
  0.351531;-0.707107;0.613536;,
  0.351531;-0.707107;0.613536;,
  -0.487511;0.347699;0.800898;,
  -0.487511;0.347699;0.800898;,
  -0.487511;0.347699;0.800898;,
  -0.488186;0.800150;0.348475;,
  -0.488186;0.800150;0.348475;,
  -0.412641;0.722523;-0.554696;,
  -0.412641;0.722523;-0.554696;,
  -0.235702;-0.942809;-0.235702;,
  -0.235702;-0.942809;-0.235702;,
  -0.442589;-0.447214;0.777248;,
  -0.442589;-0.447214;0.777248;,
  0.682640;0.184405;-0.707105;,
  -0.682149;0.186216;-0.707105;,
  0.802984;-0.554700;0.218001;,
  -0.914878;-0.316228;0.250994;,
  -0.914878;-0.316228;0.250994;,
  0.802984;-0.554700;0.218001;,
  -0.931486;0.256684;0.257775;,
  0.932805;0.254285;0.255369;,
  -0.682149;0.186216;-0.707105;,
  0.682640;0.184405;-0.707105;,
  -0.442589;-0.447214;0.777248;,
  -0.235702;-0.942809;-0.235702;,
  -0.412641;0.722523;-0.554696;,
  -0.488186;0.800150;0.348475;,
  -0.487511;0.347699;0.800898;,
  0.351531;-0.707107;0.613536;,
  0.666667;-0.333333;-0.666667;,
  0.472667;0.822551;-0.316222;,
  0.490756;0.798811;0.347937;,
  0.490086;0.347165;0.799557;;

  28;
  3;1,13,21;,
  3;10,1,21;,
  3;4,15,12;,
  3;0,3,11;,
  3;6,17,14;,
  3;2,6,15;,
  3;8,19,23;,
  3;22,8,23;,
  3;20,25,18;,
  3;9,20,18;,
  3;24,9,18;,
  3;7,24,18;,
  3;31,5,40;,
  3;29,31,40;,
  3;28,36,35;,
  3;41,37,27;,
  3;29,41,27;,
  3;30,33,26;,
  3;28,30,26;,
  3;16,39,22;,
  3;23,16,22;,
  3;38,31,29;,
  3;27,38,29;,
  3;32,36,28;,
  3;26,32,28;,
  3;34,30,28;,
  3;35,34,28;,
  3;40,41,29;;
 }
 MeshTextureCoords {
 42;
 0.338124;0.313473;,
 0.598914;0.298785;,
 0.229491;0.316067;,
 0.229611;0.316385;,
 0.229772;0.316146;,
 0.013185;0.518579;,
 0.009726;0.318614;,
 0.324037;0.517724;,
 0.987615;0.976768;,
 0.598833;0.622889;,
 0.599186;0.560285;,
 0.338023;0.029421;,
 0.337379;0.030695;,
 0.721123;0.300122;,
 0.230720;0.028432;,
 0.230720;0.028113;,
 0.779708;0.455592;,
 0.009708;0.026919;,
 0.323997;0.976182;,
 0.718594;0.978310;,
 0.598143;0.881963;,
 0.721197;0.560879;,
 0.987615;0.643141;,
 0.718594;0.641599;,
 0.517942;0.519737;,
 0.519832;0.979478;,
 0.210051;0.976929;,
 0.209951;0.976929;,
 0.210822;0.734586;,
 0.210722;0.734586;,
 0.012490;0.733030;,
 0.012390;0.733030;,
 0.303145;0.976929;,
 0.012490;0.978467;,
 0.013237;0.518579;,
 0.209080;0.518579;,
 0.303916;0.733067;,
 0.303093;0.976929;,
 0.012390;0.978467;,
 0.925415;0.454050;,
 0.209028;0.518579;,
 0.303864;0.733067;;
 }
}
Frame frm-wepbas2 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-0.000003,0.129660,-0.199602,1.000000;;
 }
Mesh wepbas2 {
 8;
 0.049328;0.031242;-0.016672;,
 0.049328;-0.016672;0.031736;,
 0.072044;0.018162;-0.058917;,
 0.072044;-0.058917;0.018162;,
 -0.049328;0.031242;-0.016672;,
 -0.049328;-0.016672;0.031736;,
 -0.072044;0.018162;-0.058917;,
 -0.072044;-0.058917;0.018162;;

 10;
 3;4,6,7;,
 3;5,4,7;,
 3;0,2,6;,
 3;4,0,6;,
 3;1,3,2;,
 3;0,1,2;,
 3;5,7,3;,
 3;1,5,3;,
 3;1,0,5;,
 3;0,4,5;;

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
 0.300000;0.300000;0.300000;;
 TextureFilename {
  "wep11b.bmp";
 }
 }
}
 MeshNormals {
  8;
  0.228596;0.916716;0.327681;,
  0.565035;0.375804;0.734511;,
  0.710246;0.683460;0.168621;,
  0.356465;-0.106567;0.928212;,
  -0.551068;0.755598;0.354113;,
  -0.220210;0.295416;0.929643;,
  -0.354920;0.929847;-0.097042;,
  -0.712515;0.165783;0.681791;;

  10;
  3;4,6,7;,
  3;5,4,7;,
  3;0,2,6;,
  3;4,0,6;,
  3;1,3,2;,
  3;0,1,2;,
  3;5,7,3;,
  3;1,5,3;,
  3;1,0,5;,
  3;0,4,5;;
 }
 MeshTextureCoords {
 8;
 0.550401;0.334108;,
 0.550745;0.462270;,
 0.557896;0.320245;,
 0.558039;0.475613;,
 0.458035;0.334392;,
 0.457290;0.462611;,
 0.449194;0.320585;,
 0.449652;0.476010;;
 }
}
}
}
}
AnimationSet {
 Animation anim-wepbar2 {
  {frm-wepbar2}
  AnimationKey {
  2;
  2;
  0; 3; 0.000000, 0.139863, -0.176714;;,
  15; 3; 0.000000, 0.139863, -0.176714;;;
  }
 }
 Animation anim-wepbar1 {
  {frm-wepbar1}
  AnimationKey {
  2;
  7;
  0; 3; 0.000000, 0.000000, -0.384963;;,
  1; 3; 0.000000, 0.000000, -0.384963;;,
  2; 3; 0.000000, 0.000000, -0.311718;;,
  3; 3; 0.000000, 0.000000, -0.317335;;,
  4; 3; 0.000000, 0.000000, -0.322971;;,
  14; 3; 0.000000, 0.000000, -0.379326;;,
  15; 3; 0.000000, 0.000000, -0.384961;;;
  }
 }
 Animation anim-wepemt {
  {frm-wepemt}
  AnimationKey {
  2;
  2;
  0; 3; 0.000000, 0.000194, -0.319609;;,
  15; 3; 0.000000, 0.000194, -0.319609;;;
  }
 }
 Animation anim-wepbas1 {
  {frm-wepbas1}
  AnimationKey {
  2;
  2;
  0; 3; 0.000000, 0.130401, -0.024263;;,
  15; 3; 0.000000, 0.130401, -0.024263;;;
  }
 }
 Animation anim-wepbas2 {
  {frm-wepbas2}
  AnimationKey {
  2;
  2;
  0; 3; -0.000003, 0.129660, 0.199602;;,
  15; 3; -0.000003, 0.129660, 0.199602;;;
  }
 }
  }


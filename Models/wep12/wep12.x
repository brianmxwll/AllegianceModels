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

Frame frm-wep12 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Frame frm-wepbas1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.130466,0.031795,1.000000;;
 }
Mesh wepbas1 {
 54;
 0.082537;0.049602;0.239021;,
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
 -0.083869;0.180117;0.108507;,
 -0.083869;0.180117;-0.152523;,
 -0.083869;0.180117;-0.152523;,
 -0.160853;-0.130515;-0.152523;,
 -0.160853;-0.130515;-0.152523;,
 -0.083547;-0.130515;0.239021;,
 -0.083547;-0.130515;0.239021;,
 0.158909;0.049625;-0.152523;,
 0.158909;0.049625;-0.152523;,
 -0.160853;0.049625;-0.152523;,
 -0.160853;0.049625;-0.152523;,
 0.158909;0.049614;0.108735;,
 0.158909;0.049614;0.108735;,
 0.158909;0.049614;0.108735;,
 -0.160853;0.049614;0.108735;,
 -0.160853;0.049614;0.108735;,
 -0.160853;0.049614;0.108735;,
 0.158909;-0.130515;0.108735;,
 0.158909;-0.130515;0.108735;,
 -0.160853;-0.130515;0.108735;,
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
 3;2,14,23;,
 3;11,2,23;,
 3;33,12,15;,
 3;0,49,34;,
 3;29,0,34;,
 3;44,48,31;,
 3;38,44,31;,
 3;52,53,41;,
 3;24,6,3;,
 3;26,45,36;,
 3;32,26,36;,
 3;50,43,28;,
 3;39,50,28;,
 3;30,24,3;,
 3;5,17,13;,
 3;46,42,40;,
 3;47,46,40;,
 3;1,5,13;,
 3;7,19,16;,
 3;4,7,16;,
 3;18,51,25;,
 3;27,18,25;,
 3;9,21,27;,
 3;25,9,27;,
 3;22,37,20;,
 3;10,22,20;,
 3;35,10,20;,
 3;8,35,20;;

 MeshMaterialList {
  5;
  28;
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
  4;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.400000;0.400000;0.400000;;
 TextureFilename {
  "wep12.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.500000;0.500000;0.500000;;
 TextureFilename {
  "wep12.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.600000;0.600000;0.600000;;
 TextureFilename {
  "wep12.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep12.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.300000;0.300000;0.300000;;
 TextureFilename {
  "wep12.bmp";
 }
 }
}
 MeshNormals {
  54;
  0.490086;0.347165;0.799557;,
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
  -0.488186;0.800150;0.348475;,
  -0.412641;0.722523;-0.554696;,
  -0.412641;0.722523;-0.554696;,
  -0.235702;-0.942809;-0.235702;,
  -0.235702;-0.942809;-0.235702;,
  -0.442589;-0.447214;0.777248;,
  -0.442589;-0.447214;0.777248;,
  0.682640;0.184405;-0.707105;,
  0.682640;0.184405;-0.707105;,
  -0.682149;0.186216;-0.707105;,
  -0.682149;0.186216;-0.707105;,
  0.932805;0.254285;0.255369;,
  0.932805;0.254285;0.255369;,
  0.932805;0.254285;0.255369;,
  -0.931486;0.256684;0.257775;,
  -0.931486;0.256684;0.257775;,
  -0.931486;0.256684;0.257775;,
  0.802984;-0.554700;0.218001;,
  0.802984;-0.554700;0.218001;,
  -0.914878;-0.316228;0.250994;,
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
  3;2,14,23;,
  3;11,2,23;,
  3;33,12,15;,
  3;0,49,34;,
  3;29,0,34;,
  3;44,48,31;,
  3;38,44,31;,
  3;52,53,41;,
  3;24,6,3;,
  3;26,45,36;,
  3;32,26,36;,
  3;50,43,28;,
  3;39,50,28;,
  3;30,24,3;,
  3;5,17,13;,
  3;46,42,40;,
  3;47,46,40;,
  3;1,5,13;,
  3;7,19,16;,
  3;4,7,16;,
  3;18,51,25;,
  3;27,18,25;,
  3;9,21,27;,
  3;25,9,27;,
  3;22,37,20;,
  3;10,22,20;,
  3;35,10,20;,
  3;8,35,20;;
 }
 MeshTextureCoords {
 54;
 0.375000;0.437500;,
 0.750000;0.265625;,
 0.718750;0.429688;,
 0.671875;0.203125;,
 0.382812;0.046875;,
 0.929688;0.265625;,
 0.921875;0.203125;,
 0.640625;0.046875;,
 0.039062;0.429688;,
 0.593750;0.968750;,
 0.109375;0.054688;,
 0.718750;0.257812;,
 0.937500;0.921875;,
 0.750000;0.429688;,
 0.554688;0.429688;,
 0.796875;0.820312;,
 0.382812;0.210938;,
 0.929688;0.429688;,
 0.359375;0.664062;,
 0.640625;0.210938;,
 0.343750;0.429688;,
 0.289062;0.968750;,
 0.273438;0.054688;,
 0.554688;0.257812;,
 0.921875;0.054688;,
 0.593750;0.796875;,
 0.265625;0.734375;,
 0.289062;0.796875;,
 0.015625;0.914062;,
 0.523438;0.437500;,
 0.671875;0.054688;,
 0.523438;0.257812;,
 0.015625;0.734375;,
 0.937500;0.781250;,
 0.523438;0.257812;,
 0.039062;0.179688;,
 0.015625;0.914062;,
 0.351562;0.179688;,
 0.523438;0.437500;,
 0.015625;0.734375;,
 0.671875;0.203125;,
 0.937500;0.781250;,
 0.921875;0.203125;,
 0.265625;0.914062;,
 0.375000;0.437500;,
 0.265625;0.914062;,
 0.921875;0.054688;,
 0.671875;0.054688;,
 0.375000;0.257812;,
 0.375000;0.257812;,
 0.265625;0.734375;,
 0.523438;0.664062;,
 0.937500;0.921875;,
 0.796875;0.820312;;
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
 20;
 -0.072044;-0.058917;0.018162;,
 -0.072044;0.018162;-0.058917;,
 -0.049328;-0.016672;0.031736;,
 -0.049328;-0.016672;0.031736;,
 -0.049328;0.031242;-0.016672;,
 -0.049328;0.031242;-0.016672;,
 0.072044;-0.058917;0.018162;,
 0.072044;0.018162;-0.058917;,
 0.049328;-0.016672;0.031736;,
 0.049328;-0.016672;0.031736;,
 0.049328;0.031242;-0.016672;,
 0.049328;0.031242;-0.016672;,
 0.049328;0.031242;-0.016672;,
 0.049328;-0.016672;0.031736;,
 0.072044;0.018162;-0.058917;,
 0.072044;-0.058917;0.018162;,
 -0.049328;0.031242;-0.016672;,
 -0.049328;-0.016672;0.031736;,
 -0.072044;0.018162;-0.058917;,
 -0.072044;-0.058917;0.018162;;

 10;
 3;5,1,0;,
 3;3,5,0;,
 3;11,7,18;,
 3;4,11,18;,
 3;2,19,15;,
 3;8,2,15;,
 3;13,12,17;,
 3;12,16,17;,
 3;9,6,14;,
 3;10,9,14;;

 MeshMaterialList {
  2;
  10;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 1.000000;1.000000;1.000000;;
 TextureFilename {
  "wep12.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.790960;0.790960;0.790960;;
 TextureFilename {
  "wep12.bmp";
 }
 }
}
 MeshNormals {
  20;
  -0.712515;0.165783;0.681791;,
  -0.354920;0.929847;-0.097042;,
  -0.220210;0.295416;0.929643;,
  -0.220210;0.295416;0.929643;,
  -0.551068;0.755598;0.354113;,
  -0.551068;0.755598;0.354113;,
  0.356465;-0.106567;0.928212;,
  0.710246;0.683460;0.168621;,
  0.565035;0.375804;0.734511;,
  0.565035;0.375804;0.734511;,
  0.228596;0.916716;0.327681;,
  0.228596;0.916716;0.327681;,
  0.228596;0.916716;0.327681;,
  0.565035;0.375804;0.734511;,
  0.710246;0.683460;0.168621;,
  0.356465;-0.106567;0.928212;,
  -0.551068;0.755598;0.354113;,
  -0.220210;0.295416;0.929643;,
  -0.354920;0.929847;-0.097042;,
  -0.712515;0.165783;0.681791;;

  10;
  3;5,1,0;,
  3;3,5,0;,
  3;11,7,18;,
  3;4,11,18;,
  3;2,19,15;,
  3;8,2,15;,
  3;13,12,17;,
  3;12,16,17;,
  3;9,6,14;,
  3;10,9,14;;
 }
 MeshTextureCoords {
 20;
 0.696875;0.954818;,
 0.696224;0.842318;,
 0.726562;0.847222;,
 0.640625;0.931901;,
 0.725781;0.917969;,
 0.639974;0.870964;,
 0.694531;0.845313;,
 0.782812;0.818750;,
 0.727431;0.915799;,
 0.640625;0.867188;,
 0.641406;0.933594;,
 0.727344;0.848438;,
 0.699519;0.737380;,
 0.644231;0.737380;,
 0.693750;0.950000;,
 0.782986;0.947049;,
 0.698918;0.823317;,
 0.643630;0.823918;,
 0.782031;0.945312;,
 0.782118;0.820312;;
 }
}
}
}
Frame frm-wepbar1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.139928,0.379044,1.000000;;
 }
Mesh wepbar1 {
 36;
 0.075660;-0.080079;0.041046;,
 0.075660;-0.080079;0.041046;,
 0.075660;-0.080079;0.135539;,
 0.075660;-0.080079;0.135539;,
 0.075660;-0.080079;0.135539;,
 0.075660;0.080079;0.041046;,
 0.075660;0.080079;0.041046;,
 0.075660;0.080079;0.135539;,
 0.075660;0.080079;0.135539;,
 0.075660;0.080079;0.135539;,
 -0.075660;-0.080079;0.041046;,
 -0.075660;-0.080079;0.041046;,
 -0.075660;-0.080079;0.135539;,
 -0.075660;-0.080079;0.135539;,
 -0.075660;-0.080079;0.135539;,
 -0.075660;0.080079;0.041046;,
 -0.075660;0.080079;0.041046;,
 -0.075660;0.080079;0.135539;,
 -0.075660;0.080079;0.135539;,
 -0.075660;0.080079;0.135539;,
 0.061174;-0.061174;0.197597;,
 0.061174;0.061174;0.197597;,
 -0.061174;-0.061174;0.197597;,
 -0.061174;0.061174;0.197597;,
 -0.061174;0.061174;0.197597;,
 -0.061174;-0.061174;0.197597;,
 0.061174;0.061174;0.197597;,
 0.061174;-0.061174;0.197597;,
 -0.075660;0.080079;0.135539;,
 -0.075660;0.080079;0.041046;,
 -0.075660;-0.080079;0.135539;,
 -0.075660;-0.080079;0.041046;,
 0.075660;0.080079;0.135539;,
 0.075660;0.080079;0.041046;,
 0.075660;-0.080079;0.135539;,
 0.075660;-0.080079;0.041046;;

 17;
 3;9,4,1;,
 3;6,9,1;,
 3;22,23,14;,
 3;23,19,14;,
 3;16,11,13;,
 3;18,16,13;,
 3;20,25,3;,
 3;25,12,3;,
 3;2,30,10;,
 3;0,2,10;,
 3;17,8,5;,
 3;15,17,5;,
 3;24,21,28;,
 3;21,7,28;,
 3;26,27,32;,
 3;27,34,32;,
 4;29,33,35,31;;

 MeshMaterialList {
  1;
  17;
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
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep12.bmp";
 }
 }
}
 MeshNormals {
  36;
  0.816497;-0.408248;-0.408248;,
  0.816497;-0.408248;-0.408248;,
  0.442852;-0.877977;0.181766;,
  0.442852;-0.877977;0.181766;,
  0.442852;-0.877977;0.181766;,
  0.408248;0.816497;-0.408248;,
  0.408248;0.816497;-0.408248;,
  0.883410;0.437851;0.166953;,
  0.883410;0.437851;0.166953;,
  0.883410;0.437851;0.166953;,
  -0.408248;-0.816497;-0.408248;,
  -0.408248;-0.816497;-0.408248;,
  -0.883410;-0.437851;0.166953;,
  -0.883410;-0.437851;0.166953;,
  -0.883410;-0.437851;0.166953;,
  -0.816497;0.408248;-0.408248;,
  -0.816497;0.408248;-0.408248;,
  -0.442852;0.877977;0.181766;,
  -0.442852;0.877977;0.181766;,
  -0.442852;0.877977;0.181766;,
  0.848810;-0.416899;0.325141;,
  0.424405;0.833799;0.353072;,
  -0.424405;-0.833799;0.353072;,
  -0.848810;0.416899;0.325141;,
  -0.848810;0.416899;0.325141;,
  -0.424405;-0.833799;0.353072;,
  0.424405;0.833799;0.353072;,
  0.848810;-0.416899;0.325141;,
  -0.442852;0.877977;0.181766;,
  -0.816497;0.408248;-0.408248;,
  -0.883410;-0.437851;0.166953;,
  -0.408248;-0.816497;-0.408248;,
  0.883410;0.437851;0.166953;,
  0.408248;0.816497;-0.408248;,
  0.442852;-0.877977;0.181766;,
  0.816497;-0.408248;-0.408248;;

  17;
  3;9,4,1;,
  3;6,9,1;,
  3;22,23,14;,
  3;23,19,14;,
  3;16,11,13;,
  3;18,16,13;,
  3;20,25,3;,
  3;25,12,3;,
  3;2,30,10;,
  3;0,2,10;,
  3;17,8,5;,
  3;15,17,5;,
  3;24,21,28;,
  3;21,7,28;,
  3;26,27,32;,
  3;27,34,32;,
  4;29,33,35,31;;
 }
 MeshTextureCoords {
 36;
 0.257812;0.617188;,
 0.390625;0.468750;,
 0.171875;0.617188;,
 0.132812;0.609375;,
 0.296875;0.468750;,
 0.257812;0.468750;,
 0.390625;0.625000;,
 0.132812;0.460938;,
 0.171875;0.468750;,
 0.296875;0.625000;,
 0.257812;0.468750;,
 0.390625;0.625000;,
 0.132812;0.460938;,
 0.296875;0.625000;,
 0.132812;0.609375;,
 0.257812;0.617188;,
 0.390625;0.468750;,
 0.171875;0.617188;,
 0.296875;0.468750;,
 0.132812;0.460938;,
 0.070312;0.593750;,
 0.070312;0.476562;,
 0.070312;0.593750;,
 0.070312;0.476562;,
 0.070312;0.593750;,
 0.070312;0.476562;,
 0.070312;0.593750;,
 0.070312;0.476562;,
 0.132812;0.609375;,
 0.445312;0.468750;,
 0.171875;0.468750;,
 0.445312;0.617188;,
 0.132812;0.609375;,
 0.593750;0.468750;,
 0.132812;0.460938;,
 0.593750;0.617188;;
 }
}
Frame frm-wepbar2 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,-0.329281,1.000000;;
 }
Mesh wepbar2 {
 36;
 -0.048876;-0.048876;-0.286878;,
 -0.048876;0.048876;-0.286878;,
 0.048876;-0.048876;-0.286878;,
 0.048876;0.048876;-0.286878;,
 -0.073315;-0.073315;-0.347033;,
 -0.073315;-0.073315;-0.347033;,
 -0.073315;-0.073315;-0.347033;,
 -0.073315;0.073315;-0.347033;,
 -0.073315;0.073315;-0.347033;,
 -0.073315;0.073315;-0.347033;,
 0.073315;-0.073315;-0.347033;,
 0.073315;-0.073315;-0.347033;,
 0.073315;-0.073315;-0.347033;,
 0.073315;0.073315;-0.347033;,
 0.073315;0.073315;-0.347033;,
 0.073315;0.073315;-0.347033;,
 -0.042522;-0.042522;-0.568723;,
 -0.042522;-0.042522;-0.568723;,
 -0.042522;0.042522;-0.568723;,
 -0.042522;0.042522;-0.568723;,
 0.042522;-0.042522;-0.568723;,
 0.042522;-0.042522;-0.568723;,
 0.042522;0.042522;-0.568723;,
 0.042522;0.042522;-0.568723;,
 0.042522;0.042522;-0.568723;,
 0.042522;-0.042522;-0.568723;,
 -0.042522;0.042522;-0.568723;,
 -0.042522;-0.042522;-0.568723;,
 0.073315;0.073315;-0.347033;,
 0.073315;-0.073315;-0.347033;,
 -0.073315;0.073315;-0.347033;,
 -0.073315;-0.073315;-0.347033;,
 0.048876;0.048876;-0.286878;,
 0.048876;-0.048876;-0.286878;,
 -0.048876;0.048876;-0.286878;,
 -0.048876;-0.048876;-0.286878;;

 18;
 3;6,12,0;,
 3;12,2,0;,
 3;23,21,17;,
 3;19,23,17;,
 3;9,5,1;,
 3;5,35,1;,
 3;22,15,11;,
 3;20,22,11;,
 3;14,8,3;,
 3;8,34,3;,
 3;13,32,33;,
 3;10,13,33;,
 3;16,25,4;,
 3;25,29,4;,
 3;18,27,7;,
 3;27,31,7;,
 3;24,26,28;,
 3;26,30,28;;

 MeshMaterialList {
  1;
  18;
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
 0.700000;0.700000;0.700000;;
 TextureFilename {
  "wep12.bmp";
 }
 }
}
 MeshNormals {
  36;
  -0.392674;-0.785348;0.478577;,
  -0.785348;0.392674;0.478577;,
  0.785348;-0.392674;0.478577;,
  0.392674;0.785348;0.478577;,
  -0.688588;-0.704093;0.173493;,
  -0.688588;-0.704093;0.173493;,
  -0.688588;-0.704093;0.173493;,
  -0.704093;0.688588;0.173493;,
  -0.704093;0.688588;0.173493;,
  -0.704093;0.688588;0.173493;,
  0.704093;-0.688588;0.173493;,
  0.704093;-0.688588;0.173493;,
  0.704093;-0.688588;0.173493;,
  0.688588;0.704093;0.173493;,
  0.688588;0.704093;0.173493;,
  0.688588;0.704093;0.173493;,
  -0.604852;-0.302426;-0.736677;,
  -0.604852;-0.302426;-0.736677;,
  -0.377042;0.754083;-0.537771;,
  -0.377042;0.754083;-0.537771;,
  0.377042;-0.754083;-0.537771;,
  0.377042;-0.754083;-0.537771;,
  0.604852;0.302426;-0.736677;,
  0.604852;0.302426;-0.736677;,
  0.604852;0.302426;-0.736677;,
  0.377042;-0.754083;-0.537771;,
  -0.377042;0.754083;-0.537771;,
  -0.604852;-0.302426;-0.736677;,
  0.688588;0.704093;0.173493;,
  0.704093;-0.688588;0.173493;,
  -0.704093;0.688588;0.173493;,
  -0.688588;-0.704093;0.173493;,
  0.392674;0.785348;0.478577;,
  0.785348;-0.392674;0.478577;,
  -0.785348;0.392674;0.478577;,
  -0.392674;-0.785348;0.478577;;

  18;
  3;6,12,0;,
  3;12,2,0;,
  3;23,21,17;,
  3;19,23,17;,
  3;9,5,1;,
  3;5,35,1;,
  3;22,15,11;,
  3;20,22,11;,
  3;14,8,3;,
  3;8,34,3;,
  3;13,32,33;,
  3;10,13,33;,
  3;16,25,4;,
  3;25,29,4;,
  3;18,27,7;,
  3;27,31,7;,
  3;24,26,28;,
  3;26,30,28;;
 }
 MeshTextureCoords {
 36;
 0.640625;0.500000;,
 0.640625;0.500000;,
 0.640625;0.593750;,
 0.640625;0.500000;,
 0.726736;0.633849;,
 0.703125;0.617188;,
 0.703125;0.476562;,
 0.734375;0.640625;,
 0.703125;0.617188;,
 0.703125;0.476562;,
 0.703125;0.476562;,
 0.725030;0.786745;,
 0.703125;0.617188;,
 0.703125;0.617188;,
 0.703125;0.476562;,
 0.726112;0.632212;,
 0.945772;0.660926;,
 0.625000;0.710938;,
 0.953125;0.671875;,
 0.625000;0.625000;,
 0.944720;0.758607;,
 0.710938;0.710938;,
 0.945801;0.661423;,
 0.710938;0.625000;,
 0.945312;0.500000;,
 0.946855;0.758517;,
 0.945312;0.585938;,
 0.953125;0.750000;,
 0.726562;0.468750;,
 0.725653;0.785595;,
 0.726562;0.609375;,
 0.734375;0.781250;,
 0.640625;0.593750;,
 0.640625;0.500000;,
 0.640625;0.593750;,
 0.640625;0.593750;;
 }
}
Frame frm-wepemt {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-0.001249,-0.000384,0.568644,1.000000;;
 }
}
}
}
}
AnimationSet {
 Animation anim-wepbas1 {
  {frm-wepbas1}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.130466, -0.031795;;,
  15; 3; 0.000000, 0.130466, -0.031795;;;
  }
 }
 Animation anim-wepbas2 {
  {frm-wepbas2}
  AnimationKey {
  2;
  2;
  1; 3; -0.000003, 0.129660, 0.199602;;,
  15; 3; -0.000003, 0.129660, 0.199602;;;
  }
 }
 Animation anim-wepbar1 {
  {frm-wepbar1}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.139928, -0.379044;;,
  15; 3; 0.000000, 0.139928, -0.379044;;;
  }
 }
 Animation anim-wepbar2 {
  {frm-wepbar2}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, 0.329281;;,
  15; 3; 0.000000, 0.000000, 0.329281;;;
  }
 }
 Animation anim-wepemt {
  {frm-wepemt}
  AnimationKey {
  2;
  2;
  1; 3; -0.001249, -0.000384, -0.568644;;,
  15; 3; -0.001249, -0.000384, -0.568644;;;
  }
 }
  }


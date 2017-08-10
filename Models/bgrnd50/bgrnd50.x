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

Frame frm-capper {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh capper {
 66;
 1.315088;-4.169924;-1.235740;,
 1.315088;-4.169924;-1.235740;,
 2.800504;-2.425069;-2.657191;,
 2.800504;-2.425069;-2.657191;,
 3.616624;-0.020114;-3.334575;,
 3.616624;-0.020114;-3.334575;,
 3.110570;2.390584;-2.806533;,
 3.110570;2.390584;-2.806533;,
 1.733882;4.183530;-1.598109;,
 1.733882;4.183530;-1.598109;,
 0.000033;-4.894552;0.001919;,
 0.000033;-4.894552;0.001919;,
 0.000033;-4.894552;0.001919;,
 0.000033;-4.894552;0.001919;,
 0.000033;-4.894552;0.001919;,
 0.000033;-4.894552;0.001919;,
 0.000033;-4.894552;0.001919;,
 0.000645;4.894470;-0.000467;,
 0.000645;4.894470;-0.000467;,
 0.000645;4.894470;-0.000467;,
 0.000645;4.894470;-0.000467;,
 0.000645;4.894470;-0.000467;,
 0.000645;4.894470;-0.000467;,
 0.000645;4.894470;-0.000467;,
 0.000645;4.894470;-0.000467;,
 0.000033;-4.894552;0.001919;,
 0.227561;4.115143;-1.978673;,
 0.238482;2.307396;-3.483761;,
 0.204305;-0.034936;-4.525795;,
 0.128386;-2.416836;-3.874788;,
 0.056435;-4.201177;-1.949784;,
 -1.307822;4.093142;-1.315146;,
 -2.510517;2.331280;-2.367600;,
 -3.026028;-0.009978;-2.895759;,
 -2.380987;-2.330161;-2.445477;,
 -1.274924;-4.120273;-1.329489;,
 -1.953857;4.032953;0.012516;,
 -3.845487;2.288217;0.048315;,
 -4.906594;0.025745;0.175046;,
 -3.738508;-2.322734;0.283655;,
 -1.972277;-4.075409;0.182193;,
 -1.390704;4.115831;1.302736;,
 -2.633084;2.356964;2.443692;,
 -3.421969;-0.025576;3.274193;,
 -3.071483;-2.461839;3.232591;,
 -1.616479;-4.187087;1.863032;,
 -0.006979;4.157751;1.805128;,
 0.002563;2.391618;3.428474;,
 -0.028174;0.000478;4.494744;,
 -0.061586;-2.455465;4.276933;,
 -0.006502;-4.230877;2.535824;,
 1.408225;4.173197;1.397650;,
 2.737088;2.429114;2.483265;,
 3.452204;-0.023716;3.165034;,
 3.024387;-2.426470;2.981803;,
 1.681079;-4.179337;1.785749;,
 2.164441;4.192508;-0.069707;,
 4.237809;2.425656;-0.120049;,
 5.276372;-0.013877;-0.049164;,
 4.232563;-2.394727;0.109925;,
 2.136178;-4.078128;0.168066;,
 1.733882;4.183530;-1.598109;,
 3.110570;2.390584;-2.806533;,
 3.616624;-0.020114;-3.334575;,
 2.800504;-2.425069;-2.657191;,
 1.315088;-4.169924;-1.235740;;

 48;
 3;1,60,16;,
 4;3,59,60,0;,
 4;5,58,59,2;,
 4;7,57,58,4;,
 4;9,56,57,6;,
 3;23,56,8;,
 3;60,55,15;,
 4;59,54,55,60;,
 4;58,53,54,59;,
 4;57,52,53,58;,
 4;56,51,52,57;,
 3;22,51,56;,
 3;55,50,14;,
 4;54,49,50,55;,
 4;53,48,49,54;,
 4;52,47,48,53;,
 4;51,46,47,52;,
 3;21,46,51;,
 3;50,45,13;,
 4;49,44,45,50;,
 4;48,43,44,49;,
 4;47,42,43,48;,
 4;46,41,42,47;,
 3;20,41,46;,
 3;45,40,12;,
 4;44,39,40,45;,
 4;43,38,39,44;,
 4;42,37,38,43;,
 4;41,36,37,42;,
 3;19,36,41;,
 3;40,35,11;,
 4;39,34,35,40;,
 4;38,33,34,39;,
 4;37,32,33,38;,
 4;36,31,32,37;,
 3;18,31,36;,
 3;35,30,10;,
 4;34,29,30,35;,
 4;33,28,29,34;,
 4;32,27,28,33;,
 4;31,26,27,32;,
 3;17,26,31;,
 3;30,65,25;,
 4;29,64,65,30;,
 4;28,63,64,29;,
 4;27,62,63,28;,
 4;26,61,62,27;,
 3;24,61,26;;

 MeshMaterialList {
  1;
  48;
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
  "bgrnd50.ppm";
 }
 }
}
 MeshNormals {
  66;
  0.378547;-0.853393;-0.358362;,
  0.378547;-0.853393;-0.358362;,
  0.555050;-0.582191;-0.594116;,
  0.555050;-0.582191;-0.594116;,
  0.660077;-0.018440;-0.750971;,
  0.660077;-0.018440;-0.750971;,
  0.535594;0.550122;-0.640706;,
  0.535594;0.550122;-0.640706;,
  0.312320;0.865870;-0.390801;,
  0.312320;0.865870;-0.390801;,
  -0.006829;-0.998550;-0.053388;,
  -0.006829;-0.998550;-0.053388;,
  -0.006829;-0.998550;-0.053388;,
  -0.006829;-0.998550;-0.053388;,
  -0.006829;-0.998550;-0.053388;,
  -0.006829;-0.998550;-0.053388;,
  -0.006829;-0.998550;-0.053388;,
  -0.051180;0.998665;0.007036;,
  -0.051180;0.998665;0.007036;,
  -0.051180;0.998665;0.007036;,
  -0.051180;0.998665;0.007036;,
  -0.051180;0.998665;0.007036;,
  -0.051180;0.998665;0.007036;,
  -0.051180;0.998665;0.007036;,
  -0.051180;0.998665;0.007036;,
  -0.006829;-0.998550;-0.053388;,
  -0.070013;0.810155;-0.582020;,
  -0.070472;0.506125;-0.859576;,
  -0.066958;0.026829;-0.997395;,
  -0.049014;-0.543784;-0.837793;,
  -0.019229;-0.858866;-0.511839;,
  -0.402614;0.815374;-0.416013;,
  -0.574764;0.517443;-0.633955;,
  -0.684815;0.008457;-0.728668;,
  -0.615506;-0.510523;-0.600432;,
  -0.433343;-0.817071;-0.380275;,
  -0.554661;0.831838;-0.019927;,
  -0.815279;0.578179;-0.032082;,
  -0.997691;0.023149;-0.063855;,
  -0.836921;-0.539397;-0.092814;,
  -0.559945;-0.823803;-0.088371;,
  -0.394192;0.831770;0.390861;,
  -0.554124;0.573307;0.603545;,
  -0.681024;0.129260;0.720762;,
  -0.632176;-0.505991;0.586794;,
  -0.391844;-0.876054;0.281048;,
  -0.028844;0.820227;0.571310;,
  -0.011823;0.544156;0.838901;,
  0.010338;0.157835;0.987411;,
  0.023658;-0.436690;0.899301;,
  0.015270;-0.872230;0.488857;,
  0.329933;0.842535;0.425768;,
  0.528071;0.553633;0.643919;,
  0.656694;0.095596;0.748074;,
  0.606455;-0.493216;0.623659;,
  0.382412;-0.869044;0.313885;,
  0.494771;0.867752;0.046996;,
  0.813668;0.579678;0.043792;,
  0.999768;0.004164;0.021150;,
  0.808164;-0.588670;-0.018414;,
  0.507315;-0.860368;-0.048986;,
  0.312320;0.865870;-0.390801;,
  0.535594;0.550122;-0.640706;,
  0.660077;-0.018440;-0.750971;,
  0.555050;-0.582191;-0.594116;,
  0.378547;-0.853393;-0.358362;;

  48;
  3;1,60,16;,
  4;3,59,60,0;,
  4;5,58,59,2;,
  4;7,57,58,4;,
  4;9,56,57,6;,
  3;23,56,8;,
  3;60,55,15;,
  4;59,54,55,60;,
  4;58,53,54,59;,
  4;57,52,53,58;,
  4;56,51,52,57;,
  3;22,51,56;,
  3;55,50,14;,
  4;54,49,50,55;,
  4;53,48,49,54;,
  4;52,47,48,53;,
  4;51,46,47,52;,
  3;21,46,51;,
  3;50,45,13;,
  4;49,44,45,50;,
  4;48,43,44,49;,
  4;47,42,43,48;,
  4;46,41,42,47;,
  3;20,41,46;,
  3;45,40,12;,
  4;44,39,40,45;,
  4;43,38,39,44;,
  4;42,37,38,43;,
  4;41,36,37,42;,
  3;19,36,41;,
  3;40,35,11;,
  4;39,34,35,40;,
  4;38,33,34,39;,
  4;37,32,33,38;,
  4;36,31,32,37;,
  3;18,31,36;,
  3;35,30,10;,
  4;34,29,30,35;,
  4;33,28,29,34;,
  4;32,27,28,33;,
  4;31,26,27,32;,
  3;17,26,31;,
  3;30,65,25;,
  4;29,64,65,30;,
  4;28,63,64,29;,
  4;27,62,63,28;,
  4;26,61,62,27;,
  3;24,61,26;;
 }
 MeshTextureCoords { 
 66;
 0.000000;0.833333;,
 0.000000;0.833333;,
 0.000000;0.666667;,
 0.000000;0.666667;,
 0.000000;0.500000;,
 0.000000;0.500000;,
 0.000000;0.333333;,
 0.000000;0.333333;,
 0.000000;0.166667;,
 0.000000;0.166667;,
 0.750000;1.000000;,
 0.625000;1.000000;,
 0.500000;1.000000;,
 0.375000;1.000000;,
 0.250000;1.000000;,
 0.125000;1.000000;,
 0.000000;1.000000;,
 0.875000;0.000000;,
 0.750000;0.000000;,
 0.625000;0.000000;,
 0.500000;0.000000;,
 0.375000;0.000000;,
 0.250000;0.000000;,
 0.125000;0.000000;,
 1.000000;0.000000;,
 0.875000;1.000000;,
 0.875000;0.166667;,
 0.875000;0.333333;,
 0.875000;0.500000;,
 0.875000;0.666667;,
 0.875000;0.833333;,
 0.750000;0.166667;,
 0.750000;0.333333;,
 0.750000;0.500000;,
 0.750000;0.666667;,
 0.750000;0.833333;,
 0.625000;0.166667;,
 0.625000;0.333333;,
 0.625000;0.500000;,
 0.625000;0.666667;,
 0.625000;0.833333;,
 0.500000;0.166667;,
 0.500000;0.333333;,
 0.500000;0.500000;,
 0.500000;0.666667;,
 0.500000;0.833333;,
 0.375000;0.166667;,
 0.375000;0.333333;,
 0.375000;0.500000;,
 0.375000;0.666667;,
 0.375000;0.833333;,
 0.250000;0.166667;,
 0.250000;0.333333;,
 0.250000;0.500000;,
 0.250000;0.666667;,
 0.250000;0.833333;,
 0.125000;0.166667;,
 0.125000;0.333333;,
 0.125000;0.500000;,
 0.125000;0.666667;,
 0.125000;0.833333;,
 1.000000;0.166667;,
 1.000000;0.333333;,
 1.000000;0.500000;,
 1.000000;0.666667;,
 1.000000;0.833333;;
 }
}
}

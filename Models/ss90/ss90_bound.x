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

Frame frm-bounding_model {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bounding_model {
 4;
 -0.009428;-0.003333;0.000000;,
 0.000000;0.010000;0.000000;,
 0.004714;-0.003333;0.008165;,
 0.004714;-0.003333;-0.008165;;

 4;
 3;2,1,0;,
 3;3,0,1;,
 3;0,3,2;,
 3;1,2,3;;

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
}
Frame frm-bound04 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound04 {
 59;
 -1.082459;-18.254507;-0.529504;,
 -5.949976;2.566677;-2.924330;,
 -4.668323;2.566678;-0.529507;,
 5.977824;2.566684;-2.924326;,
 1.774951;-1.464332;-9.379415;,
 1.774951;-1.464332;-9.379415;,
 1.774951;-1.464332;-9.379415;,
 1.774951;-1.464332;-9.379415;,
 1.774951;-1.464332;-9.379415;,
 -1.747095;-1.464334;-9.379416;,
 -1.747095;-1.464334;-9.379416;,
 -1.747095;-1.464334;-9.379416;,
 -1.747095;-1.464334;-9.379416;,
 -2.362473;-19.988749;-2.917322;,
 -2.362473;-19.988749;-2.917322;,
 2.390335;-19.988745;-2.917320;,
 2.390335;-19.988745;-2.917320;,
 2.390335;-19.988745;-2.917320;,
 -5.949974;-1.481965;-2.917325;,
 -1.747099;2.566680;-6.599633;,
 -1.747099;2.566680;-6.599633;,
 1.774949;2.566682;-6.599632;,
 1.774949;2.566682;-6.599632;,
 -5.949976;2.566677;-2.048377;,
 -5.949976;2.566677;-2.048377;,
 -2.875391;-1.465285;0.212957;,
 -2.875391;-1.465285;0.212957;,
 -2.875391;-1.465285;0.212957;,
 2.903243;-1.465284;0.212959;,
 2.903243;-1.465284;0.212959;,
 2.903243;-1.465284;0.212959;,
 5.977824;-1.481960;-2.048373;,
 5.977824;-1.481960;-2.048373;,
 -5.949973;-1.481965;-2.048377;,
 -5.949973;-1.481965;-2.048377;,
 -5.949973;-1.481965;-2.048377;,
 5.977824;-1.481960;-2.048373;,
 2.903243;-1.465284;0.212959;,
 -2.875391;-1.465285;0.212957;,
 -5.949976;2.566677;-2.048377;,
 5.977824;2.566684;-2.048373;,
 1.774949;2.566682;-6.599632;,
 -1.747099;2.566680;-6.599633;,
 5.977824;-1.481960;-2.917321;,
 -5.949974;-1.481965;-2.917325;,
 2.390335;-19.988745;-2.917320;,
 -2.362473;-19.988749;-2.917322;,
 -2.362473;-19.988749;-2.048374;,
 2.390335;-19.988745;-2.048373;,
 -1.747095;-1.464334;-9.379416;,
 1.774951;-1.464332;-9.379415;,
 4.696168;2.566683;-0.529504;,
 5.977824;2.566684;-2.924326;,
 1.110318;-18.254507;-0.529503;,
 0.607673;-15.095705;-6.647984;,
 -4.668323;2.566678;-0.529507;,
 -5.949976;2.566677;-2.924330;,
 -1.082459;-18.254507;-0.529504;,
 -0.579812;-15.095705;-6.647984;;

 25;
 4;34,47,0,27;,
 4;26,57,53,30;,
 3;17,54,8;,
 4;20,1,3,22;,
 4;48,53,57,47;,
 4;24,2,51,40;,
 4;7,54,58,12;,
 4;14,58,54,16;,
 3;56,19,11;,
 4;15,48,47,13;,
 3;10,58,46;,
 3;6,21,52;,
 3;45,5,43;,
 4;41,4,9,42;,
 3;49,18,56;,
 3;52,43,50;,
 4;40,52,56,23;,
 4;56,44,49,46;,
 4;32,40,51,29;,
 5;33,39,56,46,47;,
 6;31,48,45,43,52,40;,
 4;28,51,55,25;,
 4;37,53,48,36;,
 3;55,39,35;,
 3;38,55,35;;

 MeshNormals {
  59;
  -0.229578;-0.298997;0.926226;,
  -0.746334;0.473840;-0.467398;,
  -0.458088;0.336646;0.822694;,
  0.703239;0.616537;-0.354030;,
  0.583611;0.093262;-0.806660;,
  0.583611;0.093262;-0.806660;,
  0.583611;0.093262;-0.806660;,
  0.583611;0.093262;-0.806660;,
  0.583611;0.093262;-0.806660;,
  -0.596286;0.092280;-0.797451;,
  -0.596286;0.092280;-0.797451;,
  -0.596286;0.092280;-0.797451;,
  -0.596286;0.092280;-0.797451;,
  -0.642629;-0.528888;-0.554351;,
  -0.642629;-0.528888;-0.554351;,
  0.668363;-0.546877;-0.504199;,
  0.668363;-0.546877;-0.504199;,
  0.668363;-0.546877;-0.504199;,
  -0.858481;-0.085268;-0.505707;,
  -0.226053;0.784823;-0.577020;,
  -0.226053;0.784823;-0.577020;,
  0.226053;0.784824;-0.577020;,
  0.226053;0.784824;-0.577020;,
  -0.669597;0.733017;0.119691;,
  -0.669597;0.733017;0.119691;,
  -0.322982;-0.023634;0.946110;,
  -0.322982;-0.023634;0.946110;,
  -0.322982;-0.023634;0.946110;,
  0.342474;-0.013504;0.939430;,
  0.342474;-0.013504;0.939430;,
  0.342474;-0.013504;0.939430;,
  0.823081;-0.125041;0.553987;,
  0.823081;-0.125041;0.553987;,
  -0.834570;-0.107164;0.540378;,
  -0.834570;-0.107164;0.540378;,
  -0.834570;-0.107164;0.540378;,
  0.823081;-0.125041;0.553987;,
  0.342474;-0.013504;0.939430;,
  -0.322982;-0.023634;0.946110;,
  -0.669597;0.733017;0.119691;,
  0.682476;0.660366;0.313277;,
  0.226053;0.784824;-0.577020;,
  -0.226053;0.784823;-0.577020;,
  0.920097;-0.110374;-0.375818;,
  -0.858481;-0.085268;-0.505707;,
  0.668363;-0.546877;-0.504199;,
  -0.642629;-0.528888;-0.554351;,
  -0.518594;-0.713365;0.471349;,
  0.548752;-0.655679;0.518610;,
  -0.596286;0.092280;-0.797451;,
  0.583611;0.093262;-0.806660;,
  0.307535;0.486992;0.817473;,
  0.703239;0.616537;-0.354030;,
  0.229577;-0.298997;0.926226;,
  0.284134;-0.367437;-0.885583;,
  -0.458088;0.336646;0.822694;,
  -0.746334;0.473840;-0.467398;,
  -0.229578;-0.298997;0.926226;,
  -0.284134;-0.367437;-0.885583;;

  25;
  4;34,47,0,27;,
  4;26,57,53,30;,
  3;17,54,8;,
  4;20,1,3,22;,
  4;48,53,57,47;,
  4;24,2,51,40;,
  4;7,54,58,12;,
  4;14,58,54,16;,
  3;56,19,11;,
  4;15,48,47,13;,
  3;10,58,46;,
  3;6,21,52;,
  3;45,5,43;,
  4;41,4,9,42;,
  3;49,18,56;,
  3;52,43,50;,
  4;40,52,56,23;,
  4;56,44,49,46;,
  4;32,40,51,29;,
  5;33,39,56,46,47;,
  6;31,48,45,43,52,40;,
  4;28,51,55,25;,
  4;37,53,48,36;,
  3;55,39,35;,
  3;38,55,35;;
 }
}
}
Frame frm-bound02 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,-1.000000,0.000000,0.000000,
-10.481469,4.147110,2.269423,1.000000;;
 }
Mesh bound02 {
 20;
 15.201101;-3.493117;6.922224;,
 15.201110;-3.493137;-6.321027;,
 15.205642;1.222856;6.454263;,
 15.205642;1.222856;6.454263;,
 15.205649;1.222839;-4.432576;,
 15.205649;1.222839;-4.432576;,
 30.534227;-3.493111;6.922227;,
 30.534235;-3.493132;-6.321023;,
 29.002815;1.222862;6.454267;,
 29.002815;1.222862;6.454267;,
 29.002821;1.222845;-4.432574;,
 29.002821;1.222845;-4.432574;,
 29.002821;1.222845;-4.432574;,
 29.002815;1.222862;6.454267;,
 30.534235;-3.493132;-6.321023;,
 30.534227;-3.493111;6.922227;,
 15.205649;1.222839;-4.432576;,
 15.205642;1.222856;6.454263;,
 15.201110;-3.493137;-6.321027;,
 15.201101;-3.493117;6.922224;;

 6;
 4;3,5,1,0;,
 4;11,4,2,9;,
 4;10,8,6,7;,
 4;13,17,19,15;,
 4;19,18,14,15;,
 4;14,18,16,12;;

 MeshNormals {
  20;
  -0.597531;-0.537953;0.594612;,
  -0.665881;-0.417706;-0.618162;,
  -0.559052;0.614793;0.556319;,
  -0.559052;0.614793;0.556319;,
  -0.516665;0.709227;-0.479640;,
  -0.516665;0.709227;-0.479640;,
  0.634665;-0.395304;0.664029;,
  0.695811;-0.233671;-0.679150;,
  0.483090;0.714951;0.505440;,
  0.483090;0.714951;0.505440;,
  0.443901;0.784364;-0.433273;,
  0.443901;0.784364;-0.433273;,
  0.443901;0.784364;-0.433273;,
  0.483090;0.714951;0.505440;,
  0.695811;-0.233671;-0.679150;,
  0.634665;-0.395304;0.664029;,
  -0.516665;0.709227;-0.479640;,
  -0.559052;0.614793;0.556319;,
  -0.665881;-0.417706;-0.618162;,
  -0.597531;-0.537953;0.594612;;

  6;
  4;3,5,1,0;,
  4;11,4,2,9;,
  4;10,8,6,7;,
  4;13,17,19,15;,
  4;19,18,14,15;,
  4;14,18,16,12;;
 }
}
}
Frame frm-bound03 {
  FrameTransformMatrix {
-1.000000,0.000000,-0.000000,0.000000,
-0.000000,0.000000,1.000000,0.000000,
0.000000,1.000000,-0.000000,0.000000,
-0.000786,6.296331,-1.135964,1.000000;;
 }
Mesh bound03 {
 24;
 1.731040;-2.454777;6.429682;,
 1.731040;-2.454777;6.429682;,
 1.731036;-12.159769;6.429681;,
 1.731036;-12.159769;6.429681;,
 -1.684080;-2.454775;6.429681;,
 -1.684080;-2.454775;6.429681;,
 -1.684084;-12.159726;6.429680;,
 -1.684084;-12.159726;6.429680;,
 1.731042;-2.454776;-3.023152;,
 1.731042;-2.454776;-3.023152;,
 1.731038;-12.159769;-3.023152;,
 1.731038;-12.159769;-3.023152;,
 -1.684078;-2.454775;-3.023153;,
 -1.684078;-2.454775;-3.023153;,
 -1.684082;-12.159725;-3.023153;,
 -1.684082;-12.159725;-3.023153;,
 -1.684082;-12.159725;-3.023153;,
 -1.684078;-2.454775;-3.023153;,
 1.731038;-12.159769;-3.023152;,
 1.731042;-2.454776;-3.023152;,
 -1.684084;-12.159726;6.429680;,
 -1.684080;-2.454775;6.429681;,
 1.731036;-12.159769;6.429681;,
 1.731040;-2.454777;6.429682;;

 6;
 4;3,7,15,11;,
 4;1,2,10,9;,
 4;13,8,18,14;,
 4;5,0,19,12;,
 4;16,6,4,17;,
 4;23,21,20,22;;

 MeshNormals {
  24;
  0.577350;0.577350;0.577350;,
  0.577350;0.577350;0.577350;,
  0.577345;-0.577353;0.577353;,
  0.577345;-0.577353;0.577353;,
  -0.577350;0.577350;0.577350;,
  -0.577350;0.577350;0.577350;,
  -0.577355;-0.577348;0.577348;,
  -0.577355;-0.577348;0.577348;,
  0.577351;0.577350;-0.577350;,
  0.577351;0.577350;-0.577350;,
  0.577345;-0.577353;-0.577353;,
  0.577345;-0.577353;-0.577353;,
  -0.577350;0.577351;-0.577350;,
  -0.577350;0.577351;-0.577350;,
  -0.577355;-0.577348;-0.577348;,
  -0.577355;-0.577348;-0.577348;,
  -0.577355;-0.577348;-0.577348;,
  -0.577350;0.577351;-0.577350;,
  0.577345;-0.577353;-0.577353;,
  0.577351;0.577350;-0.577350;,
  -0.577355;-0.577348;0.577348;,
  -0.577350;0.577350;0.577350;,
  0.577345;-0.577353;0.577353;,
  0.577350;0.577350;0.577350;;

  6;
  4;3,7,15,11;,
  4;1,2,10,9;,
  4;13,8,18,14;,
  4;5,0,19,12;,
  4;16,6,4,17;,
  4;23,21,20,22;;
 }
}
}
Frame frm-bound01 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,-1.000000,0.000000,0.000000,
-0.002056,7.290279,-2.936135,1.000000;;
 }
Mesh bound01 {
 68;
 2.746917;-2.746917;4.333290;,
 2.746917;-2.746917;4.333290;,
 2.746917;-2.746917;4.333290;,
 2.102399;-2.749102;8.006876;,
 2.102399;-2.749102;8.006876;,
 2.102399;-2.749102;8.006876;,
 2.102399;-2.749102;8.006876;,
 1.137810;-1.137810;10.461487;,
 1.137810;-1.137810;10.461487;,
 1.609107;0.000000;10.461487;,
 1.609107;0.000000;10.461487;,
 -0.000000;-1.609107;10.461487;,
 -0.000000;-1.609107;10.461487;,
 -2.746917;-2.746917;4.333290;,
 -2.746917;-2.746917;4.333290;,
 -2.746917;-2.746917;4.333290;,
 -2.746917;-2.746917;4.333290;,
 -2.102400;-2.749102;8.006876;,
 -2.102400;-2.749102;8.006876;,
 -2.102400;-2.749102;8.006876;,
 -2.102400;-2.749102;8.006876;,
 -1.137810;-1.137810;10.461487;,
 -1.609107;0.000000;10.461487;,
 -1.137810;1.137811;10.461487;,
 -0.000000;1.609107;10.461487;,
 -0.000000;1.609107;10.461487;,
 -0.000000;1.609107;10.461487;,
 -0.000000;1.609107;10.461487;,
 1.137810;1.137811;10.461487;,
 1.137810;1.137811;10.461487;,
 -0.000000;-2.749102;8.006876;,
 -0.000000;-2.749102;8.006876;,
 -0.000000;-2.749102;8.006876;,
 -0.000000;-2.746917;4.333290;,
 -0.000000;-2.746917;4.333290;,
 -0.000000;-2.746917;4.333290;,
 -0.000000;-2.746917;4.333290;,
 -0.000000;-2.749102;8.006876;,
 1.137810;1.137811;10.461487;,
 2.102399;2.102400;8.006876;,
 1.669608;1.543058;1.210307;,
 2.746917;2.099709;4.333289;,
 -0.000000;1.609107;10.461487;,
 -0.000000;2.973242;8.006875;,
 -0.000294;2.234754;1.210307;,
 0.000000;3.237518;4.333289;,
 -1.137810;1.137811;10.461487;,
 -2.102400;2.102400;8.006876;,
 -1.670197;1.543057;1.210307;,
 -2.746917;2.099708;4.333289;,
 -1.609107;0.000000;10.461487;,
 -2.973242;0.000000;8.006876;,
 -2.361893;-0.126845;1.210307;,
 -3.884727;-0.000000;4.333289;,
 -1.137810;-1.137810;10.461487;,
 -2.102400;-2.749102;8.006876;,
 -1.670197;-1.796748;1.210307;,
 -2.746917;-2.746917;4.333290;,
 -0.000000;-1.609107;10.461487;,
 -0.000294;-2.488444;1.210307;,
 1.609107;0.000000;10.461487;,
 1.137810;-1.137810;10.461487;,
 2.973242;0.000000;8.006876;,
 2.102399;-2.749102;8.006876;,
 1.669609;-1.796748;1.210307;,
 2.361305;-0.126845;1.210307;,
 3.884728;-0.000000;4.333289;,
 2.746917;-2.746917;4.333290;;

 32;
 4;64,65,66,2;,
 4;1,66,62,6;,
 4;5,62,10,8;,
 3;16,56,59;,
 5;27,23,22,21,12;,
 4;52,56,15,53;,
 4;53,14,20,51;,
 4;51,19,54,50;,
 4;48,52,53,49;,
 4;49,53,51,47;,
 4;47,51,50,46;,
 4;44,48,49,45;,
 4;45,49,47,43;,
 3;47,46,26;,
 4;40,44,45,41;,
 4;41,45,43,39;,
 3;39,43,25;,
 4;65,40,41,66;,
 4;66,41,39,62;,
 4;62,39,29,9;,
 5;11,7,60,28,24;,
 3;4,61,58;,
 4;35,0,3,32;,
 3;59,64,67;,
 3;34,13,59;,
 3;58,54,18;,
 3;31,63,58;,
 4;30,17,57,33;,
 3;59,67,36;,
 3;58,55,37;,
 3;42,38,39;,
 3;42,43,47;;

 MeshNormals {
  68;
  0.464413;-0.872334;-0.152820;,
  0.464413;-0.872334;-0.152820;,
  0.464413;-0.872334;-0.152820;,
  0.487441;-0.789543;0.372858;,
  0.487441;-0.789543;0.372858;,
  0.487441;-0.789543;0.372858;,
  0.487441;-0.789543;0.372858;,
  0.495225;-0.427207;0.756470;,
  0.495225;-0.427207;0.756470;,
  0.720169;0.027443;0.693255;,
  0.720169;0.027443;0.693255;,
  0.000000;-0.702891;0.711297;,
  0.000000;-0.702891;0.711297;,
  -0.464439;-0.872327;-0.152783;,
  -0.464439;-0.872327;-0.152783;,
  -0.464439;-0.872327;-0.152783;,
  -0.464439;-0.872327;-0.152783;,
  -0.487441;-0.789543;0.372858;,
  -0.487441;-0.789543;0.372858;,
  -0.487441;-0.789543;0.372858;,
  -0.487441;-0.789543;0.372858;,
  -0.495225;-0.427207;0.756470;,
  -0.720169;0.027443;0.693255;,
  -0.514424;0.514424;0.686102;,
  -0.000000;0.727506;0.686101;,
  -0.000000;0.727506;0.686101;,
  -0.000000;0.727506;0.686101;,
  -0.000000;0.727506;0.686101;,
  0.514424;0.514424;0.686101;,
  0.514424;0.514424;0.686101;,
  0.000000;-0.981346;0.192248;,
  0.000000;-0.981346;0.192248;,
  0.000000;-0.981346;0.192248;,
  0.000000;-0.999144;-0.041365;,
  0.000000;-0.999144;-0.041365;,
  0.000000;-0.999144;-0.041365;,
  0.000000;-0.999144;-0.041365;,
  0.000000;-0.981346;0.192248;,
  0.514424;0.514424;0.686101;,
  0.604619;0.724012;0.332028;,
  0.625542;0.694416;-0.355645;,
  0.671584;0.734151;-0.099986;,
  -0.000000;0.727506;0.686101;,
  -0.000000;0.965032;0.262130;,
  -0.000013;0.952122;-0.305719;,
  -0.000006;0.993942;-0.109908;,
  -0.514424;0.514424;0.686102;,
  -0.604619;0.724012;0.332028;,
  -0.625581;0.694432;-0.355545;,
  -0.671593;0.734148;-0.099945;,
  -0.720169;0.027443;0.693255;,
  -0.938532;0.041587;0.342679;,
  -0.904614;0.029330;-0.425221;,
  -0.992510;0.040684;-0.115190;,
  -0.495225;-0.427207;0.756470;,
  -0.487441;-0.789543;0.372858;,
  -0.639798;-0.645576;-0.417002;,
  -0.464439;-0.872327;-0.152783;,
  0.000000;-0.702891;0.711297;,
  -0.000006;-0.973389;-0.229160;,
  0.720169;0.027443;0.693255;,
  0.495225;-0.427207;0.756470;,
  0.938532;0.041587;0.342679;,
  0.487441;-0.789543;0.372858;,
  0.639753;-0.645557;-0.417101;,
  0.904549;0.029329;-0.425360;,
  0.992501;0.040684;-0.115266;,
  0.464413;-0.872334;-0.152820;;

  32;
  4;64,65,66,2;,
  4;1,66,62,6;,
  4;5,62,10,8;,
  3;16,56,59;,
  5;27,23,22,21,12;,
  4;52,56,15,53;,
  4;53,14,20,51;,
  4;51,19,54,50;,
  4;48,52,53,49;,
  4;49,53,51,47;,
  4;47,51,50,46;,
  4;44,48,49,45;,
  4;45,49,47,43;,
  3;47,46,26;,
  4;40,44,45,41;,
  4;41,45,43,39;,
  3;39,43,25;,
  4;65,40,41,66;,
  4;66,41,39,62;,
  4;62,39,29,9;,
  5;11,7,60,28,24;,
  3;4,61,58;,
  4;35,0,3,32;,
  3;59,64,67;,
  3;34,13,59;,
  3;58,54,18;,
  3;31,63,58;,
  4;30,17,57,33;,
  3;59,67,36;,
  3;58,55,37;,
  3;42,38,39;,
  3;42,43,47;;
 }
}
}
Frame frm-bound05 {
  FrameTransformMatrix {
-1.000000,0.000000,-0.000000,0.000000,
-0.000000,0.000000,1.000000,0.000000,
0.000000,1.000000,-0.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound05 {
 46;
 1.580293;1.355845;-2.493308;,
 1.580293;1.355845;-2.493308;,
 2.234872;2.936138;-2.493308;,
 2.234872;2.936138;-2.493308;,
 0.000000;0.701267;-2.493308;,
 0.000000;0.701267;-2.493308;,
 -1.580292;1.355845;-2.493308;,
 -2.234871;2.936138;-2.493308;,
 -1.580292;4.516430;-2.493308;,
 0.000000;5.171009;-2.493308;,
 0.000000;5.171009;-2.493308;,
 0.000000;5.171009;-2.493308;,
 1.580293;4.516430;-2.493308;,
 1.580293;4.516430;-2.493308;,
 0.000000;-0.879026;-7.356956;,
 0.000000;-0.882060;-4.441412;,
 1.580293;4.516430;-2.493308;,
 2.920000;5.856137;-4.441412;,
 2.318902;5.079274;-8.676818;,
 3.815164;5.852400;-7.356956;,
 0.000000;5.171009;-2.493308;,
 0.000000;7.065641;-4.441413;,
 -0.000408;6.039963;-8.676818;,
 0.000000;7.432692;-7.356956;,
 -1.580292;4.516430;-2.493308;,
 -2.920000;5.856137;-4.441412;,
 -2.319718;5.079274;-8.676818;,
 -3.815163;5.852399;-7.356956;,
 -2.234871;2.936138;-2.493308;,
 -4.129503;2.936138;-4.441412;,
 -3.280408;2.759964;-8.676818;,
 -5.395456;2.936138;-7.356956;,
 -1.580292;1.355845;-2.493308;,
 -2.920000;-0.882060;-4.441412;,
 -2.319718;0.440654;-8.676818;,
 -3.815163;-0.879026;-7.356956;,
 0.000000;0.701267;-2.493308;,
 -0.000408;-0.520035;-8.676818;,
 2.234872;2.936138;-2.493308;,
 1.580293;1.355845;-2.493308;,
 4.129504;2.936138;-4.441412;,
 2.920000;-0.882060;-4.441412;,
 2.318902;0.440655;-8.676818;,
 3.279591;2.759964;-8.676818;,
 5.395456;2.936138;-7.356956;,
 3.815164;-0.879026;-7.356956;;

 32;
 4;42,43,44,45;,
 4;45,44,40,41;,
 4;41,40,3,1;,
 3;35,34,37;,
 5;11,8,7,6,5;,
 4;30,34,35,31;,
 4;31,35,33,29;,
 4;29,33,32,28;,
 4;26,30,31,27;,
 4;27,31,29,25;,
 4;25,29,28,24;,
 4;22,26,27,23;,
 3;23,27,25;,
 4;21,25,24,10;,
 4;18,22,23,19;,
 3;23,21,17;,
 4;17,21,9,13;,
 4;43,18,19,44;,
 4;44,19,17,40;,
 4;40,17,12,2;,
 5;4,0,38,16,20;,
 3;41,39,36;,
 4;14,45,41,15;,
 3;37,42,45;,
 3;14,35,37;,
 3;36,32,33;,
 3;15,41,36;,
 4;15,33,35,14;,
 3;37,45,14;,
 3;36,33,15;,
 3;25,21,23;,
 3;17,19,23;;

 MeshNormals {
  46;
  0.327858;-0.285400;0.900586;,
  0.327858;-0.285400;0.900586;,
  0.499725;0.018535;0.865986;,
  0.499725;0.018535;0.865986;,
  -0.000000;-0.481052;0.876692;,
  -0.000000;-0.481052;0.876692;,
  -0.327858;-0.285400;0.900586;,
  -0.499725;0.018535;0.865986;,
  -0.358498;0.358498;0.861950;,
  -0.000000;0.380868;0.924629;,
  -0.000000;0.380868;0.924629;,
  -0.000000;0.380868;0.924629;,
  0.358498;0.358498;0.861950;,
  0.358498;0.358498;0.861950;,
  0.000000;-0.991128;-0.132909;,
  -0.000000;-0.942516;0.334160;,
  0.358498;0.358498;0.861950;,
  0.570259;0.708749;0.415307;,
  0.412575;0.472845;-0.778588;,
  0.633161;0.697773;-0.334992;,
  -0.000000;0.380868;0.924629;,
  -0.000000;0.898547;0.438878;,
  -0.000017;0.687864;-0.725840;,
  -0.000006;0.982956;-0.183840;,
  -0.358498;0.358498;0.861950;,
  -0.570259;0.708749;0.415306;,
  -0.412667;0.472923;-0.778492;,
  -0.633186;0.697787;-0.334915;,
  -0.499725;0.018535;0.865986;,
  -0.839012;0.036572;0.542882;,
  -0.543334;0.018489;-0.839313;,
  -0.948078;0.041054;-0.315379;,
  -0.327858;-0.285400;0.900586;,
  -0.427966;-0.689096;0.584801;,
  -0.388109;-0.393635;-0.833320;,
  -0.405216;-0.806254;-0.430992;,
  -0.000000;-0.481052;0.876692;,
  -0.000007;-0.817058;-0.576555;,
  0.499725;0.018535;0.865986;,
  0.327858;-0.285400;0.900586;,
  0.839012;0.036572;0.542882;,
  0.427966;-0.689096;0.584801;,
  0.388019;-0.393570;-0.833393;,
  0.543180;0.018484;-0.839412;,
  0.948049;0.041054;-0.315465;,
  0.405180;-0.806243;-0.431047;;

  32;
  4;42,43,44,45;,
  4;45,44,40,41;,
  4;41,40,3,1;,
  3;35,34,37;,
  5;11,8,7,6,5;,
  4;30,34,35,31;,
  4;31,35,33,29;,
  4;29,33,32,28;,
  4;26,30,31,27;,
  4;27,31,29,25;,
  4;25,29,28,24;,
  4;22,26,27,23;,
  3;23,27,25;,
  4;21,25,24,10;,
  4;18,22,23,19;,
  3;23,21,17;,
  4;17,21,9,13;,
  4;43,18,19,44;,
  4;44,19,17,40;,
  4;40,17,12,2;,
  5;4,0,38,16,20;,
  3;41,39,36;,
  4;14,45,41,15;,
  3;37,42,45;,
  3;14,35,37;,
  3;36,32,33;,
  3;15,41,36;,
  4;15,33,35,14;,
  3;37,45,14;,
  3;36,33,15;,
  3;25,21,23;,
  3;17,19,23;;
 }
}
}
Frame frm-bound06 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,-1.000000,0.000000,0.000000,
6.242126,4.535888,-0.221050,1.000000;;
 }
Mesh bound06 {
 19;
 -1.180637;-1.627470;-0.761153;,
 -5.132091;2.222406;-0.305380;,
 -5.132091;2.222405;0.305269;,
 7.605979;-0.323852;-0.305376;,
 7.605979;-0.323852;-0.305376;,
 8.540253;-2.023485;0.761048;,
 8.540253;-2.023485;0.761048;,
 7.605978;-0.323853;0.305273;,
 7.605978;-0.323853;0.305273;,
 8.540253;-2.023485;-0.761149;,
 8.540253;-2.023485;-0.761149;,
 8.540253;-2.023485;-0.761149;,
 7.605978;-0.323853;0.305273;,
 8.540253;-2.023485;0.761048;,
 7.605979;-0.323852;-0.305376;,
 -5.132091;2.222405;0.305269;,
 -5.132091;2.222406;-0.305380;,
 -1.180637;-1.627470;-0.761153;,
 -1.180638;-1.627470;0.761045;;

 6;
 4;4,1,2,8;,
 4;10,0,16,3;,
 4;18,6,7,15;,
 4;5,18,17,9;,
 3;11,14,12;,
 3;12,13,11;;

 MeshNormals {
  19;
  -0.013142;-0.639009;-0.769087;,
  0.142938;0.755947;-0.638837;,
  0.142938;0.755947;0.638837;,
  0.507846;0.755615;-0.413689;,
  0.507846;0.755615;-0.413689;,
  0.637634;-0.248485;0.729163;,
  0.637634;-0.248485;0.729163;,
  0.651288;0.697842;0.298061;,
  0.651288;0.697842;0.298061;,
  0.867837;0.073368;-0.491403;,
  0.867837;0.073368;-0.491403;,
  0.867837;0.073368;-0.491403;,
  0.651288;0.697842;0.298061;,
  0.637634;-0.248485;0.729163;,
  0.507846;0.755615;-0.413689;,
  0.142938;0.755947;0.638837;,
  0.142938;0.755947;-0.638837;,
  -0.013142;-0.639009;-0.769087;,
  -0.013142;-0.639009;0.769087;;

  6;
  4;4,1,2,8;,
  4;10,0,16,3;,
  4;18,6,7,15;,
  4;5,18,17,9;,
  3;11,14,12;,
  3;12,13,11;;
 }
}
}
}
AnimationSet {
 Animation anim-bound02 {
  {frm-bound02}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, 0.707107, 0.000000, 0.000000;;,
  100; 4; 0.707107, 0.707107, 0.000000, 0.000000;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; -10.481469, 4.147110, 2.269423;;,
  100; 3; -10.481469, 4.147110, 2.269423;;;
  }
 }
 Animation anim-bound03 {
  {frm-bound03}
  AnimationKey {
  0;
  2;
  1; 4; -0.000000, 0.000000, -0.707107, 0.707107;;,
  100; 4; -0.000000, 0.000000, -0.707107, 0.707107;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; -0.000786, 6.296331, -1.135964;;,
  100; 3; -0.000786, 6.296331, -1.135964;;;
  }
 }
 Animation anim-bound01 {
  {frm-bound01}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, 0.707107, 0.000000, 0.000000;;,
  100; 4; 0.707107, 0.707107, 0.000000, 0.000000;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; -0.002056, 7.290279, -2.936135;;,
  100; 3; -0.002056, 7.290279, -2.936135;;;
  }
 }
 Animation anim-bound05 {
  {frm-bound05}
  AnimationKey {
  0;
  2;
  1; 4; -0.000000, 0.000000, -0.707107, 0.707107;;,
  100; 4; -0.000000, 0.000000, -0.707107, 0.707107;;;
  }
 }
 Animation anim-bound06 {
  {frm-bound06}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, 0.707107, 0.000000, 0.000000;;,
  100; 4; 0.707107, 0.707107, 0.000000, 0.000000;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 6.242126, 4.535888, -0.221050;;,
  100; 3; 6.242126, 4.535888, -0.221050;;;
  }
 }
}

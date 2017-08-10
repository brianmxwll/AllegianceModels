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

Frame frm-bound {
  FrameTransformMatrix {
-1.000000,0.000000,-0.000000,0.000000,
-0.000000,0.000000,1.000000,0.000000,
0.000000,1.000000,-0.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound {
 118;
 2.011113;-17.335068;-13.392650;,
 -2.012228;-17.335068;-13.392650;,
 -2.012227;-3.706444;-13.392645;,
 2.011114;-3.706444;-13.392645;,
 12.604484;-17.335073;4.953676;,
 10.592813;-17.335075;8.437992;,
 10.592813;-3.706451;8.437998;,
 12.604483;-3.706450;4.953682;,
 -10.592256;-17.335075;8.438957;,
 -12.603927;-17.335073;4.954641;,
 -12.603927;-3.706450;4.954645;,
 -10.592257;-3.706451;8.438961;,
 0.171699;-17.335072;2.421358;,
 0.171698;-3.706450;2.421363;,
 2.011113;-17.335072;-1.359384;,
 2.011114;-3.706449;-1.359378;,
 -2.012228;-17.335072;-1.359436;,
 -2.012227;-3.706448;-1.359430;,
 -22.194656;1.158459;1.130108;,
 22.194656;1.158458;1.129966;,
 21.557072;3.018458;-0.453402;,
 21.557072;3.018457;0.453257;,
 22.194656;1.158459;-1.130110;,
 -22.194656;1.158458;-1.129969;,
 -21.557072;3.018457;-0.453260;,
 -21.557072;3.018458;0.453399;,
 1.032185;4.420995;1.289903;,
 1.032187;4.420996;-1.290093;,
 0.696300;7.108936;-0.517594;,
 0.696299;7.108936;0.517404;,
 -0.989598;4.420995;-1.289903;,
 -0.989600;4.420996;1.290093;,
 -0.664360;7.108936;0.517595;,
 -0.664359;7.108936;-0.517404;,
 0.538575;8.227040;-0.538572;,
 0.538575;8.227040;0.538578;,
 -0.538575;8.227040;0.538578;,
 -0.538575;8.227040;-0.538572;,
 0.000000;8.388391;2.896197;,
 2.896197;8.388391;0.000000;,
 -2.896197;8.388391;0.000000;,
 0.000000;8.388391;-2.896197;,
 2.896197;10.673672;0.000000;,
 0.000000;10.673672;2.896197;,
 -2.896197;10.673672;0.000000;,
 0.000000;10.673672;-2.896197;,
 0.426897;0.606330;5.300031;,
 0.729423;2.275712;5.291074;,
 -1.031949;2.275712;5.291074;,
 0.729423;0.606334;-5.300031;,
 -0.426897;0.606334;-5.300031;,
 -0.729423;2.275716;-5.291072;,
 1.031949;2.275716;-5.291072;,
 -0.729423;0.606330;5.300031;,
 -5.977825;0.600199;-5.293252;,
 5.949978;0.600199;-5.293259;,
 5.949978;0.600195;5.293259;,
 -5.977825;0.600195;5.293252;,
 5.949975;0.593189;9.341901;,
 -5.977825;0.593189;9.341895;,
 5.949975;0.593195;-9.341901;,
 -5.977825;0.593195;-9.341895;,
 -2.903244;-2.537086;-9.325220;,
 2.875391;-2.537086;-9.325222;,
 2.875391;-2.537093;9.325220;,
 -2.903244;-2.537092;9.325218;,
 4.668324;-1.794628;5.293257;,
 -4.696170;-1.794628;5.293252;,
 4.668324;-1.794628;-5.293257;,
 -4.696170;-1.794628;-5.293252;,
 1.747101;4.275501;5.293257;,
 -1.774948;4.275501;5.293255;,
 1.747101;4.275501;-5.293257;,
 -1.774948;4.275501;-5.293255;,
 -1.774948;7.055283;9.324270;,
 1.747098;7.055283;9.324272;,
 -1.774948;7.055283;-9.324270;,
 1.747098;7.055283;-9.324272;,
 -2.390335;0.593182;27.848679;,
 -1.110319;-1.794636;26.114441;,
 1.082459;-1.794636;-26.114441;,
 2.362475;0.593182;-27.848682;,
 1.022743;4.367972;-2.773356;,
 -1.022743;4.367970;2.773359;,
 -1.022743;4.367972;-2.773356;,
 -1.431455;0.372122;-1.431455;,
 1.431455;0.372122;-1.431455;,
 1.082459;-1.794636;26.114441;,
 2.362475;0.593182;27.848682;,
 1.022743;4.367970;2.773359;,
 1.431455;0.372121;1.431455;,
 -1.110319;-1.794636;-26.114441;,
 -1.431455;0.372121;1.431455;,
 -2.390335;0.593182;-27.848679;,
 -10.424357;-1.014773;-2.072287;,
 -10.533250;0.101573;-2.931760;,
 -10.424357;-1.014774;1.859178;,
 -10.533250;0.101571;2.718654;,
 10.424357;-1.014774;1.859178;,
 10.533250;0.101571;2.718654;,
 10.424357;-1.014773;-2.072287;,
 10.533250;0.101573;-2.931760;,
 -10.327764;-1.928270;6.390436;,
 -10.332294;1.216006;4.505757;,
 -10.327751;-1.928265;-6.826328;,
 -10.332285;1.216011;-6.359308;,
 10.327763;-1.928270;-6.390437;,
 10.332294;1.216006;-4.505758;,
 10.327752;-1.928265;6.826327;,
 10.332286;1.216011;6.359307;,
 28.115602;1.216004;-4.505755;,
 29.643950;-1.928274;-6.390431;,
 28.115595;1.216009;6.359313;,
 29.643942;-1.928269;6.826333;,
 -28.115595;1.216009;-6.359315;,
 -29.643942;-1.928269;-6.826335;,
 -28.115602;1.216004;4.505753;,
 -29.643950;-1.928274;6.390429;;

 131;
 4;117,116,114,115;,
 4;112,110,107,109;,
 4;110,112,113,111;,
 4;103,116,117,102;,
 4;107,110,111,106;,
 4;105,114,116,103;,
 4;109,108,113,112;,
 4;104,115,114,105;,
 4;98,108,109,99;,
 4;106,111,113,108;,
 4;107,101,99,109;,
 4;107,106,100,101;,
 4;98,100,106,108;,
 4;99,101,82,89;,
 4;101,100,86,82;,
 4;100,98,90,86;,
 4;98,99,89,90;,
 4;105,95,94,104;,
 4;102,96,97,103;,
 4;103,97,95,105;,
 4;102,117,115,104;,
 4;104,94,96,102;,
 4;83,84,95,97;,
 3;58,64,66;,
 4;96,94,85,92;,
 4;94,95,84,85;,
 4;97,96,92,83;,
 4;64,87,79,65;,
 4;79,87,88,78;,
 4;80,91,93,81;,
 3;61,62,69;,
 4;74,78,88,75;,
 4;77,81,93,76;,
 4;72,77,76,73;,
 3;74,71,57;,
 3;75,58,56;,
 4;71,74,75,70;,
 4;62,91,80,63;,
 3;68,60,55;,
 4;60,63,80,81;,
 3;77,72,55;,
 3;76,61,54;,
 4;59,65,79,78;,
 3;61,76,93;,
 3;58,75,88;,
 3;57,59,74;,
 3;55,60,77;,
 3;78,74,59;,
 4;88,87,64,58;,
 4;93,91,62,61;,
 3;81,77,60;,
 3;54,73,76;,
 3;68,63,60;,
 4;63,68,69,62;,
 4;65,67,66,64;,
 3;67,65,59;,
 3;56,70,75;,
 3;57,71,67;,
 3;56,58,66;,
 3;54,61,69;,
 3;55,72,68;,
 3;69,73,54;,
 3;67,59,57;,
 3;66,70,56;,
 4;50,69,68,49;,
 4;52,72,73,51;,
 4;46,66,67,53;,
 4;53,67,71,48;,
 4;48,71,70,47;,
 4;47,70,66,46;,
 4;51,73,69,50;,
 4;49,68,72,52;,
 4;83,48,47,89;,
 4;92,53,48,83;,
 4;89,47,46,90;,
 4;90,46,53,92;,
 4;82,52,51,84;,
 4;86,49,52,82;,
 4;85,50,49,86;,
 4;84,51,50,85;,
 4;36,83,89,35;,
 4;34,82,84,37;,
 4;43,42,45,44;,
 4;24,23,18,25;,
 4;38,43,44,40;,
 4;39,42,43,38;,
 4;41,45,42,39;,
 4;40,44,45,41;,
 4;35,38,40,36;,
 4;34,39,38,35;,
 4;37,41,39,34;,
 4;36,40,41,37;,
 4;21,19,22,20;,
 4;33,37,84,30;,
 4;28,34,35,29;,
 4;31,83,36,32;,
 4;26,89,82,27;,
 4;32,36,37,33;,
 4;30,84,83,31;,
 4;29,35,89,26;,
 4;27,82,34,28;,
 4;20,28,29,21;,
 4;19,26,27,22;,
 4;24,33,30,23;,
 4;18,31,32,25;,
 4;22,27,28,20;,
 4;21,29,26,19;,
 4;25,32,33,24;,
 4;23,30,31,18;,
 3;13,90,92;,
 3;17,92,85;,
 4;1,2,3,0;,
 3;15,85,86;,
 4;8,11,10,9;,
 3;85,15,17;,
 3;92,17,13;,
 4;15,86,90,13;,
 4;5,4,7,6;,
 3;14,12,16;,
 4;2,17,15,3;,
 4;0,14,16,1;,
 4;10,17,16,9;,
 4;8,12,13,11;,
 4;4,14,15,7;,
 4;6,13,12,5;,
 4;3,15,14,0;,
 4;1,16,17,2;,
 4;11,13,17,10;,
 4;9,16,12,8;,
 4;7,15,13,6;,
 4;5,12,14,4;;

 MeshNormals {
  118;
  0.577350;-0.577350;-0.577350;,
  -0.577350;-0.577350;-0.577350;,
  -0.577350;0.577351;-0.577350;,
  0.577350;0.577350;-0.577350;,
  0.791921;-0.574706;-0.206335;,
  0.071070;-0.632456;0.771329;,
  0.211325;0.577350;0.788675;,
  0.791921;0.574707;-0.206334;,
  -0.217269;-0.574707;0.788991;,
  -0.791953;-0.574680;-0.206284;,
  -0.791953;0.574680;-0.206284;,
  -0.217269;0.574706;0.788991;,
  -0.003469;-0.865166;0.501474;,
  0.024416;0.468365;0.883198;,
  0.482291;-0.832050;-0.274021;,
  0.630062;0.447557;-0.634598;,
  -0.482310;-0.832050;-0.273987;,
  -0.836009;0.434060;-0.335680;,
  -0.645710;-0.264318;0.716376;,
  0.645681;-0.264210;0.716442;,
  0.556212;0.737354;-0.383325;,
  0.556211;0.737354;0.383326;,
  0.645682;-0.264210;-0.716441;,
  -0.645709;-0.264319;-0.716377;,
  -0.538071;0.727645;-0.425456;,
  -0.538072;0.727645;0.425455;,
  0.846003;-0.318316;0.427731;,
  0.846003;-0.318315;-0.427733;,
  0.771831;0.541600;-0.333085;,
  0.771832;0.541600;0.333084;,
  -0.888484;-0.006740;-0.458858;,
  -0.888485;-0.006741;0.458857;,
  -0.782434;0.531676;0.324218;,
  -0.782433;0.531676;-0.324220;,
  0.813017;-0.468039;-0.346329;,
  0.782503;-0.477317;0.399821;,
  -0.810800;-0.482981;0.330654;,
  -0.780917;-0.492821;-0.383793;,
  0.008776;-0.788506;0.614964;,
  0.614964;-0.788506;-0.008776;,
  -0.614964;-0.788506;0.008776;,
  -0.008776;-0.788506;-0.614964;,
  0.816497;0.577350;0.000000;,
  0.000000;0.577350;0.816497;,
  -0.816497;0.577350;0.000000;,
  0.000000;0.577350;-0.816497;,
  0.435562;-0.454857;-0.776782;,
  0.577708;0.437354;-0.689184;,
  -0.560311;0.430060;-0.707885;,
  0.429218;-0.433528;0.792354;,
  -0.435566;-0.454855;0.776781;,
  -0.577710;0.437355;0.689181;,
  0.560307;0.430060;0.707888;,
  -0.429222;-0.433526;-0.792353;,
  -0.815315;0.272478;0.510898;,
  0.815316;0.272478;0.510898;,
  0.815316;0.272478;-0.510898;,
  -0.815315;0.272478;-0.510898;,
  0.977344;-0.177206;0.115743;,
  -0.977344;-0.177206;0.115743;,
  0.977344;-0.177206;-0.115744;,
  -0.977344;-0.177206;-0.115743;,
  -0.402723;-0.914020;-0.048796;,
  0.402723;-0.914020;-0.048796;,
  0.402723;-0.914020;0.048796;,
  -0.402723;-0.914020;0.048795;,
  0.419930;-0.569120;-0.706938;,
  -0.419904;-0.569133;-0.706943;,
  0.419903;-0.569135;0.706942;,
  -0.419932;-0.569119;0.706937;,
  0.134551;0.343941;-0.929301;,
  -0.134523;0.343934;-0.929308;,
  0.134521;0.343933;0.929308;,
  -0.134552;0.343942;0.929301;,
  -0.534216;0.835649;-0.127690;,
  0.534216;0.835649;-0.127690;,
  -0.534216;0.835649;0.127690;,
  0.534216;0.835649;0.127690;,
  -0.735870;0.195977;0.648142;,
  -0.297495;-0.873450;0.385463;,
  0.297494;-0.873450;-0.385463;,
  0.735870;0.195977;-0.648143;,
  0.722963;0.391098;-0.569532;,
  -0.676675;0.527948;0.513208;,
  -0.668479;0.522833;-0.528943;,
  -0.390590;-0.543210;-0.743211;,
  0.475037;-0.709197;-0.520941;,
  0.297494;-0.873450;0.385463;,
  0.735870;0.195977;0.648143;,
  0.716848;0.382356;0.583037;,
  0.451019;-0.606698;0.654598;,
  -0.297495;-0.873450;-0.385463;,
  -0.612817;-0.519489;0.595472;,
  -0.735870;0.195977;-0.648142;,
  0.834885;-0.452611;-0.313226;,
  0.880472;0.184522;-0.436716;,
  0.831275;-0.460045;0.311994;,
  0.880578;0.179212;0.438708;,
  -0.832054;-0.455287;0.316860;,
  -0.877108;0.185819;0.442891;,
  -0.834115;-0.457705;-0.307827;,
  -0.884258;0.177540;-0.431935;,
  0.913520;-0.167256;0.370819;,
  0.735636;0.582179;0.346277;,
  0.858388;-0.308834;-0.409623;,
  0.822376;0.411831;-0.392547;,
  -0.913988;-0.167719;-0.369454;,
  -0.736062;0.582256;-0.345241;,
  -0.858096;-0.308795;0.410265;,
  -0.822155;0.411648;0.393200;,
  0.352185;0.852617;-0.386018;,
  0.723114;-0.039170;-0.689617;,
  0.433891;0.764213;0.477197;,
  0.642368;-0.297062;0.706483;,
  -0.433891;0.764213;-0.477197;,
  -0.642368;-0.297062;-0.706483;,
  -0.352185;0.852617;0.386018;,
  -0.723114;-0.039170;0.689617;;

  131;
  4;117,116,114,115;,
  4;112,110,107,109;,
  4;110,112,113,111;,
  4;103,116,117,102;,
  4;107,110,111,106;,
  4;105,114,116,103;,
  4;109,108,113,112;,
  4;104,115,114,105;,
  4;98,108,109,99;,
  4;106,111,113,108;,
  4;107,101,99,109;,
  4;107,106,100,101;,
  4;98,100,106,108;,
  4;99,101,82,89;,
  4;101,100,86,82;,
  4;100,98,90,86;,
  4;98,99,89,90;,
  4;105,95,94,104;,
  4;102,96,97,103;,
  4;103,97,95,105;,
  4;102,117,115,104;,
  4;104,94,96,102;,
  4;83,84,95,97;,
  3;58,64,66;,
  4;96,94,85,92;,
  4;94,95,84,85;,
  4;97,96,92,83;,
  4;64,87,79,65;,
  4;79,87,88,78;,
  4;80,91,93,81;,
  3;61,62,69;,
  4;74,78,88,75;,
  4;77,81,93,76;,
  4;72,77,76,73;,
  3;74,71,57;,
  3;75,58,56;,
  4;71,74,75,70;,
  4;62,91,80,63;,
  3;68,60,55;,
  4;60,63,80,81;,
  3;77,72,55;,
  3;76,61,54;,
  4;59,65,79,78;,
  3;61,76,93;,
  3;58,75,88;,
  3;57,59,74;,
  3;55,60,77;,
  3;78,74,59;,
  4;88,87,64,58;,
  4;93,91,62,61;,
  3;81,77,60;,
  3;54,73,76;,
  3;68,63,60;,
  4;63,68,69,62;,
  4;65,67,66,64;,
  3;67,65,59;,
  3;56,70,75;,
  3;57,71,67;,
  3;56,58,66;,
  3;54,61,69;,
  3;55,72,68;,
  3;69,73,54;,
  3;67,59,57;,
  3;66,70,56;,
  4;50,69,68,49;,
  4;52,72,73,51;,
  4;46,66,67,53;,
  4;53,67,71,48;,
  4;48,71,70,47;,
  4;47,70,66,46;,
  4;51,73,69,50;,
  4;49,68,72,52;,
  4;83,48,47,89;,
  4;92,53,48,83;,
  4;89,47,46,90;,
  4;90,46,53,92;,
  4;82,52,51,84;,
  4;86,49,52,82;,
  4;85,50,49,86;,
  4;84,51,50,85;,
  4;36,83,89,35;,
  4;34,82,84,37;,
  4;43,42,45,44;,
  4;24,23,18,25;,
  4;38,43,44,40;,
  4;39,42,43,38;,
  4;41,45,42,39;,
  4;40,44,45,41;,
  4;35,38,40,36;,
  4;34,39,38,35;,
  4;37,41,39,34;,
  4;36,40,41,37;,
  4;21,19,22,20;,
  4;33,37,84,30;,
  4;28,34,35,29;,
  4;31,83,36,32;,
  4;26,89,82,27;,
  4;32,36,37,33;,
  4;30,84,83,31;,
  4;29,35,89,26;,
  4;27,82,34,28;,
  4;20,28,29,21;,
  4;19,26,27,22;,
  4;24,33,30,23;,
  4;18,31,32,25;,
  4;22,27,28,20;,
  4;21,29,26,19;,
  4;25,32,33,24;,
  4;23,30,31,18;,
  3;13,90,92;,
  3;17,92,85;,
  4;1,2,3,0;,
  3;15,85,86;,
  4;8,11,10,9;,
  3;85,15,17;,
  3;92,17,13;,
  4;15,86,90,13;,
  4;5,4,7,6;,
  3;14,12,16;,
  4;2,17,15,3;,
  4;0,14,16,1;,
  4;10,17,16,9;,
  4;8,12,13,11;,
  4;4,14,15,7;,
  4;6,13,12,5;,
  4;3,15,14,0;,
  4;1,16,17,2;,
  4;11,13,17,10;,
  4;9,16,12,8;,
  4;7,15,13,6;,
  4;5,12,14,4;;
 }
}
}
AnimationSet {
 Animation anim-bound {
  {frm-bound}
  AnimationKey {
  0;
  2;
  1; 4; -0.000000, 0.000000, -0.707107, 0.707107;;,
  100; 4; -0.000000, 0.000000, -0.707107, 0.707107;;;
  }
 }
}

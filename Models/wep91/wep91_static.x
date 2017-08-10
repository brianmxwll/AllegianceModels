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

Frame frm-cyl6 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh cyl6 {
 46;
 0.420072;-0.931508;4.565994;,
 0.420072;-0.931508;4.565994;,
 0.420072;-0.931508;-2.125074;,
 0.420072;-0.931508;-2.125074;,
 0.297036;-0.634472;4.565994;,
 0.297036;-0.634472;4.565994;,
 0.297036;-0.634472;-2.125074;,
 0.297036;-0.634472;-2.125074;,
 0.000000;-0.511436;4.565994;,
 0.000000;-0.511436;4.565994;,
 0.000000;-0.511436;-2.125074;,
 0.000000;-0.511436;-2.125074;,
 -0.297036;-0.634472;4.565994;,
 -0.297036;-0.634472;4.565994;,
 -0.297036;-0.634472;-2.125074;,
 -0.420072;-0.931508;4.565994;,
 -0.420072;-0.931508;4.565994;,
 -0.420072;-0.931508;-2.125074;,
 -0.297036;-1.228544;4.565994;,
 -0.297036;-1.228544;4.565994;,
 -0.297036;-1.228544;-2.125074;,
 -0.297036;-1.228544;-2.125074;,
 0.000000;-1.351580;4.565994;,
 0.000000;-1.351580;4.565994;,
 0.000000;-1.351580;-2.125074;,
 0.000000;-1.351580;-2.125074;,
 0.297036;-1.228544;4.565994;,
 0.297036;-1.228544;4.565994;,
 0.297036;-1.228544;-2.125074;,
 0.297036;-1.228544;-2.125074;,
 0.297036;-1.228544;-2.125074;,
 0.297036;-1.228544;4.565994;,
 0.000000;-1.351580;-2.125074;,
 0.000000;-1.351580;4.565994;,
 -0.297036;-1.228544;-2.125074;,
 -0.297036;-1.228544;4.565994;,
 -0.420072;-0.931508;-2.125074;,
 -0.420072;-0.931508;4.565994;,
 -0.297036;-0.634472;-2.125074;,
 -0.297036;-0.634472;4.565994;,
 0.000000;-0.511436;-2.125074;,
 0.000000;-0.511436;4.565994;,
 0.297036;-0.634472;-2.125074;,
 0.297036;-0.634472;4.565994;,
 0.420072;-0.931508;-2.125074;,
 0.420072;-0.931508;4.565994;;

 10;
 4;3,7,5,1;,
 8;25,21,17,14,11,6,2,29;,
 4;42,10,9,4;,
 4;40,38,13,8;,
 4;38,36,16,12;,
 4;36,20,19,15;,
 4;34,24,23,18;,
 8;27,0,43,41,39,37,35,22;,
 4;32,28,26,33;,
 4;30,44,45,31;;

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
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "wep91.ppm";
 }
 }
}
 MeshNormals {
  46;
  0.894427;-0.000000;0.447214;,
  0.894427;-0.000000;0.447214;,
  0.894427;-0.000000;-0.447214;,
  0.894427;-0.000000;-0.447214;,
  0.632456;0.632456;0.447214;,
  0.632456;0.632456;0.447214;,
  0.632456;0.632456;-0.447214;,
  0.632456;0.632456;-0.447214;,
  -0.000000;0.894427;0.447214;,
  -0.000000;0.894427;0.447214;,
  -0.000000;0.894427;-0.447214;,
  -0.000000;0.894427;-0.447214;,
  -0.632456;0.632456;0.447214;,
  -0.632456;0.632456;0.447214;,
  -0.632456;0.632456;-0.447214;,
  -0.894427;0.000000;0.447214;,
  -0.894427;0.000000;0.447214;,
  -0.894427;0.000000;-0.447214;,
  -0.632456;-0.632456;0.447214;,
  -0.632456;-0.632456;0.447214;,
  -0.632456;-0.632456;-0.447214;,
  -0.632456;-0.632456;-0.447214;,
  0.000000;-0.894427;0.447214;,
  0.000000;-0.894427;0.447214;,
  0.000000;-0.894427;-0.447214;,
  0.000000;-0.894427;-0.447214;,
  0.632455;-0.632456;0.447214;,
  0.632455;-0.632456;0.447214;,
  0.632455;-0.632456;-0.447214;,
  0.632455;-0.632456;-0.447214;,
  0.632455;-0.632456;-0.447214;,
  0.632455;-0.632456;0.447214;,
  0.000000;-0.894427;-0.447214;,
  0.000000;-0.894427;0.447214;,
  -0.632456;-0.632456;-0.447214;,
  -0.632456;-0.632456;0.447214;,
  -0.894427;0.000000;-0.447214;,
  -0.894427;0.000000;0.447214;,
  -0.632456;0.632456;-0.447214;,
  -0.632456;0.632456;0.447214;,
  -0.000000;0.894427;-0.447214;,
  -0.000000;0.894427;0.447214;,
  0.632456;0.632456;-0.447214;,
  0.632456;0.632456;0.447214;,
  0.894427;-0.000000;-0.447214;,
  0.894427;-0.000000;0.447214;;

  10;
  4;3,7,5,1;,
  8;25,21,17,14,11,6,2,29;,
  4;42,10,9,4;,
  4;40,38,13,8;,
  4;38,36,16,12;,
  4;36,20,19,15;,
  4;34,24,23,18;,
  8;27,0,43,41,39,37,35,22;,
  4;32,28,26,33;,
  4;30,44,45,31;;
 }
 MeshTextureCoords { 
 46;
 0.355469;0.834022;,
 0.047401;0.484975;,
 0.046875;0.945313;,
 0.449425;0.484975;,
 0.047401;0.484975;,
 0.047401;0.423557;,
 0.015625;0.822228;,
 0.449425;0.423557;,
 0.047401;0.484975;,
 0.047401;0.423557;,
 0.449425;0.423557;,
 0.054688;0.695313;,
 0.047401;0.423557;,
 0.047401;0.423557;,
 0.183594;0.654259;,
 0.047401;0.484975;,
 0.047401;0.484975;,
 0.300781;0.710938;,
 0.047401;0.484975;,
 0.047401;0.423557;,
 0.449425;0.423557;,
 0.355469;0.834022;,
 0.175781;1.005897;,
 0.047401;0.423557;,
 0.449425;0.423557;,
 0.304688;0.957031;,
 0.047401;0.423557;,
 0.304688;0.957031;,
 0.449425;0.423557;,
 0.175781;1.005897;,
 0.449425;0.484975;,
 0.047401;0.484975;,
 0.449425;0.484975;,
 0.047401;0.484975;,
 0.449425;0.484975;,
 0.046875;0.945313;,
 0.449425;0.484975;,
 0.015625;0.822228;,
 0.449425;0.423557;,
 0.054688;0.695313;,
 0.449425;0.484975;,
 0.183594;0.654259;,
 0.449425;0.484975;,
 0.300781;0.710938;,
 0.449425;0.423557;,
 0.047401;0.423557;;
 }
}
Frame frm-cube1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh cube1 {
 46;
 -0.786000;-1.633803;4.764799;,
 -0.786000;-1.633803;4.764799;,
 -0.786000;-1.633803;-1.754490;,
 -0.786000;-1.633803;-1.754490;,
 -0.786000;1.018308;4.764799;,
 -0.786000;1.018308;4.764799;,
 -0.786000;1.018308;-0.790862;,
 -0.786000;1.018308;-0.790862;,
 0.786000;-1.633803;4.764799;,
 0.786000;-1.633803;4.764799;,
 0.786000;-1.633803;-1.754490;,
 0.786000;-1.633803;-1.754490;,
 0.786000;1.018308;4.764799;,
 0.786000;1.018308;4.764799;,
 0.786000;1.018308;-0.790862;,
 0.786000;1.018308;-0.790862;,
 -0.786000;-0.180858;-1.246137;,
 -0.786000;-0.180858;-1.246137;,
 0.786000;-0.180858;-1.246137;,
 0.786000;-0.180858;-1.246137;,
 -0.786000;-0.763584;-1.760073;,
 -0.786000;-0.763584;-1.760073;,
 0.786000;-0.763584;-1.760073;,
 0.786000;-0.763584;-1.760073;,
 -0.786000;0.289444;-1.021290;,
 -0.786000;0.289444;-1.021290;,
 0.786000;0.289444;-1.021290;,
 0.786000;0.289444;-1.021290;,
 -0.786000;-0.496312;-1.519165;,
 0.786000;-0.496312;-1.519165;,
 0.786000;-0.496312;-1.519165;,
 -0.786000;-0.496312;-1.519165;,
 0.786000;0.289444;-1.021290;,
 -0.786000;0.289444;-1.021290;,
 0.786000;-0.763584;-1.760073;,
 -0.786000;-0.763584;-1.760073;,
 0.786000;-0.180858;-1.246137;,
 -0.786000;-0.180858;-1.246137;,
 0.786000;1.018308;-0.790862;,
 0.786000;1.018308;4.764799;,
 0.786000;-1.633803;-1.754490;,
 0.786000;-1.633803;4.764799;,
 -0.786000;1.018308;-0.790862;,
 -0.786000;1.018308;4.764799;,
 -0.786000;-1.633803;-1.754490;,
 -0.786000;-1.633803;4.764799;;

 10;
 8;5,7,25,17,28,21,3,1;,
 4;24,6,15,27;,
 8;23,29,19,26,14,13,9,11;,
 4;12,4,0,8;,
 4;45,2,10,41;,
 4;39,38,42,43;,
 4;22,40,44,20;,
 4;32,18,16,33;,
 4;31,37,36,30;,
 4;35,31,30,34;;

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
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "wep91.ppm";
 }
 }
}
 MeshNormals {
  46;
  -0.577350;-0.577350;0.577350;,
  -0.577350;-0.577350;0.577350;,
  -0.576120;-0.579816;-0.576108;,
  -0.576120;-0.579816;-0.576108;,
  -0.577350;0.577350;0.577350;,
  -0.577350;0.577350;0.577350;,
  -0.526835;0.685645;-0.502330;,
  -0.526835;0.685645;-0.502330;,
  0.577350;-0.577350;0.577350;,
  0.577350;-0.577350;0.577350;,
  0.576120;-0.579816;-0.576108;,
  0.576120;-0.579816;-0.576108;,
  0.577350;0.577350;0.577350;,
  0.577350;0.577350;0.577350;,
  0.526835;0.685645;-0.502330;,
  0.526835;0.685645;-0.502330;,
  -0.447214;0.489941;-0.748303;,
  -0.447214;0.489941;-0.748303;,
  0.447214;0.489941;-0.748303;,
  0.447214;0.489941;-0.748303;,
  -0.447214;0.318074;-0.835960;,
  -0.447214;0.318074;-0.835960;,
  0.447214;0.318074;-0.835960;,
  0.447214;0.318074;-0.835960;,
  -0.447214;0.328507;-0.831915;,
  -0.447214;0.328507;-0.831915;,
  0.447214;0.328507;-0.831915;,
  0.447214;0.328507;-0.831915;,
  -0.447214;0.592120;-0.670368;,
  0.447214;0.592120;-0.670368;,
  0.447214;0.592120;-0.670368;,
  -0.447214;0.592120;-0.670368;,
  0.447214;0.328507;-0.831915;,
  -0.447214;0.328507;-0.831915;,
  0.447214;0.318074;-0.835960;,
  -0.447214;0.318074;-0.835960;,
  0.447214;0.489941;-0.748303;,
  -0.447214;0.489941;-0.748303;,
  0.526835;0.685645;-0.502330;,
  0.577350;0.577350;0.577350;,
  0.576120;-0.579816;-0.576108;,
  0.577350;-0.577350;0.577350;,
  -0.526835;0.685645;-0.502330;,
  -0.577350;0.577350;0.577350;,
  -0.576120;-0.579816;-0.576108;,
  -0.577350;-0.577350;0.577350;;

  10;
  8;5,7,25,17,28,21,3,1;,
  4;24,6,15,27;,
  8;23,29,19,26,14,13,9,11;,
  4;12,4,0,8;,
  4;45,2,10,41;,
  4;39,38,42,43;,
  4;22,40,44,20;,
  4;32,18,16,33;,
  4;31,37,36,30;,
  4;35,31,30,34;;
 }
 MeshTextureCoords { 
 46;
 0.680137;1.000468;,
 0.857872;0.546472;,
 0.090095;0.564050;,
 0.035407;0.546472;,
 0.674278;0.602030;,
 0.857872;0.236796;,
 0.037588;0.497535;,
 0.143058;0.236796;,
 0.986778;0.987879;,
 0.857872;0.546472;,
 0.084236;0.521082;,
 0.035407;0.546472;,
 0.978965;0.612879;,
 0.857872;0.236796;,
 0.143058;0.236796;,
 0.037366;0.429909;,
 0.082754;0.497203;,
 0.092198;0.376818;,
 0.082531;0.429577;,
 0.092198;0.376818;,
 0.263415;0.495872;,
 0.034784;0.444860;,
 0.263193;0.428246;,
 0.034784;0.444860;,
 0.082754;0.497203;,
 0.117316;0.321902;,
 0.117316;0.321902;,
 0.082531;0.429577;,
 0.061697;0.413652;,
 0.061697;0.413652;,
 0.172862;0.428911;,
 0.173084;0.496537;,
 0.127697;0.429244;,
 0.127919;0.496870;,
 0.218028;0.428578;,
 0.218250;0.496205;,
 0.127697;0.429244;,
 0.127919;0.496870;,
 0.797325;0.221171;,
 0.131309;0.221171;,
 0.218028;0.428578;,
 0.705528;0.526941;,
 0.797355;0.230936;,
 0.121574;0.232889;,
 0.218250;0.496205;,
 0.703575;0.566004;;
 }
}
}
Frame frm-cyl4 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh cyl4 {
 34;
 0.642000;0.000000;2.198630;,
 0.642000;-0.000000;-1.785505;,
 0.642000;-0.000000;-1.785505;,
 0.453963;0.453963;2.198630;,
 0.453963;0.453963;-1.785505;,
 0.453963;0.453963;-1.785505;,
 0.000000;0.642000;2.198630;,
 0.000000;0.642000;-1.785505;,
 -0.453963;0.453963;2.198630;,
 -0.453963;0.453962;-1.785505;,
 -0.642000;0.000000;2.198630;,
 -0.642000;-0.000000;-1.785505;,
 -0.453963;-0.453962;2.198630;,
 -0.453963;-0.453963;-1.785505;,
 0.000000;-0.642000;2.198630;,
 0.000000;-0.642000;-1.785505;,
 0.453963;-0.453962;2.198630;,
 0.453963;-0.453963;-1.785505;,
 0.453963;-0.453963;-1.785505;,
 0.453963;-0.453962;2.198630;,
 0.000000;-0.642000;-1.785505;,
 0.000000;-0.642000;2.198630;,
 -0.453963;-0.453963;-1.785505;,
 -0.453963;-0.453962;2.198630;,
 -0.642000;-0.000000;-1.785505;,
 -0.642000;0.000000;2.198630;,
 -0.453963;0.453962;-1.785505;,
 -0.453963;0.453963;2.198630;,
 0.000000;0.642000;-1.785505;,
 0.000000;0.642000;2.198630;,
 0.453963;0.453963;-1.785505;,
 0.453963;0.453963;2.198630;,
 0.642000;-0.000000;-1.785505;,
 0.642000;0.000000;2.198630;;

 10;
 8;16,0,3,6,8,10,12,14;,
 4;2,5,31,33;,
 8;13,11,9,7,4,1,17,15;,
 4;30,28,29,31;,
 4;28,26,27,29;,
 4;26,24,25,27;,
 4;24,22,23,25;,
 4;22,20,21,23;,
 4;20,18,19,21;,
 4;18,32,33,19;;

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
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "wep91.ppm";
 }
 }
}
 MeshNormals {
  34;
  0.894427;-0.000000;0.447214;,
  0.894427;-0.000000;-0.447214;,
  0.894427;-0.000000;-0.447214;,
  0.632456;0.632456;0.447214;,
  0.632456;0.632456;-0.447214;,
  0.632456;0.632456;-0.447214;,
  -0.000000;0.894427;0.447214;,
  -0.000000;0.894427;-0.447214;,
  -0.632456;0.632456;0.447214;,
  -0.632456;0.632456;-0.447214;,
  -0.894427;0.000000;0.447214;,
  -0.894427;0.000000;-0.447214;,
  -0.632456;-0.632456;0.447214;,
  -0.632456;-0.632456;-0.447214;,
  0.000000;-0.894427;0.447214;,
  0.000000;-0.894427;-0.447214;,
  0.632455;-0.632456;0.447214;,
  0.632455;-0.632456;-0.447214;,
  0.632455;-0.632456;-0.447214;,
  0.632455;-0.632456;0.447214;,
  0.000000;-0.894427;-0.447214;,
  0.000000;-0.894427;0.447214;,
  -0.632456;-0.632456;-0.447214;,
  -0.632456;-0.632456;0.447214;,
  -0.894427;0.000000;-0.447214;,
  -0.894427;0.000000;0.447214;,
  -0.632456;0.632456;-0.447214;,
  -0.632456;0.632456;0.447214;,
  -0.000000;0.894427;-0.447214;,
  -0.000000;0.894427;0.447214;,
  0.632456;0.632456;-0.447214;,
  0.632456;0.632456;0.447214;,
  0.894427;-0.000000;-0.447214;,
  0.894427;-0.000000;0.447214;;

  10;
  8;16,0,3,6,8,10,12,14;,
  4;2,5,31,33;,
  8;13,11,9,7,4,1,17,15;,
  4;30,28,29,31;,
  4;28,26,27,29;,
  4;26,24,25,27;,
  4;24,22,23,25;,
  4;22,20,21,23;,
  4;20,18,19,21;,
  4;18,32,33,19;;
 }
 MeshTextureCoords { 
 34;
 0.055258;0.694721;,
 0.309164;0.936908;,
 0.531429;1.000914;,
 0.170473;0.655147;,
 0.346254;0.819209;,
 0.615263;1.000329;,
 0.306375;0.693998;,
 0.306375;0.693998;,
 0.346254;0.819209;,
 0.170473;0.655147;,
 0.309164;0.936908;,
 0.055258;0.694721;,
 0.190043;1.003826;,
 0.014262;0.816326;,
 0.050235;0.941537;,
 0.050235;0.941537;,
 0.014262;0.816326;,
 0.190043;1.003826;,
 0.447594;1.001499;,
 0.446596;0.608497;,
 0.412869;1.001741;,
 0.411871;0.608739;,
 0.447594;1.001499;,
 0.446596;0.608497;,
 0.531429;1.000914;,
 0.530430;0.607912;,
 0.615263;1.000329;,
 0.614265;0.607327;,
 0.649988;1.000087;,
 0.648990;0.607085;,
 0.615263;1.000329;,
 0.614265;0.607327;,
 0.531429;1.000914;,
 0.530430;0.607912;;
 }
}
}
Frame frm-cyl5 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh cyl5 {
 16;
 0.363125;-0.331004;-3.875848;,
 0.363125;-0.331004;4.545941;,
 0.000000;-0.481415;-3.875848;,
 0.000000;-0.481415;4.545941;,
 -0.363125;-0.331004;-3.875848;,
 -0.363125;-0.331004;4.545941;,
 -0.513536;0.032121;-3.875848;,
 -0.513536;0.032121;4.545941;,
 -0.363125;0.395246;-3.875848;,
 -0.363125;0.395246;4.545941;,
 0.000000;0.545657;-3.875848;,
 0.000000;0.545657;4.545941;,
 0.363125;0.395246;-3.875848;,
 0.363125;0.395246;4.545941;,
 0.513536;0.032121;-3.875848;,
 0.513536;0.032121;4.545941;;

 10;
 4;14,12,13,15;,
 4;12,10,11,13;,
 8;2,4,6,8,10,12,14,0;,
 4;10,8,9,11;,
 4;8,6,7,9;,
 4;6,4,5,7;,
 4;4,2,3,5;,
 8;1,15,13,11,9,7,5,3;,
 4;2,0,1,3;,
 4;0,14,15,1;;

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
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "wep91.ppm";
 }
 }
}
 MeshNormals {
  16;
  0.632455;-0.632456;-0.447214;,
  0.632455;-0.632456;0.447214;,
  0.000000;-0.894427;-0.447214;,
  0.000000;-0.894427;0.447214;,
  -0.632456;-0.632456;-0.447214;,
  -0.632456;-0.632456;0.447214;,
  -0.894427;-0.000000;-0.447214;,
  -0.894427;-0.000000;0.447214;,
  -0.632456;0.632456;-0.447214;,
  -0.632456;0.632456;0.447214;,
  -0.000000;0.894427;-0.447214;,
  -0.000000;0.894427;0.447214;,
  0.632455;0.632456;-0.447214;,
  0.632455;0.632456;0.447214;,
  0.894427;-0.000000;-0.447214;,
  0.894427;-0.000000;0.447214;;

  10;
  4;14,12,13,15;,
  4;12,10,11,13;,
  8;2,4,6,8,10,12,14,0;,
  4;10,8,9,11;,
  4;8,6,7,9;,
  4;6,4,5,7;,
  4;4,2,3,5;,
  8;1,15,13,11,9,7,5,3;,
  4;2,0,1,3;,
  4;0,14,15,1;;
 }
 MeshTextureCoords { 
 16;
 0.546875;0.529713;,
 0.148438;0.529713;,
 0.546875;0.546875;,
 0.148438;0.546875;,
 0.546875;0.529713;,
 0.148438;0.529713;,
 0.546875;0.488281;,
 0.148438;0.488281;,
 0.546875;0.446849;,
 0.148438;0.446849;,
 0.546875;0.429688;,
 0.148438;0.429688;,
 0.546875;0.446849;,
 0.148438;0.446849;,
 0.546875;0.488281;,
 0.148438;0.488281;;
 }
}
}
Frame frm-cyl7 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh cyl7 {
 34;
 0.723242;0.000000;-2.905104;,
 0.723242;-0.000000;-4.264943;,
 0.723242;-0.000000;-4.264943;,
 0.511409;0.511409;-2.905104;,
 0.511409;0.511409;-4.264943;,
 0.511409;0.511409;-4.264943;,
 0.000000;0.723242;-2.905104;,
 0.000000;0.723242;-4.264943;,
 -0.511409;0.511409;-2.905104;,
 -0.511409;0.511409;-4.264943;,
 -0.723242;0.000000;-2.905104;,
 -0.723242;-0.000000;-4.264943;,
 -0.511409;-0.511409;-2.905104;,
 -0.511409;-0.511409;-4.264943;,
 0.000000;-0.723242;-2.905104;,
 0.000000;-0.723242;-4.264943;,
 0.511409;-0.511409;-2.905104;,
 0.511409;-0.511409;-4.264943;,
 0.511409;-0.511409;-4.264943;,
 0.511409;-0.511409;-2.905104;,
 0.000000;-0.723242;-4.264943;,
 0.000000;-0.723242;-2.905104;,
 -0.511409;-0.511409;-4.264943;,
 -0.511409;-0.511409;-2.905104;,
 -0.723242;-0.000000;-4.264943;,
 -0.723242;0.000000;-2.905104;,
 -0.511409;0.511409;-4.264943;,
 -0.511409;0.511409;-2.905104;,
 0.000000;0.723242;-4.264943;,
 0.000000;0.723242;-2.905104;,
 0.511409;0.511409;-4.264943;,
 0.511409;0.511409;-2.905104;,
 0.723242;-0.000000;-4.264943;,
 0.723242;0.000000;-2.905104;;

 10;
 8;3,6,8,10,12,14,16,0;,
 4;2,5,31,33;,
 8;13,11,9,7,4,1,17,15;,
 4;30,28,29,31;,
 4;28,26,27,29;,
 4;26,24,25,27;,
 4;24,22,23,25;,
 4;22,20,21,23;,
 4;20,18,19,21;,
 4;18,32,33,19;;

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
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "wep91.ppm";
 }
 }
}
 MeshNormals {
  34;
  0.894427;-0.000000;0.447214;,
  0.894427;-0.000000;-0.447214;,
  0.894427;-0.000000;-0.447214;,
  0.632456;0.632456;0.447214;,
  0.632455;0.632456;-0.447214;,
  0.632455;0.632456;-0.447214;,
  -0.000000;0.894427;0.447214;,
  -0.000000;0.894427;-0.447214;,
  -0.632456;0.632456;0.447214;,
  -0.632456;0.632455;-0.447214;,
  -0.894427;0.000000;0.447214;,
  -0.894427;0.000000;-0.447214;,
  -0.632456;-0.632456;0.447214;,
  -0.632456;-0.632456;-0.447214;,
  0.000000;-0.894427;0.447214;,
  0.000000;-0.894427;-0.447213;,
  0.632455;-0.632456;0.447214;,
  0.632456;-0.632456;-0.447214;,
  0.632456;-0.632456;-0.447214;,
  0.632455;-0.632456;0.447214;,
  0.000000;-0.894427;-0.447213;,
  0.000000;-0.894427;0.447214;,
  -0.632456;-0.632456;-0.447214;,
  -0.632456;-0.632456;0.447214;,
  -0.894427;0.000000;-0.447214;,
  -0.894427;0.000000;0.447214;,
  -0.632456;0.632455;-0.447214;,
  -0.632456;0.632456;0.447214;,
  -0.000000;0.894427;-0.447214;,
  -0.000000;0.894427;0.447214;,
  0.632455;0.632456;-0.447214;,
  0.632456;0.632456;0.447214;,
  0.894427;-0.000000;-0.447214;,
  0.894427;-0.000000;0.447214;;

  10;
  8;3,6,8,10,12,14,16,0;,
  4;2,5,31,33;,
  8;13,11,9,7,4,1,17,15;,
  4;30,28,29,31;,
  4;28,26,27,29;,
  4;26,24,25,27;,
  4;24,22,23,25;,
  4;22,20,21,23;,
  4;20,18,19,21;,
  4;18,32,33,19;;
 }
 MeshTextureCoords { 
 34;
 0.770388;0.635623;,
 0.712028;0.853395;,
 0.826612;0.996624;,
 0.778223;0.636035;,
 0.731582;0.862921;,
 0.939916;0.997036;,
 0.782187;0.633601;,
 0.722525;0.860487;,
 0.767807;0.643848;,
 0.723770;0.859015;,
 0.767783;0.636925;,
 0.719841;0.865114;,
 0.771667;0.633910;,
 0.721120;0.872515;,
 0.740360;0.625927;,
 0.739292;0.846302;,
 0.752135;0.644326;,
 0.727630;0.845171;,
 0.713307;0.996212;,
 0.714375;0.602660;,
 0.666375;0.996042;,
 0.667443;0.602489;,
 0.713307;0.996212;,
 0.714375;0.602660;,
 0.826612;0.996624;,
 0.827679;0.603071;,
 0.939916;0.997036;,
 0.940984;0.603483;,
 0.986848;0.997206;,
 0.987916;0.603653;,
 0.939916;0.997036;,
 0.940984;0.603483;,
 0.826612;0.996624;,
 0.827679;0.603071;;
 }
}
}
Frame frm-cyl8 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh cyl8 {
 18;
 0.801997;-0.904746;5.271942;,
 -0.786515;-0.904746;5.271941;,
 0.801997;-1.283117;4.358472;,
 -0.786515;-1.283117;4.358472;,
 0.801997;-0.904746;3.445004;,
 -0.786515;-0.904746;3.445003;,
 0.801997;0.008723;3.066633;,
 -0.786515;0.008723;3.066633;,
 0.801997;0.922191;3.445004;,
 -0.786515;0.922192;3.445003;,
 0.801997;1.300562;4.358472;,
 -0.786515;1.300563;4.358472;,
 0.801997;0.922191;5.271942;,
 -0.786515;0.922192;5.271942;,
 0.801997;0.008723;5.650312;,
 -0.786515;0.008723;5.650312;,
 0.801997;0.008723;4.358472;,
 -0.786515;0.008723;4.358472;;

 24;
 3;17,15,13;,
 4;14,12,13,15;,
 3;16,12,14;,
 3;17,13,11;,
 4;12,10,11,13;,
 3;16,10,12;,
 3;17,11,9;,
 4;10,8,9,11;,
 3;16,8,10;,
 3;17,9,7;,
 4;8,6,7,9;,
 3;16,6,8;,
 3;17,7,5;,
 4;6,4,5,7;,
 3;16,4,6;,
 3;17,5,3;,
 4;4,2,3,5;,
 3;16,2,4;,
 3;17,3,1;,
 4;2,0,1,3;,
 3;16,0,2;,
 3;17,1,15;,
 4;0,14,15,1;,
 3;16,14,0;;

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
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "wep91.ppm";
 }
 }
}
 MeshNormals {
  18;
  0.707107;-0.500000;0.500000;,
  -0.707107;-0.500000;0.500000;,
  0.707107;-0.707107;0.000000;,
  -0.707107;-0.707107;-0.000000;,
  0.707107;-0.500000;-0.500000;,
  -0.707107;-0.500000;-0.500000;,
  0.707107;-0.000000;-0.707107;,
  -0.707107;0.000000;-0.707107;,
  0.707107;0.500000;-0.500000;,
  -0.707107;0.500000;-0.500000;,
  0.707107;0.707107;-0.000000;,
  -0.707107;0.707107;-0.000000;,
  0.707107;0.500000;0.500000;,
  -0.707107;0.500000;0.500000;,
  0.707107;-0.000000;0.707107;,
  -0.707107;-0.000000;0.707107;,
  1.000000;-0.000000;0.000000;,
  -1.000000;0.000000;-0.000000;;

  24;
  3;17,15,13;,
  4;14,12,13,15;,
  3;16,12,14;,
  3;17,13,11;,
  4;12,10,11,13;,
  3;16,10,12;,
  3;17,11,9;,
  4;10,8,9,11;,
  3;16,8,10;,
  3;17,9,7;,
  4;8,6,7,9;,
  3;16,6,8;,
  3;17,7,5;,
  4;6,4,5,7;,
  3;16,4,6;,
  3;17,5,3;,
  4;4,2,3,5;,
  3;16,2,4;,
  3;17,3,1;,
  4;2,0,1,3;,
  3;16,0,2;,
  3;17,1,15;,
  4;0,14,15,1;,
  3;16,14,0;;
 }
 MeshTextureCoords { 
 18;
 0.054247;0.947371;,
 0.054247;0.947371;,
 0.175781;1.000000;,
 0.175781;1.000000;,
 0.297315;0.947371;,
 0.297315;0.947371;,
 0.347656;0.820313;,
 0.347656;0.820313;,
 0.297315;0.693254;,
 0.297315;0.693254;,
 0.175781;0.640625;,
 0.175781;0.640625;,
 0.054247;0.693254;,
 0.054247;0.693254;,
 0.003906;0.820313;,
 0.003906;0.820313;,
 0.175781;0.820313;,
 0.175781;0.820313;;
 }
}
}
}

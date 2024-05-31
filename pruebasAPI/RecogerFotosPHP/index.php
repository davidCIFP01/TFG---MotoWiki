<?php

$conexion = mysqli_connect("localhost","root","","motowiki");

/* Recogemos todos los nombres de motocicletas existentes */
$sql = "SELECT idMoto,nombreModelo,fechaFabricacion FROM motocicleta";

$result = $conexion->query($sql);

print_r($result);



foreach ($result->fetch_all() as $key => $value) {
    echo "<br>$value[0]-$value[1]";
}


?>


<!-- 

UDATE 


UPDATE motocicleta SET descripcion = "" WHERE idMoto = 851;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 852;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 853;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 854;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 855;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 856;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 857;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 858;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 859;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 860;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 861;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 862;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 863;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 864;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 865;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 866;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 867;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 868;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 869;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 870;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 871;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 872;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 873;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 874;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 875;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 876;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 877;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 878;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 879;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 880;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 881;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 882;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 883;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 884;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 885;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 886;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 887;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 888;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 889;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 890;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 891;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 892;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 893;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 894;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 895;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 896;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 897;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 898;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 899;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 900;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 901;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 902;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 903;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 904;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 905;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 906;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 907;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 908;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 909;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 910;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 911;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 912;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 913;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 914;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 915;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 916;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 917;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 918;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 919;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 920;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 921;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 922;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 923;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 924;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 925;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 926;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 927;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 928;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 929;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 930;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 931;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 932;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 933;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 934;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 935;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 936;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 937;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 938;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 939;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 940;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 941;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 942;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 943;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 944;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 945;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 946;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 947;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 948;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 949;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 950;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 951;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 952;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 953;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 954;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 955;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 956;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 957;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 958;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 959;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 960;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 961;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 962;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 963;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 964;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 965;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 966;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 967;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 968;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 969;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 970;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 971;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 972;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 973;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 974;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 975;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 976;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 977;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 978;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 979;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 980;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 981;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 982;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 983;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 984;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 985;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 986;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 987;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 988;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 989;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 990;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 991;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 992;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 993;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 994;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 995;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 996;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 997;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 998;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 999;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1035;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1036;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1037;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1038;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1039;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1040;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1041;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1042;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1043;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1044;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1045;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1046;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1047;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1048;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1049;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1050;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1051;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1052;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1053;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1054;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1055;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1056;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1057;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1058;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1059;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1060;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1061;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1062;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1063;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1064;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1065;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1066;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1067;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1068;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1069;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1070;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1071;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1072;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1073;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1074;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1075;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1076;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1077;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1078;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1079;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1080;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1081;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1082;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1083;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1084;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1085;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1086;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1087;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1088;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1089;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1090;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1091;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1092;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1093;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1094;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1095;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1096;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1097;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1098;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1099;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1161;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1162;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1163;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1164;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1165;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1166;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1167;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1168;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1169;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1170;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1171;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1172;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1173;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1174;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1175;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1176;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1177;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1178;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1179;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1180;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1181;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1182;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1183;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1184;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1185;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1186;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1187;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1188;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1189;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1190;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1191;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1192;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1193;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1194;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1195;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1196;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1197;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1198;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1199;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1200;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1201;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1202;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1203;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1204;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1205;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1206;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1207;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1208;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1209;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1210;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1211;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1212;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1213;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1214;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1215;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1216;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1217;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1218;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1219;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1220;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1221;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1222;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1223;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1224;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1225;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1226;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1227;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1228;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1229;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1230;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1231;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1232;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1233;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1234;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1235;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1236;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1237;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1238;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1239;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1240;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1241;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1242;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1243;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1244;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1245;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1246;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1247;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1248;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1249;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1250;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1251;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1252;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1253;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1254;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1255;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1256;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1257;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1258;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1259;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1260;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1261;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1262;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1263;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1264;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1265;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1266;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1267;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1268;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1269;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1270;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1271;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1272;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1273;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1274;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1275;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1276;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1277;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1278;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1279;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1280;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1281;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1282;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1283;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1284;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1285;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1286;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1287;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1288;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1289;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1290;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1291;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1292;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1293;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1294;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1295;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1296;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1297;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1298;
UPDATE motocicleta SET descripcion = "" WHERE idMoto = 1299;




































































































































































































































































 -->


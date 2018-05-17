%%MODELO DE LOS MOTORES DE CRUSH%%

%% INERCIA DE LOS MOTORES %%
Volumen_Rueda = 8.2e-6;
Densidad_Acero = 7850;
Volumen_Eje = 1.194e-7;
Masa_Eje = 3.373e-4;
Radio_Eje = 1e-3;
Inercia_Rueda = 1.708e-6;
Inercia_Eje = 4.687e-10;
Inercia_Transmision = 1.9315e-5;
Inercia_Total = Inercia_Rueda + Inercia_Transmision;
Bm_Izquierda = 0.032095117;
Bm_Derecha = 0.022101365;

%%% PARÁMETROS DEL MOTOR DE LA DERECHA (CABLE ROJO)
L_Derecha = 0.000249;
Ra_Derecha = 1.617;
Kv_Derecha = 0.2121;

%%% PARÁMETROS DEL MOTOR DE LA IZQUIERDA (CABLE VERDE)
L_Izquierda = 0.000243;
Ra_Izquierda = 1.619;
Kv_Izquierda = 0.2304;

%Funcion de transferencia

Num_Derecha = Kv_Derecha;
Den_Derecha = [(Inercia_Total*L_Derecha) (Ra_Derecha*Inercia_Total+L_Derecha*Bm_Derecha) (Ra_Derecha*Bm_Derecha+Kv_Derecha*Kv_Derecha)];

Num_Izquierda = Kv_Izquierda;
Den_Izquierda = [(Inercia_Total*L_Izquierda) (Ra_Izquierda*Inercia_Total+L_Izquierda*Bm_Izquierda) (Ra_Izquierda*Bm_Izquierda+Kv_Izquierda*Kv_Izquierda)];
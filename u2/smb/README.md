# **P1: Recursos SMB/CIFS**

### **0. Introducción**

Vamos a necesitar las siguientes máquinas:

| ID  | Función  | SSOO     | IP estática  | Hostname  |
| --- | -------- | -------- | ------------ | --------- |
| MV1 | Servidor | OpenSUSE | 172.19.23.31 | server23g |
| MV2 | Cliente  | OpenSUSE | 172.19.23.32 | client23g |
| MV3 | Cliente  | Windows  | 172.19.23.12 | client23w |

### **1. Servidor Samba**

#### **1.1 Preparativos**

![](img/002.png)

![](img/001.png)

#### **1.2 Usuarios locales**

![](img/003.png)

![](img/007.png)

![](img/005.png)

![](img/006.png)

#### **1.3 Crearemos las carpetas para los futuros recursos compartidos**

![](img/008.png)

![](img/009.png)

* Vamos a crear las carpetas para los recursos compartidos de la siguiente forma:

| Recurso  | Directorio              | Usuario    | Grupo      | Permisos |
| -------- | ----------------------- | ---------- | ---------- | -------- |
| public   | /srv/samba23/public.d   | supersamba | sambausers | 770 |
| castillo | /srv/samba23/castillo.d | supersamba | soldados   | 770 |
| barco    | /srv/samba23/barco.d    | supersamba | piratas    | 770 |

![](img/010.png)

#### **1.4 Configurar el servidor Samba**

![](img/011.png)

![](img/012.png)

![](img/013.png)

![](img/014.png)

![](img/015.png)

- Reiniciamos la MV y comrpobamos:

![](img/016.png)

#### **1.5 Crear los recursos compartidos de red**

![](img/018.png)

![](img/020.png)

![](img/021.png)

![](img/022.png)

#### **1.6 Usuarios Samba**

![](img/024.png)

![](img/026.png)

#### **1.7 Reiniciar**

![](img/027.png)


### **2. Windows**

![](img/061.png)

![](img/028.png)

![](img/063.png)

#### **2.1 Cliente Windows GUI**

![](img/029.png)

![](img/030.png)

![](img/031.png)

![](img/032.png)

![](img/033.png)

![](img/034.png)

![](img/035.png)

![](img/036.png)

#### **2.2 Cliente Windows comandos**

![](img/037.png)

![](img/038.png)

![](img/041.png)

![](img/039.png)

![](img/040.png)

### **3. Cliente GNU/Linux**

![](img/064.png)

![](img/042.png)

#### **3.1 Cliente GNU/Linux GUI**

![](img/043.png)

![](img/044.png)

![](img/045.png)

![](img/046.png)

![](img/047.png)

![](img/048.png)

![](img/049.png)

![](img/050.png)

#### **3.2 Cliente GNU/Linux comandos**

![](img/051.png)

![](img/052.png)

![](img/053.png)

![](img/054.png)

![](img/055.png)


#### **3.3 Montaje automático**

![](img/056.png)

![](img/060.png)

![](img/059.png)

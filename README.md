# MovieApp Swift PROGRAMATICALLY with Core Data Save Data Online and Offline 
This is a app with Swift, Programatically, RestApi, Generics, CoreData and Allow to user Save online and Offline

## How To use This app

## Entregables 

- [x] Consumir Api the peliculas TMDB
- [x] Debe tener tres categorias Popular, Top Rated, Upcomig
- [x] Cada Pelicula y/o serie debe poder previsualizar su detalle
- [x] Debe funcional tanto online como Offline 
- [x] Debe tener Un Buscador Online 

## Extras 

- [x] Vista PROGRAMATICALLY hecha toda con codigo sin ambargo fue un reto aunque se usar storyboard y swift ui me quise retar gracias a Dios se Logro
- [x] Trasiciones, Animacion UX/UX Aplicado a cada Vista y en Search Online cuanto se busca y el buscador offline 
- [x] Prubas unitarias realice pruebas unitarias aplicadas a los servicos y consume de la api status 200 y llamado de la api ademas a Core data y un test de perfoman 
- [ ] Visualizacion de videos en el detalle de cada item en **PROCESO**

## Preguntas Responabilidad Unica

- El principio de responsabilidad unica es el Primer principio **Solid** en ingles Single Responsability en este caso una clase debe tener una unica responsabilidad es decir que si tengo multiples responsabilidades aplicadas a una clase se romperia este principio un ejemplo sencillo seria supongamos que tenga un clase login y esta tenga multiples responsabilidades como autenticacion, el decode del servicio y el guardar la informacion en este caso existiria 3 responsabilidades las cuales rompen el principio de responsbilidad unica esta ejecutando 3 repoonsabilidades en una sola clase para solucionarlo se podria estraer estas tres responsabilidades en otras clases mas pequeñas y este se creo con el proposito de estruturar un codigo mas limpio y organizado y entendible asi como regir por un parametro todos los codigos con el fin de que haya un estandar del codigo y cualquiera pueda modificar y entender tu codigo y asi reducir la fragilidad del codigo y permitir crear clases reusables de facil mantenimiento y poder separar el codigo el bloques pequeños.

## Codigo Limpio 
- Para mi un codigo limpio primero es el que esta bien estructurado en este caso con un patron de diseño MVC, MMVV, VIPER, MVP segundo un proyecto debe tener una logica de estruturación y nombres logicos de cada folder, tambien debe tener una buena documentacion, comentarios que permitan entender mejor el codigo las funciones o variables, y para finalizar un buen codigo es aquel que permite la refactorización del codigo para hacerlo mas limpio que al final del dia es una de las mejores practicas si haces algo pero lo puedes simplicar con mas logica entonces seria un codigo limpio por ultimo aplicar un buen testing y los principios Solid para hacer componentes reutilizables en bloques mas pequeños.

## Patron de Diseño 
 I CAN USE MVC in future implement better implementation MMVV OR VIPER 
 
## Demo App 

<table>
  <tr>
    <td>Demo One</td>
     <td>Demo Two</td>
  </tr>
  <tr>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Simulator%20Screen%20Recording%20-%20iPhone%2012%20Pro%20-%202021-09-15%20at%2022.49.07.gif?raw=true" width=270 height=480></td>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Grabación%20de%20pantalla%202021-09-16%20a%20la(s)%203.59.01%20p.%C2%A0m..gif?raw=true" width=270 height=480></td>
  </tr>
 </table>

** Go to the folder tmdMovie and install Pods to project 

```
pod install

```

** Now Open tmdMovie.xcworkspace. into to Xcode
** **Note:** If any problem to remove pods the project and reinstall to Pods with the comand 

```
pod install

```

** Finally Build with cmd + B in the keyboard and Run the app in the Simulator or Phone 
** **Note:** The Phone when I can use is Iphone 7 to Phone and Simulator 12 Pro

## Project 
### Api 

```
https://www.themoviedb.org/?language=es

```
### ScreenShot Project
#### Popular and Search Offline

<table>
  <tr>
    <td>Popular</td>
     <td>Deatil View</td>
     <td>Search Offline</td>
     <td>Search Offline</td>
  </tr>
  <tr>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.37.00%20p.%C2%A0m..png?raw=true" width=270 height=480></td>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.37.15%20p.%C2%A0m..png?raw=true" width=270 height=480></td>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.38.02%20p.%C2%A0m..png?raw=true" width=270 height=480></td>
        <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.38.18%20p.%C2%A0m..png?raw=true" width=270 height=480></td>
  </tr>
 </table>

#### Upcoming, TopRated  and Search Online 

<table>
  <tr>
    <td>TopRated</td>
    <td>Upcoming</td>
     <td> Search Online </td>
     <td> Search Online </td>
  </tr>
  <tr>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.38.38%20p.%C2%A0m..png?raw=true" width=270 height=480></td>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.38.45%20p.%C2%A0m..png?raw=true" width=270 height=480 ></td>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.38.58%20p.%C2%A0m..png?raw=true" width=270 height=480></td>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.39.15%20p.%C2%A0m..png?raw=true" width=270 height=480></td>
  </tr>
 </table>


### Information to Project 

the project only use Two Libraries External **SDWebImage** to consume image the api and **Swift-YouTube-Player** to consume Video to app not more the consume 
to the app is only with **Generics** and **URLSession** that provides APi to apple to save the Data in the Storage I can Use **CoreData** and NSManagedObject to
strutured the Model To the  View I don't Use StoryBoard and SwiftUI all View is Doing with **PROGRAMATICALLY**

<img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.41.43%20p.%C2%A0m..png?raw=true" width="200" height="400">

## Views Strutures 

To estructurtes the Views I use **PROGRAMATICALLY**

### View The movies the Section Detail and Section Movies

<table>
  <tr>
    <td>Popular</td>
     <td>Detailn</td>
  </tr>
  <tr>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.55.40%20p.%C2%A0m..png?raw=true" width=270 height=480></td>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.55.28%20p.%C2%A0m..png?raw=true" width=270 height=480></td>
  </tr>
 </table>


## Folders To App

### Helpers

This Help me to Layout Views the App

<img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.45.14%20p.%C2%A0m..png?raw=true">

### Services

Help me to consume APIRest and pass data to coreData

** File **PopularservicesModel...** Contain the model to save data to api and fetch core Data to save Storage 
** File **NetworkServices** conatin the services to consume api with URLSession and decode data to Api 

<img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.44.31%20p.%C2%A0m..png?raw=true">

### Controllers 

Help me to managed Protocol and state the app 

** **BaseTabController:** contain the all Controller principal **Popular**, **Toprated**, **Upcomming** and **Search** 
** **BaseListController:** An abstract class that serves as the basis for objects that enable archiving and distribution of other objects.
** **DetailController:** Contain the Detail managed to each View

<img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.43.37%20p.%C2%A0m..png?raw=true">

### Views 

Help me to managed View the cell to each View SearhViewCell, PopularViewCell, UpcommingViewCell, TopRatedViewCell and Detail To each ViewCell

** **ViewCell:** contain the all Controller principal **Popular**, **Toprated**, **Upcomming** and **Search** 
** **DetailViewCell:** contain the all Controller principal **Popular**, **Toprated**, **Upcomming** and **Search** 

<img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.43.01%20p.%C2%A0m..png?raw=true">

### Model 

Help me to managed Model and Strutured the data to Decode and save to pass Controllers Searh Popular, Upcomming, TopRated and DBManager to local Database in this case CoreData

** **Model:** contain the all Model strurture principal **Popular**, **Toprated**, **Upcomming** and **Search** 
** **DBManager:** contain Managed local database  

<img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.42.31%20p.%C2%A0m..png?raw=true">

## Tools Help Me 

<table>
  <tr>
    <td>Postman</td>
     <td>Xcode</td>
     <td>CoreData</td>
  </tr>
  <tr>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.41.06%20p.%C2%A0m..png?raw=true"></td>
    <td><img src="https://cutt.ly/rEtzcha"></td>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.40.10%20p.%C2%A0m..png?raw=true"></td>
  </tr>
 </table>
 
 ## Testing 

<table>
  <tr>
    <td>Tesing Api status code 200</td>
     <td>Testing Performance</td>
  </tr>
  <tr>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.13.15%20p.%C2%A0m..png?raw=true"></td>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.27.21%20p.%C2%A0m..png?raw=true"></td>
  </tr>
 </table>

 ## Testing 
 
 <table>
  <tr>
     <td>Testing Api</td>
     <td>Testing</td>
  </tr>
  <tr>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.28.30%20p.%C2%A0m..png?raw=true"></td>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.31.34%20p.%C2%A0m..png?raw=true"></td>
  </tr>
 </table>
 

## NEW FREATURES UPComing 

- [ ] Implemeting Videos into App
- [ ] Create new Better model maybe to LocalDataBase
- [ ] Create Interface with Figma to create better Interface 
- [ ] Create more Animations to Views 

## Example NEW Implementaion 


<img src="https://pbs.twimg.com/media/E-URuLaWEAIT8sI?format=jpg&name=medium">










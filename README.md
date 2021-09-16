# MovieApp Swift PROGRAMATICALLY with Core Data Save Data Online and Offline 
This is a app with Swift, Programatically, RestApi, Generics, CoreData and Allow to user Save online and Offline

## How To use This app

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
  </tr>
  <tr>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.37.00%20p.%C2%A0m..png?raw=true" width=270 height=480></td>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.37.15%20p.%C2%A0m..png?raw=true" width=270 height=480></td>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.38.02%20p.%C2%A0m..png?raw=true" width=270 height=480></td>
  </tr>
 </table>

#### Upcoming, TopRated  and Search Online 

<table>
  <tr>
    <td>Upcoming</td>
     <td>TopRated</td>
     <td> Search Online </td>
     <td> Search Online </td>
  </tr>
  <tr>
    <td><https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.38.18%20p.%C2%A0m..png?raw=true" width=270 height=480></td>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.38.38%20p.%C2%A0m..png?raw=true" width=270 height=480></td>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.38.45%20p.%C2%A0m..png?raw=true></td>
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
    <td>First Screen Page</td>
     <td>Holiday Mention</td>
  </tr>
  <tr>
    <td><img src="screenshots/Screenshot_1582745092.png" width=270 height=480></td>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.55.40%20p.%C2%A0m..png?raw=true" width=270 height=480></td>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.55.28%20p.%C2%A0m..png?raw=true" width=270 height=480></td>
  </tr>
 </table>

** <img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.55.40%20p.%C2%A0m..png?raw=true" width="200" height="400">

**  <img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.55.28%20p.%C2%A0m..png?raw=true" width="200" height="400">

## Folders To App

### Helpers

This Help me to Layout Views the App

<img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.45.14%20p.%C2%A0m..png?raw=true" width="200" height="300">

### Services

Help me to consume APIRest and pass data to coreData

** File **PopularservicesModel...** Contain the model to save data to api and fetch core Data to save Storage 
** File **NetworkServices** conatin the services to consume api with URLSession and decode data to Api 

<img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.44.31%20p.%C2%A0m..png?raw=true" width="200" height="300">

### Controllers 

Help me to managed Protocol and state the app 

** **BaseTabController:** contain the all Controller principal **Popular**, **Toprated**, **Upcomming** and **Search** 
** **BaseListController:** An abstract class that serves as the basis for objects that enable archiving and distribution of other objects.
** **DetailController:** Contain the Detail managed to each View

<img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.43.37%20p.%C2%A0m..png?raw=true" width="200" height="300">

### Views 

Help me to managed View the cell to each View SearhViewCell, PopularViewCell, UpcommingViewCell, TopRatedViewCell and Detail To each ViewCell

** **ViewCell:** contain the all Controller principal **Popular**, **Toprated**, **Upcomming** and **Search** 
** **DetailViewCell:** contain the all Controller principal **Popular**, **Toprated**, **Upcomming** and **Search** 

<img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.43.01%20p.%C2%A0m..png?raw=true" width="200" height="300">

### Model 

Help me to managed Model and Strutured the data to Decode and save to pass Controllers Searh Popular, Upcomming, TopRated and DBManager to local Database in this case CoreData

** **Model:** contain the all Model strurture principal **Popular**, **Toprated**, **Upcomming** and **Search** 
** **DBManager:** contain Managed local database  

<img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.42.31%20p.%C2%A0m..png?raw=true" width="200" height="300">

## Tools Help Me 

<table>
  <tr>
    <td>Postman</td>
     <td>Xcode</td>
     <td>CoreData</td>
  </tr>
  <tr>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.41.06%20p.%C2%A0m..png?raw=true" width=270 height=480></td>
    <td><img src="https://mail.google.com/mail/u/0?ui=2&ik=8ecb57b6c5&attid=0.1&permmsgid=msg-a:r6396285636973040984&th=17be0e1beab58156&view=fimg&sz=s0-l75-ft&attbid=ANGjdJ_M92k8dWqD-bsMiBkSj4ly952AZqh-6w-TlgwBmnPJzHCf2rkes6SZnULera2ptl3NBYJ5obeRY60RmJ1v2sTXyU1LUviyKaG6paHVD37yqtGHO5uh5i7V-3o&disp=emb&realattid=ii_ktj3odd00" width=270 height=480></td>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.40.10%20p.%C2%A0m..png?raw=true" width=270 height=480></td>
  </tr>
 </table>
 
 ## Testing 

<table>
  <tr>
    <td>Tesing Api status code 200</td>
     <td>Testing Performance</td>
     <td>Testing Api</td>
     <td>Testing</td>
  </tr>
  <tr>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.13.15%20p.%C2%A0m..png?raw=true" width=270 height=480></td>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.27.21%20p.%C2%A0m..png?raw=true" width=270 height=480></td>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.28.30%20p.%C2%A0m..png?raw=true" width=270 height=480></td>
    <td><img src="https://github.com/memof90/MovieApp-Swift-Offline-Online-restApi/blob/master/tmdMovie/ScreenApp/Captura%20de%20Pantalla%202021-09-16%20a%20la(s)%203.31.34%20p.%C2%A0m..png?raw=true" width=270 height=480></td>
  </tr>
 </table>
 














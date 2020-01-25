List Of Resources To Start With flutter :

https://codelabs.developers.google.com/codelabs/flutter/#0


Flutter Bootcamp : https://www.appbrewery.co/p/flutter-development-bootcamp-with-dart/

https://flutterlearn.com/

Facebook group: https://www.facebook.com/groups/425920117856409/

MtechViral : https://www.youtube.com/watch?v=Nl2kmAbC0bg&list=PLR2qQy0Zxs_WAho9MWS1e36xF9PKLdM5w&index=2&t=0s



Important Shortcuts in VScode :

ctrl+F5 to refresh after importing packages into the app

ctrl+shift+i  to indent the code

To perfectly fit an image into a container  : use boxfit.fill


To add an image to the icon of the app  : android->app->src->main->res->Show in explorer and repalce all the minmap from https://appicon.co/



## Containers in Flutter :
  
    - A container in flutter is similar to a div in web development 
    - A container is a single view widget which can contain only a single **child** 
    - margin : EdgeInsets.all() is used to align a particular container on the screen
    - padding : EdgeInsets.all() is used to align the contengts of a continer and not the container itself.
    
![Container](https://raw.githubusercontent.com/HariPranav/Flutter/master/Screenshot_20200116-100925.jpg)

## Rows and Columns:
  
    - The problem with these two widgets is that they extend the entire row or the column
        - To prevent this we make use of the mainAxisSize: MainAxisSize.min/max widget to limit the size of the Row or Column its  
          children
 ![mainAxis.size](https://raw.githubusercontent.com/HariPranav/Flutter/master/Screenshot_20200116-123708.jpg)
    - We can use the Row Widget to use multiple widgets in a Row and Column widget to store multiple things in a single column                 
      horizontally.
    -For the column widget we can use the verticalDirection : VerticalDirection.down to allow the alignment from top to bottom.
    
    - To align all the children of the  row or column , we can use the mainAxisAlignment:MainAxisAlignment.spaceEvenly widget
    
     ![RowsAndColumns](https://raw.githubusercontent.com/HariPranav/Flutter/master/Screenshot_20200116-124601.jpg)
     
    - The mainAxisAlignment and the crossAxisAlignment widgets align the children based on the largest child height or width.
    
    - here  below we have two containers, the first having width of 280 and the second having a width of 180 ,and we have given the 
      crossAxisAlignment to end
      
![RowsAndColumns](https://raw.githubusercontent.com/HariPranav/Flutter/master/Screenshot_20200116-125631.jpg)
      
 # Mi Card Challenge:
     
![Mi Card Challenge](https://raw.githubusercontent.com/HariPranav/Flutter/master/micardChallenge.png)
    
      - Layout : 
          - Scaffold -> body ->ListView->CircleAvatar->AssetImage
                                       ->Text
                                       ->Container->Row->Icon
                                                       ->Phone Number
                                                       
 ## Completed Challenge!!
 
![Mi card Challenge](https://raw.githubusercontent.com/HariPranav/Flutter/master/Screenshot_20200119-222956.jpg)
                                  
     
# How to space out multiple elements in a Row

Multiple images have multiple pixels and multiple sizes that have to be taken into consideration before using them on **multiple screens sizes** and multiple **orientations**

below is an example of a dice images which is 500px and it extends out of the boundaries

![](https://raw.githubusercontent.com/HariPranav/Flutter/master/Screenshot_20200119-223458.jpg)

WE have the widget known as the  **Expanded Widget** which contains a **flex** property which is **1** by default which denotes the **ratio**

Hence if we put out images or other widgets which are part of rows or columns inside an **Expanded Widget** the elements will fit in according to the screen size

![Exxpanded Widget](https://raw.githubusercontent.com/HariPranav/Flutter/master/Screenshot_20200119-224218.jpg)
![Expanded Widget](https://raw.githubusercontent.com/HariPranav/Flutter/master/Screenshot_20200119-224237.jpg)


## Using Flex

![Flex With Exapanded Widget](https://raw.githubusercontent.com/HariPranav/Flutter/master/Screenshot_20200119-224836.jpg)


## Create app with background 

  Using **scafffold** bg color and the container bg color we can have a dual tone accent to the app
  
![Dual Tone App](https://raw.githubusercontent.com/HariPranav/Flutter/master/Screenshot_20200124-090918.jpg)


## Dice App challenge 

We use the set state function to identify the **variable** in which the state is changed and to mark it as **dirty** this allows the build method to identify the part of the code in which the build method is changed and **paint** the screen accordingly.

In this challenge we need to change the state of both the dice when a single die is pressed 

Hence the mistake that i was making was that **i used a single variable** to change the state of the die when a single die is pressed

By using **two variables ** to change the state the app was successfull

Next when we used a **single** function to encapsulte the **Random Variables** the function was **outside the class** hence the **setState()** method was not working hence by using it within the class we can see that it works now

![properSetState](https://raw.githubusercontent.com/HariPranav/Flutter/master/1.png)


 

## Overview

Welcome to Houzee, a revolutionary app that connects passionate homemakers with individuals craving wholesome, home-cooked meals.
This repository serves as the central hub for the development of our app.
Currently the repository contains code for the app's frontend, backend, and a prototype machine learning model for predicting the success rate of a chef.

## Features

-**Smart Meal Recommendations**: A recommendation engine that analyzes users' preferences, past orders, and dietary restrictions to suggest personalized meal options.<br></br>
-**Community Ratings and Reviews**: Users can rate and review meals they've ordered.<br></br>
-**Meal Subscriptions**: A subscription model can allow users to subscribe to their favorite homemakers for a regular supply of weekly or monthly meals.<br></br>
-**Cooking Classes and Live Demos**: Homemakers can offer virtual cooking classes through the app.<br></br>
-**Special Diet Filters**: Users can filter meals based on special dietary preferences such as vegetarian, vegan, gluten-free, or keto.<br></br>


## Tech Stack

- **Flutter**: For a rich and responsive cross-platform frontend.<br></br>
- **Firebase**: Powering the backend with Realtime Database, Firestore, Authentication, Cloud Functions, and Cloud Storage.<br></br>
- **Google Maps API**: Enhancing user experience with accurate and real-time tracking.<br></br>

## Architecure

Houzee is a modern and scalable application built using the microservices architecture. It is designed as a collection of loosely coupled microservices, each responsible for a specific business functionality. This architecture promotes maintainability and ease of development.
Some modules in the architecture are:
1. Authentication
2. User module
3. Cook module
4. Restaurant module
5. Order module
6. Community module
   
The link for the complete architecture: https://drive.google.com/drive/folders/1yNYdDUv0XNiiWog574HNMnDb7MHshqoC?usp=sharing


## How to run the code?

-	This is a flutter-based application; ensure you have the Flutter 3.13.7 version on your computer.
-	Install dependencies from the pubsec.yaml file in the root directory, if required.
-	On the bottom-right corner, choose a device to run the application.
-	Once the emulator is displayed, debug the file Houzee\lib\main.dart 
-	Make sure you uncheck "break on uncaught exceptions" option on the bottom left corner when the debugging starts.


Made By:<br></br>
Kapil Surya<br></br>
Samaya Argula<br></br>
Sneha Subbarayudu<br></br>

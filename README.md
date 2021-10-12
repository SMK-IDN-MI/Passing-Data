# Passing-Data
Passing data from a couple of screen into a Model

## Introduction
![Image](https://i.imgur.com/h0FLgiU.png)

Hi, this video is just a representation project from this [Video](https://youtu.be/UQXHOFGbMg0) by [Essential Developer](https://www.essentialdeveloper.com).

## Case
If there are couple of screen that refers to just a Model, what is the best practice to do it?

In this case, there are 3 Separated Register Screen that user should fill to Register. We will collect all the Data from 3 screens to a Model called User.

## Solution
Create Parent Controller, which is Navigation Controller in this case. Start with the first screen, Everytime user click `continue`, we push it to new screen and save the `Data` to the `Parent View Controller` (holder).

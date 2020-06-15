---
title: Workout Structures
keywords: pjl-fitness
# summary: "This is just a sample topic..."
sidebar: pjl-fitness-sidebar
permalink: pjl-fitness-workout-structures.html
folder: pjl-fitness
---

## The ‘Standard Workout’ Workout Structure

### Definition

A ‘standard’ workout is the simplest possible workout structure because a standard workout only consists of a single movement or movements. There is no time limit, number of rounds, or interval.

### Properties

![Image of Standard Workout](images/pjl-fitness-standard-workout.png)

- **Movements**: A standard workout is made up of one or many movements.
  - This field can be left blank although it would not make sense for a workout to have zero movements.
  - Click [here](pjl-fitness-add-movement-form) for more information about the Add Movement Form

### Use Cases and Example Workouts

- **Strength Workout**: Users doing a strength workout that consists of sets and reps could use the standard workout structure because each movement entry can be thought of as a set. For example:
  - **5x 5 Back Squat** - a workout that consisted of back squatting five sets of five reps would select a standard workout and add five entries of back squat with the corresponding weight
- **Cardio Workouts**: Users who are doing cardio with or without a machine could use the standard workout structure. For example:
  - **Mile Run** - a one mile run would consist of one movement entry for run with the volume one (1) and volume unit Miles.
  - **Bike Ride** - a bike ride could be an entry with or without a volume and volume unit.
  - **2k Row** - A single entry with row as the movement name and 2000 Meters as the volume and volume unit.
- **Mobility Workouts**: Users wanting to log a yoga class or mobility session could use a standard workout structure. For example:
  - **30-Minute Yoga Class** - An entry for the yoga class with or without additional property information.
- **Skill Workouts**: Users wanting to log some unstructured skill workout could do so with a standard workout. For example:
  - **Jump Rope Practice** - A workout named ‘Jump Rope Practice’ could have a single movement entry for double-unders.

## The ‘Interval Workout’ Workout Structure

### Definition

An ‘Interval’ workout is a common type of workout where the workout is structured by intervals, or fixed amounts of time. An interval can either be considered ‘Work’ (i.e. contains movements) or ‘Rest’ (i.e. contains no movements).

There are a number of benefits associated with this style of workout, but a discussion of those benefits is beyond the scope of this page. Interested readers can Google ‘For Time Workouts’.

### Properties

![Image of Interval Workout](images/pjl-fitness-interval-workout.png)

- **Rounds**: The number of rounds, or times through the collection of intervals, in the workout.
  - This field is blank by default, and can be left blank although it would not make sense to do so.
- **Intervals**: An interval workout is made up of one or many intervals.
  - This field can be left blank although it would not make sense for an interval workout to have zero intervals.
  - Click [here](pjl-fitness-add-interval-form) for more information about the Add Interval Form

### Use Cases and Example Workouts

Strength Workout:
Cardio Workouts:
Mobility Workouts:
Skill Workouts:

## The ‘EMOM Workout’ Workout Structure

### Definition

EMOM stands for Every Minute on the Minute and is a type of interval workout where you perform a specific task at the start of every minute for a set amount of time. An EMOM workout could also be defined using the [Interval Workout Structure](pjl-fitness-workout-structures.html#the-interval-workout-workout-structure), and is included separately because of its popularity. Users are welcome to assume any delimiter they wish and should not feel boxed in to minute intervals only.

There are a number of benefits associated with this style of workout, but a discussion of those benefits is beyond the scope of this page. Interested readers can check out [this article](https://boxlifemagazine.com/benefits-of-the-emom-every-minute-on-the-minute-workout/#:~:text=EMOM%20(which%20stands%20for%20every,What%20are%20the%20benefits%3F), or other such articles by Googling EMOM.

### Properties

![Image of EMOM Workout](images/pjl-fitness-emom-workout.png)

- **Rounds**: The number of rounds, or times through the collection of movements, in your workout
  - This field is blank by default, and can be left blank although it would not make sense to do so.
- **Movements**: An EMOM workout is made up of one or many movements.
  - This field can be left blank although it would not make sense for a workout to have zero movements.
  - The number of movements generally divide evenly into the number of rounds, but this is not enforced by the application.
  - Click [here](pjl-fitness-add-movement-form) for more information about the Add Movement Form

### Use Cases and Example Workouts

- **Strength Workout**:
  - **10 Minute EMOM** - 1 Squat Clean every minute on the minute.
- **Cardio Workouts**:
  - **12 Minute EMOM** - row 200 meters as fast as you can each minute on the minute.
- **Mobility Workouts**:
  - **20 Minute EMOM** - Alternate stretching your left and right hamstring (10x each) for 45 seconds each minute on the minute.
- **Skill Workouts**:
  - **8 Minute EMOM** - 2 strict pull-ups each minute on the minute.

## The ‘AMRAP Workout’ Workout Structure

### Definition

AMRAP stands for As Many Rounds As Possible and is a type of workout where you're performing as many reps of a single exercise as you can in a predetermined period of time, or as many rounds of several exercises as you can in a predetermined period of time.

There are a number of benefits associated with this style of workout, but a discussion of those benefits is beyond the scope of this page. Interested readers can check out [this article](https://www.verywellfit.com/amrap-workouts-you-can-do-at-home-4158160#:~:text=The%20concept%20is%20simple%E2%80%94AMRAP,pre%2Ddetermined%20period%20of%20time.), or other such articles by Googling AMRAP.

### Properties

![Image of AMRAP Workout](images/pjl-fitness-amrap-workout.png)

- **Time Cap**: The time limit on the workout. The time input is a special type of input that accepts a number of different time formats that are explained [here](pjl-fitness-special-form-inputs.html#the-time-input).
  - This field is blank by default, and can be left blank although it would not make sense to do so.
- **Movements**: An AMRAP workout is made up of one or many movements.
  - This field can be left blank although it would not make sense for a workout to have zero movements.
  - Click [here](pjl-fitness-add-movement-form) for more information about the Add Movement Form

### Use Cases and Example Workouts

- **Strength Workout**:
- **Cardio Workouts**:
- **Mobility Workouts**:
- **Skill Workouts**:

## The ‘For Time Workout’ Workout Structure

### Definition

‘For Time’ is a type of workout where a set amount of work (i.e. collection of movements) must be done as quickly as possible. A For Time workout can have a time limit in which case you try to get as far as possible, or no time limit in which case you are expected to finish the work or quit the workout.

There are a number of benefits associated with this style of workout, but a discussion of those benefits is beyond the scope of this page. Interested readers can Google ‘For Time Workouts’.

### Properties

![Image of For Time Workout](images/pjl-fitness-for-time-workout.png)

- **Rounds**: The number of rounds, or times through the collection of movements, in the workout.
  - This field is blank by default, and can be left blank although it would not make sense to do so.
- **Time Cap**: The time limit on the workout. The time input is a special type of input that accepts a number of different time formats that are explained [here](pjl-fitness-special-form-inputs.html#the-time-input).
  - This field is blank by default, and can be left blank. If left blank, a value of zero (i.e. no time cap) is assumed.
- **Movements**: A For Time workout is made up of one or many movements.
  - This field can be left blank although it would not make sense for a workout to have zero movements.
  - Click [here](pjl-fitness-add-movement-form) for more information about the Add Movement Form

### Use Cases and Example Workouts

- **Strength Workout**:
- **Cardio Workouts**:
- **Mobility Workouts**:
- **Skill Workouts**:

{% include links.html %}

---
title: The Add Workout Form
keywords: pjl-fitness
# summary: "This is just a sample topic..."
sidebar: pjl-fitness-sidebar
permalink: pjl-fitness-add-workout-form.html
folder: pjl-fitness
---

Adding a workout is the most fundamental task associated with a fitness journal. At PJL, we are constantly trying to make adding a new workout as effortless as possible. We do this primarily by designing the ‘Add Workout Form’ to be easy to use and edit. This page describes the feature, properties, and behaviors associated with the Add Workout Form.

## Add Workout Form Properties

The Add Workout Form has three parts:

1. Workout Info
2. Workout Structure
3. Workout Description

### Workout Info

![Image of Add Workout Info](images/pjl-fitness-add-workout-info.png)

The workout info consists of the following top-level meta-data about a particular workout:

- **Workout Name**:
  - The name associated with the workout. The workout name cannot be blank, cannot be longer than 100 characters long, and will be populated with a default value.
  - The workout name facilitates search for this workout once it has been added to your journal.
  - Note that the application will not stop (or warn) you from reusing the same name for distinct workouts.
- **Workout Date**:
  - The date associated with when the workout has, or will, happen. This value can be in the past or future, but cannot be blank. The value is populated by default.
  - The workout date is used to sort your workout journal chronologically, facilitates search for this workout once it has been added to your journal, and is used to generate appropriate groupings and metrics.
- **Type of Workout**:
  - The type of workout associated with this workout. This value must be populated, can only be one type, and will be populated by default.
  - The type of workout is used to generate appropriate groupings and metrics.
  - For more information about the types of workouts, see this post.
- **Workout Structure**:
  - The structure of the workout. This value must be populated, can only be one type, and will be populated by default.
  - The workout structure will control what the second part of the Add Workout Form will look like as each workout structure has its own distinct type of meta-data.
  - Note that when this value changes, the workout structure will be reset if it is populated for the simple reason that the workout structure associated with one workout structure cannot be mapped to another distinct workout structure.
  - If you are unfamiliar with the available workout structures or how to apply them for certain workouts, check out this blog.
- **Notes**:
  - Notes associated with the workout itself. This value can be blank and will not be populated by default. Notes are limited to 1000 characters.
  - Notes can be anything. Some example uses are a suggested warm-up, a planned modification, or planned set up.
  - Notes are not externally visible and can only be checked by editing the workout once added to your journal.

### Workout Structure

The workout structure section of the Add Workout Form is unique to the workout structure selected. The Add Workout Form will only show you the appropriate properties associated with your selection to ensure you are not shown superfluous inputs.
To access the workout structure part of the Add Workout Form, click the ‘Program Workout’ button\*. Each workout structure has its own set of associated properties with their own pages:

- [Standard](pjl-fitness-workout-structures.html#the-standard-workout-workout-structure)
- [EMOM (Every Minute on the Minute)](pjl-fitness-workout-structures.html#the-emom-workout-workout-structure)
- [AMRAP (As Many Reps As Possible)](pjl-fitness-workout-structures.html#the-amrap-workout-workout-structure)
- [For Time](pjl-fitness-workout-structures.html#the-for-time-workout-workout-structure)
- [Interval](pjl-fitness-workout-structures.html#the-interval-workout-workout-structure)

\*In PJL Fitness vernacular, ‘program’ means adding the movements, equipment, and structure associated with a workout. For example, if I’ve decided that I will do a cardio style workout, I will ‘program’ that workout by defining the movements and structure associated with the cardio workout.

### Workout Description

The workout description is your workout written out in words and, more importantly, is how the workout is represented in the application outside of the Add Workout Form. Check out the [workout description page](pjl-fitness-workout-description) for more information.

1. Automatic (beta)

- The Add Workout Form has beta functionality that will automatically define a workout structure based on the intervals and movements entered.
- The intention of this feature is to save the user time by creating either an adequate workout structure that can be used as-is, or the start of a workout structure that can be used as a jumping off point.

2. Manual

- Users can manually enter a workout structure by clicking the ‘Write Your Own’ button and entering the workout structure of their choosing.

#### Features

**Copy Workout Structure**: clicking the copy workout structure button will copy the current workout structure to your clipboard. The most common use case is to copy the automatically generated workout structure, click ‘Write Your Own’, and paste the contents to the text box for editing.

{% include links.html %}

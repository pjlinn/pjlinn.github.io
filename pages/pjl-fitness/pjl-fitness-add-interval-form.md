---
title: The Add Interval Form
keywords: pjl-fitness
# summary: "This is just a sample topic..."
tags: [pjl-fitness]
sidebar: pjl-fitness-sidebar
permalink: pjl-fitness-add-interval-form.html
folder: pjl-fitness
---

An interval is a special type of workout component specific to the [‘interval’ workout structure](pjl-fitness-workout-structures.html#the-interval-workout-workout-structure). An interval can be made up of zero or more [movements](pjl-fitness-add-movement-form). This page describes the properties, features, and behaviors associated with the ‘Add Interval Form’.

## Shared Add Interval Form Properties

- **Interval Type**: A predefined set of options represents the possible interval states.
  - This is a mandatory field and will be populated by default.
  - The two possible states are: ‘Work’ and ‘Rest’. Each state is associated with its own unique form options.
- **Interval**: The interval of time associated with the interval type. The time input is a special type of input that accepts a number of different time formats that are explained here.
  - This is a mandatory field left blank by default. If submitted with a blank value, a value of zero (0) is assumed.

### Work Add Interval Form Properties

![Image of Add Interval Form](images/pjl-fitness-add-interval-form-work.png)

- **AMRAP**: A checkbox indicating whether or not the interval should be considered an AMRAP\*
  - This is a mandatory field and will be set to false (unchecked) by default.
  - \*AMRAP refers to As Many Reps As Possible and indicates whether or not the work interval should be repeated until the interval time expires.
- **Movements**: A work interval is made up movements.
  - This is an optional property although it would not make sense to have a work interval with zero movements.
  - Click [here](pjl-fitness-add-movement-form) for more information about the Add Movement Form

### Rest Add Interval Form Properties

![Image of Add Interval Form](images/pjl-fitness-add-interval-form-rest.png)

A rest interval has no additional properties. However please note that if ‘Rest’ is selected, any movements associated with the previous ‘Work’ interval will be removed and this action cannot be undone.

## Features

The Add Interval Form is more than just a simple form. Instead, it is built with distinct features that ensure users can quickly add intervals in a structured and searchable way.

### **Header Controls**:

Each Add Interval Form comes with a set of controls that adjust the position of the interval, delete the interval, or create a copy of the interval. More information on header controls can be found [here](pjl-fitness-header-controls).

{% include links.html %}

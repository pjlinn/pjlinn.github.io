---
title: Add Movement Form
keywords: pjl-fitness
# summary: 'This is just a sample topic...'
tags: [pjl-fitness]
sidebar: pjl-fitness-sidebar
permalink: pjl-fitness-add-movement-form.html
folder: pjl-fitness
---

The movement is the fundamental building block of any workout. All workouts must have at least one movement, and movements are the single shared property across [all workout structures](pjl-fitness-workout-structures). This page describes the properties, features, and behaviors associated with the Add Movement Form.

## Properties

![Image of Add Movement Form](images/pjl-fitness-add-movement-form.png)

The Add Movement Form is a single form capable of capturing the majority of all possible workout movements. The Add Movement Form consists of the following properties:

- **Movement Name**: The name associated with the movement.
  - This value must be populated (max 100 characters) and can not contain special characters or numbers.
  - The movement name is used when searching for movements and is used to generate appropriate groupings and metrics.
- **Volume**: A positive integer corresponding to the number of Volume Units associated with the movement in this particular workout. A value of zero (0) corresponds to a ‘max’ number of volume units given a separate constraint such as length of time.
  - This value is blank by default and if left blank, a value of zero is assumed.
- **Volume Unit**: A predefined set of options that represent the unit of measure for the volume input.
  - This is a mandatory field, can only be one value, and is set by default.
  - More information on the list of volume units and example uses can be found [here](pjl-fitness-add-movement-form.html#volume-units).
- **Weight**: A positive integer corresponding to the weight associated with the movement.
  This value is blank by default and if left blank, a value of zero is assumed.
- **Weight Unit**: A predefined set of weight units that represent the unit of measure for the volume input.
  - This is a mandatory field, can only have one value, and is set by default. For weights equal to zero, the appropriate weight unit is ‘NA’.
  - More information on the list of weight units and example uses can be found [here](pjl-fitness-add-movement-form.html#weight-units).
- **Group with Next Movement**: A checkbox indicating whether or not this movement should be grouped with the movement immediately following. A user would group a movement with another to create a ‘compound’ or ‘complex’ movement, or to facilitate the creation of multiple movements at once (see ‘Movement Grouping’ in the feature section).
  - This is a mandatory field, and is false (unchecked) by default.

Users often wonder where the **‘sets’** property is. The answer is that there is no ‘sets’ property. Instead, it is assumed that a movement, or group of movements, represents a set in a workout. For example, if you had a workout that was 5 sets of 5 reps of bench press, you would add the bench press movement 5 times and adjust the weight accordingly.

## Features

The Add Movement Form is more than just a simple form. Instead, it is built with distinct features that ensure users can quickly add any movement in a structured and searchable way.

### **Movement Name Autocomplete**:

When a user starts typing a movement name, a list of matching movement names will appear for the user to choose from. If the user chooses to select from the autocomplete list, sensible defaults will be set for the corresponding movement properties (see Movement Field Autopopulate).

#### **Behaviors**:

- When Does the Search Begin?
  - Almost immediately after the user starts typing.
- What if I Don’t See the Dropdown?
  - If you don’t see the dropdown, wait a moment (~half second) before typing your next keystroke. If you’ve finished typing, wait a moment and hit the backspace.
  - It is also possible that there is no match for what you have typed.
- What Movement Names are Matched
  - The movement name you type is matched against movement names added by PJL or movement names previously added by you.
  - For example, the movement ‘deadlift’ has been added by PJL and will show up for all users, but the movement ‘mega-deadleft trifecta’ has not been added by PJL, and will show up for you only after you’ve added that movement to a workout.
- How Are Names Matched?
  - Movement names that have any occurrence of the letters typed will be matched and shown in the autocomplete dropdown. For example, ‘de’ would show deadlift and double under.

### **Movement Field Auto Populate**:

When a user selects an existing movement name from the autocomplete dropdown the form will automatically update the additional Add Movement Form properties based on the selection. This feature is intended as a head start and the user should expect to have to change the default values occasionally.

#### **Behaviors**:

- How does the app decide what values to auto populate?
  - Each saved movement name has default properties associated with it. If the movement name was added by PJL, sensible defaults are set based on the most common properties associated with the movement. If the user is adding a new movement, the defaults for that movement will be set to property values associated with the first instance of the movement.
  - For example, if ‘deadlift’ is selected, the default volume unit will be reps and weight unit LBS. And if a user had previously added movement ‘mega-deadleft trifecta’ with volume unit meters and weight unit KG, then those will be the default values the next time that user selects the movement from the dropdown.
- Can I change the defaults for a movement I added?
  - No, not at this time.
- Why was this feature added?
  - It was added as a time saving measure for inputting movements. The reasoning is that a user will have to change the Add Movement Form properties ~90% of the time if the form is left as-is, but only ~40% of the time when sensible defaults are set. The feature is not perfect, but is more accurate.

### **Movement Grouping**:

Movements can be ‘grouped’ with other movements. A user would want to group one movement with another for a couple of reason:

1. Creating a compound or complex movement

- Often time, a user will create a compound or complex by stringing together different distinct movements. Grouping movements together is a way to signify that the workout contains this type of compound movement.

2. Temporarily grouping movements to speed up the movement adding process

- Each individual Add Movement Form comes with controls to adjust the order of the movement, delete the movement, or make a copy of the movement (see the Header Controls section). If a user groups movements together, those same controls will move, delete, and copy the group of movements, which can greatly speed up the data entry process.

### **Header Controls**:

Each Add Movement Form comes with a set of controls that adjust the position of the movement, delete the movement, or create a copy of the movement. These controls work both on individual movements and movements grouped with other movements. More information on header controls can be found [here](pjl-fitness-header-controls).

### **LBS to KG Conversion**:

The Add Movement Form allows users to easily convert between pounds and kilograms. The form does so by watching for a change in the ‘weight unit’ property and converting the weight value to the newly selected unit.

For example, a user could convert a weight following the steps below:

1. Enter the weight
2. Select the appropriate unit of measure (i.e KG or LBS)
3. Select the unit of measure you want the weight converted to (i.e. change KG to LBS or LBS to KG)

Please note that it’s possible that the weight unit has already been set to LBS or KG. If this is the case, ensure that the correct unit is set before you enter a weight; otherwise the weight you entered will change when you update the weight unit and you will need to update the weight once again.

Also note that the form will ‘remember’ your last applicable weight unit conversion. For example, if you enter 100 KG and change KG to NA and go back to KG, the weight will not change. However if you enter 100 KG change KG to NA, and then NA to LBS, it will convert 100 to 220.

## Weight Units

A weight unit corresponds to the unit of measure associated with the weight property of a movement. These are the following possible weight units:

- **NA**: NA corresponds to a blank or zero weight value for movements done without external weight.
- **LBS**: LBS corresponds to pounds; a common unit of measure for weight.
- **KG**: KG corresponds to kilograms; a common unit of measure for weight.
- **Percent of Max**: Percent of Max refers to the percentage of your current theoretical or actual max weight performed for the corresponding movement.
- **Percent of Training Max**: Percent of Training Max refers to the percentage of your current training max weight for the corresponding movement.
  - Your ‘training max’ value would most likely, but not necessarily, differ from your ‘max’.
- **Percent Effort**: Percent Effort refers to your perceived level of effort for the corresponding movement.

## Volume Units

A volume unit corresponds to the unit of measure associated with the volume property of a movement. These are the following possible volume units:

- **Reps**: Reps is short for repetitions. A repetition is performing the act of the corresponding movement.
  - E.g. 10 push-up reps would be 10 push-ups, 1 rep would be one push-up, and 0 push-up reps would correspond to the maximum number of push-up reps achievable given some external constraint.
- **Calories**: Calories represent a unit of measure popular on cardio style machines such as rowing machines, exercise bikes, and treadmills.
- **Meters**: Meters represent a distance of measure most often used with movements such as run, row, bike, and swim.
- **Miles**: Miles represent a distance of measure most often used with movements such as run and bike.
- **Time**: Time represents a length of time associated with the movement and is most often used with movements such as L-sits.
  - Time does not specify a specific unit, but seconds is the assumed unit of measure. Individual users can assume a different unit and make note of it however they see fit.

{% include links.html %}

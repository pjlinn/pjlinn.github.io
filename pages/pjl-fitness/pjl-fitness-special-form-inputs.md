---
title: Special Form Inputs
keywords: pjl-fitness
# summary: "This is just a sample topic..."
tags: [pjl-fitness]
sidebar: pjl-fitness-sidebar
permalink: pjl-fitness-special-form-inputs.html
folder: pjl-fitness
---

## The Time Input

![Image of Custom Time Input](images/pjl-fitness-time-text-input.png)

Time is both one of the most common properties associated with a workout, interval, and movement, as well as one of the most variable. At PJL we wanted to give users the flexibility to add different time values in the leanest way possible. As a result, we designed a ‘smart’ time input that supports a number of different time formats.

### Supported Time Formats

#### hh:mm:ss

- This format represents hours (hh), minutes (mm), and seconds (ss)
- Valid Examples:
  - 1:00:00 / 01:00:00 / 1:0:0 (one hour)
  - 1:01:01 / 01:01:01 / 1:1:1 (one hour, one minute, and one second)

#### mm:ss

- This format represents minutes (mm) and seconds (ss)
- Valid examples:
  - 1:00 / 01:00 / 1:0 (one minute)
  - 1:12 / 01:12 (one minute and twelve seconds)

#### mm

- This format represents minutes (mm) only
- Valid examples:
  - 01 / 1 (one minute)
  - 12 (twelve minutes)

#### :ss

- This format represents seconds (ss) only
- Valid examples:
  - :1 / :01 (one second)
  - :12 (twelve seconds)

### Special Behaviors

#### Reformatting Time

- The time input strives to allow maximum flexibility for users to input different times, and as a result, allows users to enter valid values in unconventional formats. In these instances, the application accepts the input, but reformats the input behind the scenes to match a more conventional format. The reformatted version is what the user will see if they edit the workout.

- For example:
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">User Input</th>
      <th scope="col">Application Reformat</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>:75 (75 seconds)</td>
      <td>01:15</td>
    </tr>
    <tr>
      <td>65 (65 minutes)</td>
      <td>01:05:00</td>
    </tr>
    <tr>
      <td>1:1:1 (1 hour, 1 minute, 1 second)</td>
      <td>01:01:01</td>
    </tr>
  </tbody>
</table>

{% include links.html %}

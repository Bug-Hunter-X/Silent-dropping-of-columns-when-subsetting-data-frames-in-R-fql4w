# Silent Column Dropping in R Subsetting

This repository demonstrates a subtle bug in R related to subsetting data frames using character vectors. When you try to select columns that don't exist, R silently drops them without any warning. This behavior can be problematic because it might lead to incorrect results and make debugging significantly more difficult.

## The Bug
The `bug.R` file contains the code that exhibits the issue. It attempts to select columns `A`, `D`, and `E` from a data frame that only has columns `A`, `B`, and `C`. R silently ignores `D` and `E` and returns a data frame with only column `A`.  No error or warning is produced.

## The Solution
The `bugSolution.R` file offers a more robust approach, using `%in%` to check for the existence of the columns before subsetting. This will either return the subsetted data frame or provide informative feedback if a column is not found.

This example showcases a common pitfall in R programming that often leads to unexpected behavior.  Careful column checking helps prevent such issues.
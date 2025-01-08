```R
# Improved code to handle missing columns during subsetting

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_subset <- c("A", "D", "E")

# Check if all columns exist before subsetting
if (all(cols_to_subset %in% names(df))) {
  subset_df <- df[, cols_to_subset]
} else {
  missing_cols <- setdiff(cols_to_subset, names(df))
  stop(paste("Error: Columns", paste(missing_cols, collapse = ", "), "not found in data frame."))
}
```
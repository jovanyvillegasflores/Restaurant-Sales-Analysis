*-----------------------------------------------------------
* Restaurant Sales Analysis Project
*This analysis examines the sales data of a restaurant over a period of 12 months. The goal is to assess the overall sales trends, item category contributions, and month-to-month sales growth. The dataset includes detailed information about total sales by month, sales breakdown by item category, and sales growth by month. Key points observed from the analysis include:
/*Total Sales by Month: Sales fluctuate throughout the year, with certain months experiencing significant increases or decreases. Specific months show notable trends.
Sales Breakdown by Item Category: The restaurant's sales are divided between fast food and beverages, with each category contributing a substantial portion to overall sales.
Top-Selling Products: The most popular products include a mix of fast food items and beverages, contributing heavily to total sales.
Month-to-Month Sales Growth: Sales growth varies across the months, with some months showing a strong increase and others reflecting a noticeable decline. */
*-----------------------------------------------------------

*-----------------------------------------------------------
* Step 1: Import the CSV file
* This step imports the dataset from the given file path.
*-----------------------------------------------------------
import delimited "/Users/jovanyvillegas/Desktop/Restaurant-Sales-Analysis/data/Balaji Fast Food Sales.csv", clear
* This command imports the sales data from a CSV file into Stata.

*-----------------------------------------------------------
* Step 2: Data Cleaning
* This step focuses on identifying and handling missing values and duplicates in the dataset.
*-----------------------------------------------------------

* 2.1 Check for missing values in all variables
misstable summarize
* The `misstable summarize` command displays the number of missing values for each variable in the dataset.

* 2.2 Check for missing values in specific columns (e.g., transaction_amount)
tabulate transaction_amount, missing
* This command checks if there are any missing values in the `transaction_amount` column by tabulating the distribution of values, including missing values.

* 2.3 Check for duplicates based on order_id
duplicates report order_id
* The `duplicates report` command identifies any duplicate `order_id` values in the dataset to ensure data integrity.

*-----------------------------------------------------------
* Step 3: Recreate and Clean Date Variables
* This step focuses on converting and creating date-related variables for further analysis.
*-----------------------------------------------------------

* 3.1 Recreate the date_stata variable (adjust the format if needed)
* Here, "MDY" stands for Month/Day/Year format. Adjust the format (e.g., "DMY" for Day/Month/Year) based on your dataset.
gen date_stata = date(date, "MDY")  // Adjust to "DMY" if your date format is Day/Month/Year
* The `gen` command creates a new variable `date_stata`, which is the date variable converted into Stata's internal date format.

* 3.2 Create the month variable from date_stata
gen month = month(date_stata)
* The `gen` command creates a new variable `month` by extracting the month from the `date_stata` variable.

*-----------------------------------------------------------
* Step 4: Data Aggregation
* This step focuses on creating new aggregated variables, like total sales.
*-----------------------------------------------------------

* 4.1 Create the total_sales variable by using transaction_amount
gen total_sales = transaction_amount
* The `gen` command creates a new variable `total_sales`, which is just a copy of the `transaction_amount` variable.

* 4.2 Collapse the data by month and calculate the total sales
collapse (sum) total_sales, by(month)  // Summarize total sales by month
* The `collapse` command summarizes the dataset by month, calculating the sum of `total_sales` for each month.

* 4.3 Verify the collapsed data to ensure it looks correct
list month total_sales  // Check the results of the collapsed data
* The `list` command displays the collapsed data for the `month` and `total_sales` variables to ensure the aggregation was done correctly.

*-----------------------------------------------------------
* Step 5: Data Visualization (Total Sales by Month)
* This step generates a bar graph to visualize the total sales for each month.
*-----------------------------------------------------------

* 5.1 List total sales by month
list month total_sales

* 5.2 Generate a bar graph of total sales by month
graph bar total_sales, over(month) title("Total Sales by Month")
* This command generates a bar graph to visualize the total sales for each month.

* 5.3 Save the graph as a PNG image inside the visualizations folder
graph export "/Users/jovanyvillegas/Desktop/Restaurant-Sales-Analysis/visualizations/total_sales_by_month.png", replace
* The `graph export` command saves the generated graph as a PNG image inside the `visualizations` folder.

*-----------------------------------------------------------
* Step 6: Aggregate Sales by Item Type (For Pie Chart Visualization)
* This step aggregates sales by item type and creates a pie chart for visualization.
*-----------------------------------------------------------

* 6.1 Re-import the dataset to reset the data to its original form
import delimited "/Users/jovanyvillegas/Desktop/Restaurant-Sales-Analysis/data/Balaji Fast Food Sales.csv", clear

* 6.2 Check the variables to confirm the correct variable name for item type
describe

* 6.3 Aggregate total sales by item type for the pie chart
collapse (sum) total_sales = transaction_amount, by(item_type)

* 6.4 Calculate total sales for all categories
summarize total_sales
scalar total_sales_all = r(sum)
display "Total Sales for All Categories: " total_sales_all

* 6.5 Calculate the percentage contribution for each item type
gen percentage = (total_sales / total_sales_all) * 100

* 6.6 List the results
list item_type total_sales percentage

* 6.7 Generate a pie chart of total sales by item type
graph pie total_sales, over(item_type) title("Sales Breakdown by Item Type")

* 6.8 Save the pie chart as a PNG image in the visualizations folder
graph export "/Users/jovanyvillegas/Desktop/Restaurant-Sales-Analysis/visualizations/sales_by_item_type.png", replace

*-----------------------------------------------------------
* Step 7: Generate Summary Statistics
* This step generates descriptive statistics for key variables in the dataset.
*-----------------------------------------------------------

* 7.1 Re-import data (as we did before) for generating summary statistics
import delimited "/Users/jovanyvillegas/Desktop/Restaurant-Sales-Analysis/data/Balaji Fast Food Sales.csv", clear

* 7.2 Recreate the total_sales variable by using transaction_amount
gen total_sales = transaction_amount

* 7.3 Descriptive statistics for total sales
summarize total_sales

* 7.4 Descriptive statistics for transaction_amount (original sales data)
summarize transaction_amount

*-----------------------------------------------------------
* Step 8: Visualizing Total Sales Trend (Line Graph)
* This step visualizes the trend of total sales over time (by month) using a line graph.
*-----------------------------------------------------------

* 8.1 Recreate the `month` and `total_sales` variables if needed
gen date_stata = date(date, "MDY")  // Adjust format if necessary
gen month = month(date_stata)

* 8.2 Collapse the data by month and calculate total sales
collapse (sum) total_sales, by(month)
* This collapses the data by month and calculates the total sales for each month.

* 8.3 Generate a line graph to visualize the trend in total sales over the months
graph twoway (line total_sales month), title("Sales Trend by Month")
* The `graph twoway` command generates a line graph that shows how total sales have changed over the months.

* 8.4 Save the line graph as a PNG image inside the visualizations folder
graph export "/Users/jovanyvillegas/Desktop/Restaurant-Sales-Analysis/visualizations/sales_trend_by_month.png", replace
* The `graph export` command saves the line graph as a PNG image inside the `visualizations` folder.

*-----------------------------------------------------------
* Step 9: Visualizing Total Sales by Item Type (Bar Graph)
* This step generates a bar graph to visualize total sales by item type.
*-----------------------------------------------------------

* 9.1 Re-import the dataset to ensure that the data is fresh and we start from the original data
import delimited "/Users/jovanyvillegas/Desktop/Restaurant-Sales-Analysis/data/Balaji Fast Food Sales.csv", clear

* 9.2 Recreate the `total_sales` variable by using transaction_amount
gen total_sales = transaction_amount
* The `gen` command creates the `total_sales` variable by copying the `transaction_amount` values, which represents the total sales for each transaction.

* 9.3 Summarize the total sales by item type
bysort item_type: summarize total_sales
* The `bysort` command groups the data by `item_type`, and `summarize` generates descriptive statistics (such as mean, standard deviation, min, max) for `total_sales` for each item type (e.g., Beverages, Fastfood).

* 9.4 Generate a bar graph to visualize total sales by item type
graph bar total_sales, over(item_type) title("Total Sales by Item Type")
* The `graph bar` command generates a bar graph that visualizes the total sales for each item type. The `over(item_type)` option creates bars for each item type (e.g., Beverages, Fastfood), and the `title` option gives the graph a descriptive title.

* 9.5 Save the bar graph as a PNG image inside the visualizations folder
graph export "/Users/jovanyvillegas/Desktop/Restaurant-Sales-Analysis/visualizations/sales_by_item_type_bar.png", replace
* The `graph export` command saves the generated bar graph as a PNG image inside the `visualizations` folder.

*-----------------------------------------------------------
* Step 10: Analyze Total Sales by Day of the Week
* This step aggregates the sales by day of the week and visualizes the results.
*-----------------------------------------------------------

* 10.1 Recreate the `date_stata` variable (if needed)
* This step ensures the date variable is in Stata's internal date format.
gen date_stata = date(date, "MDY")  // Adjust "MDY" if your date format is different (e.g., "DMY")

* 10.2 Create the `day_of_week` variable
* Extract the numeric value representing the day of the week (0 = Sunday, 1 = Monday, ..., 6 = Saturday)
gen day_of_week = dow(date_stata)  // Creates a variable that represents the day of the week (0 to 6)

* 10.3 Assign day names (Monday to Sunday)
* This step creates a readable variable with the names of the days of the week based on the numeric value.
gen day_name = ""  // Initialize the variable with empty strings
replace day_name = "Sunday" if day_of_week == 0
replace day_name = "Monday" if day_of_week == 1
replace day_name = "Tuesday" if day_of_week == 2
replace day_name = "Wednesday" if day_of_week == 3
replace day_name = "Thursday" if day_of_week == 4
replace day_name = "Friday" if day_of_week == 5
replace day_name = "Saturday" if day_of_week == 6

* 10.4 Collapse data to calculate total sales by day of the week
* Aggregate sales data by day_name to calculate total sales for each day of the week.
collapse (sum) total_sales = transaction_amount, by(day_name)

* 10.5 Generate a bar graph to visualize total sales by day of the week
* Create a bar graph that shows the total sales for each day of the week.
graph bar total_sales, over(day_name, sort(1)) title("Total Sales by Day of the Week")

* 10.6 Save the bar graph as a PNG image
* Export the bar graph to a PNG image for reporting or presentation.
graph export "/Users/jovanyvillegas/Desktop/Restaurant-Sales-Analysis/visualizations/sales_by_day_of_week.png", replace


*-----------------------------------------------------------
* Step 11: Analyze Sales Growth (Month-to-Month)
* This step calculates and visualizes month-to-month sales growth.
*-----------------------------------------------------------

* 11.1 Import the dataset
* Import the sales data from the given file path
import delimited "/Users/jovanyvillegas/Desktop/Restaurant-Sales-Analysis/data/Balaji Fast Food Sales.csv", clear

* 11.2 Describe the dataset
* Display the structure and information of the dataset
describe

* 11.3 Recreate the date variable if necessary
* Ensure the 'date' variable is in Stata's internal date format
gen date_stata = date(date, "MDY")  // Adjust format if necessary, like "DMY"
format date_stata %td  // Format the new date variable

* 11.4 Create the month variable
* Extract the month from the date_stata variable
gen month = month(date_stata)

* 11.5 Collapse data by month to calculate total sales for each month
* Summarize total sales for each month by using the 'transaction_amount' variable
collapse (sum) total_sales = transaction_amount, by(month)

* 11.6 Declare the dataset as time-series
* Declare the 'month' variable as the time variable for time-series analysis
tsset month

* 11.7 Generate sales growth variable
* Calculate month-to-month sales growth as the percentage change from the previous month
gen sales_growth = (total_sales - L.total_sales) / L.total_sales * 100

* 11.8 List month-to-month sales growth
list month sales_growth

* 11.9 Visualize month-to-month sales growth
* Create a line graph to visualize the month-to-month sales growth
graph twoway (line sales_growth month), title("Month-to-Month Sales Growth")

* 11.10 Save the graph as a PNG image
* Export the sales growth graph to a PNG image inside the visualizations folder
graph export "/Users/jovanyvillegas/Desktop/Restaurant-Sales-Analysis/visualizations/sales_growth.png", replace

*-----------------------------------------------------------
* Step 12:  Identify the Top-Selling Items by Product Name
*-----------------------------------------------------------

* 12.1.1 Re-import the dataset if necessary
import delimited "/Users/jovanyvillegas/Desktop/Restaurant-Sales-Analysis/data/Balaji Fast Food Sales.csv", clear

* 12.1.2 Check the structure of the data to find the correct variable name for product names
describe

* 12.1.3 Aggregate sales by item_name (product name)
collapse (sum) total_sales = transaction_amount, by(item_name)

* 12.1.4 Verify the aggregated data
list item_name total_sales  // Check the sum of total_sales for each item_name

* 12.2.1 Sort the products by total sales
sort total_sales

* 12.2.2 List the item names in order of their sales contribution
list item_name total_sales, noobs

* 12.3.1 Generate a bar graph to visualize the sales breakdown by product
graph bar total_sales, over(item_name) title("Sales Breakdown by Product")

* 12.3.2 Save the bar graph as a PNG image inside the visualizations folder
graph export "/Users/jovanyvillegas/Desktop/Restaurant-Sales-Analysis/visualizations/sales_by_product.png", replace

/*The analysis of the restaurant's sales performance over the year reveals several important trends and insights:

Total Sales: Sales fluctuate significantly throughout the year, with notable growth in May and October, and declines in June and September.
Sales by Item Category: Fast food is the dominant category, contributing 68.46% of the total sales, while beverages account for 31.38% of the revenue.
Top-Selling Products: The Frankie, Sandwich, and Cold Coffee are the best-selling items, making the highest contributions to total sales.
Month-to-Month Sales Growth: There are periods of substantial sales growth, particularly in May (+50.37%) and October (+45.95%). However, certain months such as June (-34.76%) and September (-16.43%) experienced noticeable declines.
Overall, this analysis provides valuable insights that can guide the restaurant in making data-driven decisions. By focusing on the most popular items and adjusting strategies during months of decline, the restaurant can optimize inventory, marketing, and menu offerings to better align with customer preferences and maximize revenue.*/

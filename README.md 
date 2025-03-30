{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\froman\fcharset0 TimesNewRomanPSMT;\f1\fswiss\fcharset0 Helvetica;\f2\froman\fcharset0 TimesNewRomanPS-ItalicMT;
}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red109\green109\blue109;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c50196\c50196\c50196;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}.}{\leveltext\leveltemplateid1\'02\'00.;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid1}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}}
\margl1440\margr1440\vieww28600\viewh18000\viewkind0
\deftab720
\pard\pardeftab720\sa213\partightenfactor0

\f0\fs36 \cf2 \expnd0\expndtw0\kerning0
Restaurant Sales Analysis Project
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f2\i \cf2 This project analyzes restaurant sales data over a period of 12 months with the goal of providing insights into sales trends, product category performance, and month-over-month sales growth. By examining the detailed sales data, our goal is to identify key patterns that can guide future business decisions, such as inventory management, marketing strategies, and product offerings.
\f1\i0 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 Analysis Objectives:
\f1 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\sa213\partightenfactor0
\ls1\ilvl0
\f0 \cf2 \kerning1\expnd0\expndtw0 {\listtext	1.	}\expnd0\expndtw0\kerning0
Evaluate total sales trends: Understand fluctuations in sales over the year, identifying months with significant increases or decreases.
\f1 \
\ls1\ilvl0
\f0 \kerning1\expnd0\expndtw0 {\listtext	2.	}\expnd0\expndtw0\kerning0
Evaluate sales breakdown by product category: Analyze the contribution of fast food and beverage categories to total sales, highlighting their relative importance.
\f1 \
\ls1\ilvl0
\f0 \kerning1\expnd0\expndtw0 {\listtext	3.	}\expnd0\expndtw0\kerning0
Identify top-selling products: Highlight the most popular products at the restaurant and understand which contribute most to total sales.
\f1 \
\ls1\ilvl0
\f0 \kerning1\expnd0\expndtw0 {\listtext	4.	}\expnd0\expndtw0\kerning0
Examine month-over-month sales growth: Observe and analyze changes in sales from one month to the next, identifying growth and decline patterns.
\f1 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 Conclusion:
\f1 \

\f0 Through this analysis, the restaurant can better understand sales dynamics, optimize product mix, and make data-driven decisions to enhance profitability and operational efficiency.
\f1 \
\pard\pardeftab720\sa160\qc\partightenfactor0

\f0 \cf2 \cb3 \
\pard\pardeftab720\sa213\partightenfactor0

\fs36 \cf2 \cb1 Step 1: Import the CSV File
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 This step imports the dataset from the provided file.
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 import delimited "/Users/jovanyvillegas/Desktop/Restaurant-Sales-Analysis/data/Balaji Fast Food Sales.csv", clear
\f1\fs32 \

\f0\fs26\fsmilli13333 \'a0
\f1\fs32 \
\pard\pardeftab720\sa160\qc\partightenfactor0

\f0 \cf2 \cb3 \
\pard\pardeftab720\sa213\partightenfactor0

\fs36 \cf2 \cb1 Step 2: Data Cleaning
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 This step checks for and handles missing and duplicate values.
\f1 \

\f0 2.1 Check for missing values in all variables
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 misstable summarize
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 2.2 Check for missing values in a specific column (e.g., transaction_amount)
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 tabulate transaction_amount, missing
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 2.3 Check for duplicates based on order_id
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 duplicates report order_id
\f1\fs32 \
\pard\pardeftab720\sa160\qc\partightenfactor0

\f0 \cf2 \cb3 \
\pard\pardeftab720\sa213\partightenfactor0

\fs36 \cf2 \cb1 Step 3: Create and Clean Date Variables
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 This step converts and creates date-related variables for future analysis.
\f1 \

\f0 3.1 Create the\'a0
\fs26\fsmilli13333 date_stata
\fs32 \'a0variable
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 gen date_stata = date(date, "MDY")\'a0 // Adjust format if necessary (e.g., "DMY")
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 3.2 Create the\'a0
\fs26\fsmilli13333 month
\fs32 \'a0variable from\'a0
\fs26\fsmilli13333 date_stata
\f1\fs32 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 gen month = month(date_stata)
\f1\fs32 \
\pard\pardeftab720\sa160\qc\partightenfactor0

\f0 \cf2 \cb3 \
\pard\pardeftab720\sa213\partightenfactor0

\fs36 \cf2 \cb1 Step 4: Data Aggregation
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 This step creates new aggregated variables such as total sales.
\f1 \

\f0 4.1 Create the\'a0
\fs26\fsmilli13333 total_sales
\fs32 \'a0variable using\'a0
\fs26\fsmilli13333 transaction_amount
\f1\fs32 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 gen total_sales = transaction_amount
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 4.2 Summarize data by month and calculate total sales
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 collapse (sum) total_sales, by(month)
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 4.3 Verify the aggregated data
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 list month total_sales
\f1\fs32 \
\pard\pardeftab720\sa160\qc\partightenfactor0

\f0 \cf2 \cb3 \
\pard\pardeftab720\sa213\partightenfactor0

\fs36 \cf2 \cb1 Step 5: Visualization of Total Sales by Month
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 This step generates a bar graph to visualize total sales by month.
\f1 \

\f0 5.1 View total sales by month
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 list month total_sales
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 5.2 Create a bar graph of total sales by month
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 graph bar total_sales, over(month) title("Total Sales by Month")
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 5.3 Save the graph as a PNG image
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 graph export "/Users/jovanyvillegas/Desktop/Restaurant-Sales-Analysis/visualizations/total_sales_by_month.png", replace
\f1\fs32 \
\pard\pardeftab720\sa160\qc\partightenfactor0

\f0 \cf2 \cb3 \
\pard\pardeftab720\sa213\partightenfactor0

\fs36 \cf2 \cb1 Step 6: Breakdown of Sales by Product Type (for Pie Chart Visualization)
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 This step aggregates sales by product type and creates a pie chart for visualization.
\f1 \

\f0 6.1 Reimport the data
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 import delimited "/Users/jovanyvillegas/Desktop/Restaurant-Sales-Analysis/data/Balaji Fast Food Sales.csv", clear
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 6.2 Verify the variables to confirm the correct product type variable name
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 describe
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 6.3 Aggregate total sales by product type
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 collapse (sum) total_sales = transaction_amount, by(item_type)
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 6.4 Calculate total sales across all categories
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 summarize total_sales
\f1\fs32 \

\f0\fs26\fsmilli13333 scalar total_sales_all = r(sum)
\f1\fs32 \

\f0\fs26\fsmilli13333 display "Total Sales Across All Categories: " total_sales_all
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 6.5 Calculate the percentage contribution of each product type
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 gen percentage = (total_sales / total_sales_all) * 100
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 6.6 View the results
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 list item_type total_sales percentage
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 6.7 Create a pie chart of sales by product type
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 graph pie total_sales, over(item_type) title("Sales Breakdown by Product Type")
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 6.8 Save the pie chart as a PNG image
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 graph export "/Users/jovanyvillegas/Desktop/Restaurant-Sales-Analysis/visualizations/sales_by_item_type.png", replace
\f1\fs32 \
\pard\pardeftab720\sa160\qc\partightenfactor0

\f0 \cf2 \cb3 \
\pard\pardeftab720\sa213\partightenfactor0

\fs36 \cf2 \cb1 Step 7: Generate Descriptive Statistics
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 This step generates descriptive statistics for key variables in the dataset.
\f1 \

\f0 7.1 Reimport the data (as before)
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 import delimited "/Users/jovanyvillegas/Desktop/Restaurant-Sales-Analysis/data/Balaji Fast Food Sales.csv", clear
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 7.2 Recreate the\'a0
\fs26\fsmilli13333 total_sales
\fs32 \'a0variable
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 gen total_sales = transaction_amount
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 7.3 Descriptive statistics for total sales
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 summarize total_sales
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 7.4 Descriptive statistics for\'a0
\fs26\fsmilli13333 transaction_amount
\fs32 \'a0(original sales data)
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 summarize transaction_amount
\f1\fs32 \
\pard\pardeftab720\sa160\qc\partightenfactor0

\f0 \cf2 \cb3 \
\pard\pardeftab720\sa213\partightenfactor0

\fs36 \cf2 \cb1 Step 8: Visualization of Total Sales Trend (Line Graph)
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 This step visualizes the trend of total sales over time using a line graph.
\f1 \

\f0 8.1 Recreate\'a0
\fs26\fsmilli13333 month
\fs32 \'a0and\'a0
\fs26\fsmilli13333 total_sales
\fs32 \'a0variables if necessary
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 gen date_stata = date(date, "MDY")\'a0 // Adjust format if necessary
\f1\fs32 \

\f0\fs26\fsmilli13333 gen month = month(date_stata)
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 8.2 Collapse data by month and calculate total sales
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 collapse (sum) total_sales, by(month)
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 8.3 Create a line graph to visualize the trend of total sales by month
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 graph twoway (line total_sales month), title("Sales Trend by Month")
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 8.4 Save the line graph as a PNG image
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 graph export "/Users/jovanyvillegas/Desktop/Restaurant-Sales-Analysis/visualizations/sales_trend_by_month.png", replace
\f1\fs32 \
\pard\pardeftab720\sa160\qc\partightenfactor0

\f0 \cf2 \cb3 \
\pard\pardeftab720\sa213\partightenfactor0

\fs36 \cf2 \cb1 Step 9: Visualization of Total Sales by Product Type (Bar Graph)
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 This step generates a bar graph to visualize total sales by product type.
\f1 \

\f0 9.1 Reimport the data
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 import delimited "/Users/jovanyvillegas/Desktop/Restaurant-Sales-Analysis/data/Balaji Fast Food Sales.csv", clear
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 9.2 Recreate the\'a0
\fs26\fsmilli13333 total_sales
\fs32 \'a0variable
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 gen total_sales = transaction_amount
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 9.3 Summarize total sales by product type
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 bysort item_type: summarize total_sales
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 9.4 Create a bar graph to visualize total sales by product type
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 graph bar total_sales, over(item_type) title("Total Sales by Product Type")
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 9.5 Save the bar graph as a PNG image
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 graph export "/Users/jovanyvillegas/Desktop/Restaurant-Sales-Analysis/visualizations/sales_by_item_type_bar.png", replace
\f1\fs32 \
\pard\pardeftab720\sa160\qc\partightenfactor0

\f0 \cf2 \cb3 \
\pard\pardeftab720\sa213\partightenfactor0

\fs36 \cf2 \cb1 Step 10: Analyze Total Sales by Day of the Week
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 This step aggregates sales by day of the week and visualizes the results.
\f1 \

\f0 10.1 Create the\'a0
\fs26\fsmilli13333 date_stata
\fs32 \'a0variable if needed
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 gen date_stata = date(date, "MDY")
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 10.2 Create the\'a0
\fs26\fsmilli13333 day_of_week
\fs32 \'a0variable
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 gen day_of_week = dow(date_stata)
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 10.3 Assign day names (Sunday to Saturday)
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 gen day_name = ""\'a0 
\f1\fs32 \

\f0\fs26\fsmilli13333 replace day_name = "Sunday" if day_of_week == 0
\f1\fs32 \

\f0\fs26\fsmilli13333 replace day_name = "Monday" if day_of_week == 1
\f1\fs32 \

\f0\fs26\fsmilli13333 replace day_name = "Tuesday" if day_of_week == 2
\f1\fs32 \

\f0\fs26\fsmilli13333 replace day_name = "Wednesday" if day_of_week == 3
\f1\fs32 \

\f0\fs26\fsmilli13333 replace day_name = "Thursday" if day_of_week == 4
\f1\fs32 \

\f0\fs26\fsmilli13333 replace day_name = "Friday" if day_of_week == 5
\f1\fs32 \

\f0\fs26\fsmilli13333 replace day_name = "Saturday" if day_of_week == 6
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 10.4 Collapse the data to calculate total sales by day of the week
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 collapse (sum) total_sales = transaction_amount, by(day_name)
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 10.5 Create a bar graph to visualize total sales by day of the week
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 graph bar total_sales, over(day_name, sort(1)) title("Total Sales by Day of the Week")
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 10.6 Save the bar graph as a PNG image
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 graph export "/Users/jovanyvillegas/Desktop/Restaurant-Sales-Analysis/visualizations/sales_by_day_of_week.png", replace
\f1\fs32 \
\pard\pardeftab720\sa160\qc\partightenfactor0

\f0 \cf2 \cb3 \
\pard\pardeftab720\sa213\partightenfactor0

\fs36 \cf2 \cb1 Step 11: Analyze Month-over-Month Sales Growth
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 This step calculates and visualizes month-over-month sales growth.
\f1 \

\f0 11.1 Import the dataset
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 import delimited "/Users/jovanyvillegas/Desktop/Restaurant-Sales-Analysis/data/Balaji Fast Food Sales.csv", clear
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 11.2 Describe the dataset
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 describe
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 11.3 Create the\'a0
\fs26\fsmilli13333 month
\fs32 \'a0variable
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 gen month = month(date_stata)
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 11.4 Collapse data by month to calculate total sales for each month
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 collapse (sum) total_sales = transaction_amount, by(month)
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 11.5 Declare the data as a time series
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 tsset month
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 11.6 Create the sales growth variable
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 gen sales_growth = (total_sales - L.total_sales) / L.total_sales * 100
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 11.7 Visualize month-over-month sales growth
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 graph twoway (line sales_growth month), title("Month-over-Month Sales Growth")
\f1\fs32 \
\pard\pardeftab720\sa160\qc\partightenfactor0

\f0 \cf2 \cb3 \
\pard\pardeftab720\sa213\partightenfactor0

\fs36 \cf2 \cb1 Step 12: Identify Top-Selling Products
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 This step identifies the top-selling products and visualizes them.
\f1 \

\f0 12.1 Reimport the dataset
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 import delimited "/Users/jovanyvillegas/Desktop/Restaurant-Sales-Analysis/data/Balaji Fast Food Sales.csv", clear
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 12.2 Aggregate sales by product name
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 collapse (sum) total_sales = transaction_amount, by(item_name)
\f1\fs32 \
\pard\pardeftab720\sa213\partightenfactor0

\f0 \cf2 12.3 Visualize the sales breakdown by product
\f1 \
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13333 \cf2 graph bar total_sales, over(item_name) title("Sales Breakdown by Product")
\f1\fs32 \
}
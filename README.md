<h1> Who Is Paid The Most? <br> (Examples of Building Tables and Executing Queries in SQL) </h1>

#### Overview:

#### Folders/Files:
* **"SQL Queries"** (folder) <br>
	- *"table_setups.sql"* (schemata for creating the tables in postgresql) <br>
	- *"employee_queries.sql"* (several examples of postgresql queries) <br>
 * **"Data Files"** (folder) <br>
	- *"departments.csv"* (input data file if needed) <br>
	- *"dept_emp.csv"* (input data file if needed) <br>
	- *"dept_manager.csv"* (input data file if needed) <br>
	- *"employees.csv"* (input data file if needed) <br>
	- *"salaries.csv"* (input data file if needed) <br>
	- *"titles.csv"* (input data file if needed) <br>
* **"Analysis Code"** (folder) <br>
	- *"SalaryAnalysis.ipynb"* (jupyter notebook file containing code for further salary analysis) <br>
* **"Images"** (folder) <br>
	- *"TableRelationshipDiagram.png"* (table relationship diagram) <br>
	
#### Note: <br>
The csv files in subfolder *"data"* are only needed if re-building the tables from scratch. <br>
The Jupyter notebook requires you to either hardcode your postgresql password into the cell where indicated
or put your postgresql password into a config.py file before running. <br>

#### Entity Relationship Diagram:
 
<img src="Images/TableRelationshipDiagram.png"> <br>

#### Query To Show Top 25 Paid Employees:

<img src="Images/TopEarners.jpg"> <br>

#### Query To Show Top 5 Paid Employees in Each Department:

<img src="Images/Top5EarnersPerDept.jpg"> <br>



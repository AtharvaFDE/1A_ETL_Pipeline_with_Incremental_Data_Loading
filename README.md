# 🚀 ETL Pipeline with Incremental Data Loading

## 📌 Description
A Python-based ETL pipeline that extracts data from CSV files and REST APIs, transforms and cleans data using Pandas, and loads it into MySQL. Implements incremental loading, duplicate detection, and UPSERT logic to prevent duplicate records and handle updates.

## 🛠️ Technologies Used
- 🐍 Python
- 🐼 Pandas & NumPy
- 🗄️ MySQL
- 🔗 SQLAlchemy & PyMySQL
- 🌐 REST API
- 📓 Jupyter Notebook

## ✨ Key Features
- 📥 Extract data from CSV and APIs.
- 🧹 Clean and transform data.
- 🔍 Identify duplicate records using `NOT EXISTS`.
- 🔄 Insert new records and update existing records using UPSERT.
- ⏰ Schedule automated ETL execution.

## ⚙️ How to Run

1. Clone the repository.
2. Install dependencies:

   ```bash
   pip install pandas numpy sqlalchemy pymysql requests
   ```

3. Configure your MySQL credentials.
4. Open `etl_pipeline.ipynb` in Jupyter Notebook.
5. Execute all cells.

## 📂 Project Structure

```text
ETL-Project/
├── etl_pipeline.ipynb
├── customers.csv
├── requirements.txt
└── README.md
```

## 🎯 Learning Outcomes
- ETL pipeline development
- Incremental data loading
- Data cleaning and transformation
- MySQL database integration
- Duplicate prevention and UPSERT operations

---

⭐ If you find this project useful, don't forget to give it a star!

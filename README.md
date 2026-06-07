# COVID-19 Dashboard with Apache Superset

## Overview

This project presents an interactive dashboard built with Apache Superset using official French COVID-19 open data.

The objective of this project was to explore, analyze and visualize the evolution of the COVID-19 epidemic in France through several key indicators and interactive charts.

---

## Technologies Used

* Apache Superset
* Docker
* SQL
* CSV datasets
* Open Data France

---

## Dataset

Source:

https://www.data.gouv.fr/

Dataset used:

**table-indicateurs-open-data-dep-2023-06-30-17h59.csv**

The dataset contains daily indicators for all French departments and regions between March 18, 2020 and June 30, 2023.

Main variables used:

* `incid_hosp`: new hospital admissions
* `incid_rea`: new ICU admissions
* `incid_dchosp`: new hospital deaths
* `reg`: region code
* `lib_reg`: region name
* `date`: observation date

---

## Data Preparation

The CSV dataset was imported into Apache Superset.

Several SQL queries were used to associate French region codes with ISO 3166-2 codes in order to build geographical visualizations.

---

## Dashboard Content

### Key Performance Indicators (KPIs)

* Total new hospitalizations
* Total ICU admissions
* Total hospital deaths

### Visualizations

* Time-series chart showing the evolution of hospitalizations
* Bar chart of deaths by region
* Pie chart showing the top 5 regions most affected by COVID-19 deaths
* Country maps illustrating:

  * hospitalizations by region
  * deaths by region
  * ICU admissions by region

---

## SQL Queries

Custom SQL queries were created to map French region identifiers to ISO 3166-2 codes required by Apache Superset country maps.

The SQL scripts are available in the `sql/` directory.

---

## Dashboard Export

The complete dashboard export generated from Apache Superset is available in:

* `dashboard/dashboard_export.zip`

The dashboard image and PDF are also provided.

---

## Project Structure

```
covid-dashboard-superset/
├── data/
├── dashboard/
├── sql/
└── README.md
```

---

## Learning Outcomes

Through this project, I practiced:

* Data visualization with Apache Superset
* Dashboard design
* SQL queries
* Docker environment setup
* Analysis of open datasets
* Creation of KPIs and interactive charts
* Geographical visualization of data

# 🏠 LA Airbnb Market Analysis — The Ghost Hotel Crisis

> Uncovering $1.8B in unlicensed short-term rentals across Los Angeles using Python, SQL, and Power BI

---

## 📌 Project Summary

This end-to-end data analytics project analyzes **45,585 Airbnb listings** across **266 Los Angeles neighborhoods** to expose regulatory compliance gaps, identify commercial "ghost hotel" operators, and surface strategic opportunities for hosts, investors, and policymakers.

**Key finding:** 71.8% of LA's Airbnb market operates without required licenses — putting $2.1B in annual revenue at regulatory risk.

---

## 🛠️ Tools & Technologies

| Layer | Tools |
|---|---|
| Data Cleaning & EDA | Python (Pandas, NumPy), Jupyter Notebook |
| Database & Querying | SQLite, SQL |
| Visualization | Microsoft Power BI |
| Development | VS Code |

---

## 🔍 Key Findings

### 1. The Compliance Crisis
- **71.8%** of listings (32,717) operate without required licenses
- Only 28.2% maintain proper licensing — a competitive moat in a potential crackdown
- Revenue Exposure Estimate
To quantify the economic impact of non-compliance, I multiplied the count of unlicensed listings (32,717) by a conservative industry revenue benchmark. Airbtics' 2026 Los Angeles market report estimates median annual host revenue at $54,000 per active listing. This yields:

32,717 unlicensed listings × $54,000 = ~$1.77 billion ≈ $1.8 billion
Source: https://airbtics.com/annual-airbnb-revenue-in-los-angeles-california-usa/


### 2. Ghost Hotel Operators
- Top 11 commercial operators control **2,274 listings** (5% market share)
- Blueground alone runs **593 properties** — a shadow hotel chain disguised as home-sharing
- **49.8%** of all listings are operated by hosts with 3+ properties

### 3. The Occupancy Paradox
- Private rooms: **41% vacancy** vs. Entire homes: **59% vacancy**
- 18 percentage point gap signals clear oversupply in entire homes

### 4. Geographic Hotspots
- Long Beach (1,906), Hollywood (1,758), Venice (1,529) dominate the market
- Beverly Hills and Pasadena show 55–67% individual host share — opportunity zones
- ## 📊 Dashboard Preview

**Page 1 — The Ghost Hotel Crisis**
KPI cards, donut chart (licensed vs unlicensed), geographic bubble map, top operators bar chart

**Page 2 — Market Intelligence**
Neighborhood concentration, occupancy analysis by room type, commercial vs individual penetration

---

## 📈 Skills Demonstrated

- **Python:** ETL pipeline, feature engineering, null handling, data transformation
- **SQL:** Aggregations, subqueries, segmentation analysis (7 analytical queries)
- **Power BI:** Calculated columns, slicers, cross-page filtering, drill-down maps
- **Analytics:** Market segmentation, regulatory risk quantification, geographic pattern recognition
- **Communication:** Executive dashboards, stakeholder-specific recommendations

---

## 📁 Data Source

[Inside Airbnb](http://insideairbnb.com/) — Los Angeles, December 2025
45,585 active listings | 23,005 unique hosts | 266 neighborhoods






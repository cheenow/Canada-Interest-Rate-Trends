# **Canada Interest Rate Trends**
A tidyverse-based analysis of Bank Rate and Prime Rate movements from 2019–2025.

---

## **Overview**
This project analyzes how Canada’s Bank Rate and Prime Rate changed between 2019 and 2025. Using R and tidyverse, it groups interest rates into half-year periods, calculates average values, measures how frequently rate changes occur, and identifies the most common Bank Rate levels. The goal is to provide a clear, beginner-friendly summary of rate behaviour over time.

**Dataset:** [Statistics Canada: Bank of Canada – Interest Rates](https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=1010014501) 
**Platform:** RStudio  
**Language:** R  
**Libraries:** tidyverse (dplyr, tidyr, ggplot2)

---

## **Data Preparation Workflow**
- Loaded and cleaned the dataset by removing missing values.  
- Selected essential fields and converted dates to proper date format.  
- Created half-year periods (H1 = Jan–Jun, H2 = Jul–Dec).  
- Filtered data to focus on:
  - **Bank rate**
  - **Prime rate** (Chartered bank administered interest rates – Prime rate)
- Calculated average interest rates per half-year period.
- Computed average number of days between rate changes.
- Counted how many weeks each Bank Rate value occurred.

---

## **Key Outputs**

### **1️⃣ Average Interest Rate per Half-Year**
| Period   | Bank Rate | Prime Rate |
|----------|-----------|------------|
| 2019-H2  | 2.0000    | 3.9500     |
| 2020-H1  | 1.1346    | 3.1038     |
| 2020-H2  | 0.5000    | 2.4500     |
| 2021-H1  | 0.5000    | 2.4500     |
| 2021-H2  | 0.5000    | 2.4500     |
| 2022-H1  | 0.9519    | 2.9019     |
| 2022-H2  | 3.3654    | 5.3154     |
| 2023-H1  | 4.7404    | 6.6904     |
| 2023-H2  | 5.2308    | 7.1808     |
| 2024-H1  | 5.2212    | 7.1712     |
| 2024-H2  | 4.4231    | 6.3731     |
| 2025-H1  | 3.1538    | 5.1038     |
| 2025-H2  | 2.9500    | 4.9000     |

---

### **2️⃣ Average Days Between Rate Changes**
| Rate Type | Avg. Days Between Changes |
|-----------|----------------------------|
| Bank rate | 103 days                   |
| Prime rate | 103 days                  |

---

### **3️⃣ Frequency of Bank Rate Values**
| Bank Rate | Weeks Observed |
|-----------|----------------|
| 0.50      | 101            |
| 5.25      | 47             |
| 3.00      | 27             |
| 4.75      | 25             |
| 2.00      | 20             |
| 3.50      | 14             |
| 4.50      | 14             |
| 4.00      | 13             |
| 5.00      | 12             |
| 2.75      | 11             |
| 1.25      | 7              |
| 0.75      | 6              |
| 1.75      | 6              |
| 3.25      | 6              |
| 1.00      | 2              |
| 1.50      | 2              |

---

## **Key Findings**
- Interest rates remained low and stable during 2020–2021, then rose sharply in 2022–2023.  
- Both the Bank Rate and Prime Rate changed **approximately every 103 days**.  
- The most frequent Bank Rate recorded was **0.50%**, lasting **101 weeks**.  

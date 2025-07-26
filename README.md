# IMO-baltic-countries-results-1993-2025
📊 Comparative dataset of International Mathematical Olympiad (IMO) results (1993–2025) for Latvia, Lithuania, Estonia, Finland, and Sweden, including absolute ranks, number of participating countries, and relative ranks. Includes R code for analysis and visualisations of performance trends.

# Overview
This dataset collects the following annual IMO statistics:
1) Absolute Rank: The position of the country among all participating countries each year.
2) Number of Participating Countries — Total number of countries competing that year.
3) Relative Rank: The country's rank normalised by the total number of participants (Absolute Rank divided by Number of Participating Countries).
4) Inverted Relative Rank: Complementary metric showing how close the country is to the top (1 - Relative Rank).

Source: https://www.imo-official.org/results.aspx

This enables the tracking and comparison of long-term performance trends while accounting for the varying number of participants each year.

# Included Materials
1) 📁 Dataset (XLSX) — IMO_dataset_LV_LT_EST_FIN_SWE_1993_2025.xlsx: Tabular results for Latvia, Estonia, Lithuania, Finland, and Sweden.
2) 📄 R Code — R_code/: Scripts for calculating metrics and generating visualizations.
3) 📈 Visualisations — plots/: Pre-generated charts in PDF and SVG format showing performance dynamics over time.

# Plots:

<img width="1920" height="1080" alt="Untitled2" src="https://github.com/user-attachments/assets/addc3174-77a9-4dcf-b08e-6fbe6503e5d2" />

<img width="1920" height="1080" alt="Untitled3" src="https://github.com/user-attachments/assets/0e4690fb-2f62-4934-8d6d-92a346e3d127" />

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/5ca7840b-a0fc-4784-ad60-3b89e51537ea" />

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/0e6ffe91-bebb-45fc-8f1a-42d4da94cf39" />


### 📐 Metrics Summary (1993–2025)

| Country       | Mean Rank | Median Rank | Best Rank | Worst Rank | SD    | Mean Inv. Relative Rank | Median Inv. Relative Rank | Best Inv. Rel. Rank | Worst Inv. Rel. Rank | SD Inv. Rel. Rank |
|---------------|-----------|-------------|-----------|-------------|-------|---------------------|-----------------------|----------------|------------------|----------------|
| **Latvia**     | 53.4     | 57          | 22        | 79          | 15.2  | 0.440               | 0.422                 | 0.732          | 0.240            | 0.112          |
| **Lithuania**  | 50.3     | 51          | 31        | 76          | 10.5  | 0.458               | 0.486                 | 0.667          | 0.244            | 0.120          |
| **Estonia**    | 54.7     | 55          | 36        | 74          | 10.6  | 0.410               | 0.433                 | 0.679          | 0.148            | 0.124          |
| **Finland**    | 59.2     | 62          | 34        | 84          | 12.6  | 0.371               | 0.356                 | 0.585          | 0.171            | 0.105          |
| **Sweden**     | 49.1     | 50          | 19        | 72          | 12.5  | 0.475               | 0.466                 | 0.776          | 0.181            | 0.126          |

**Metric explanations**:
- **Mean / Median Rank** — Average and median position over the years.
- **Best / Worst Rank** — Highest and lowest performance (smaller is better).
- **Inverted Relative Rank Metrics** — Normalised indicators showing position in relation to total participants (bigger is better).
- **SD** — Standard deviation, indicating consistency (lower = more stable performance).

# License
MIT — see LICENSE.

# Author
Vladislavs Babaņins

"# Healthcare Revenue Cycle Management (RCM) Analytics Portfolio

## 📊 Project Overview
This repository contains a cloud-engineered data pipeline and interactive financial dashboard designed to audit hospital and clinic accounts receivable (A/R) ledgers. The objective is to identify stuck cash flow, track high-risk billing statuses, and optimize clinical collections across multi-payer environments.

## 🛠️ Data Infrastructure & Tech Stack
* **Cloud Warehouse:** Google BigQuery (Structured Storage Layer)
* **Visual Layer:** Power BI Desktop (Connected via native cloud connector)
* **Data Processing:** BigQuery SQL (Automated aging bucket classification and ledger transformations)
* **Master Records:** 4,869 transactional EHR records tracking full revenue lifecycles
* **Data Governance:** Built using HIPAA-compliant, clinic-sanitized EHR and billing data to ensure strict privacy standards while maintaining realistic RCM operational workflows.

## 🗂️ Dataset Schema & Financial Metrics
The analytical model processes core financial and operational fields to evaluate revenue performance:
* **Identifiers & Routing:** `account_number`, `patient_name`, `claim_number`, `subscriber_id`
* **Clinical Metadata:** `charge_date`, `procedure_code`, `provider_name`, `insurance_payer`
* **Aging Metrics:** `bill_age`, `aging_bucket` (categorized from current claims to deep aging buckets like `F366+`)
* **Financial Balances:** `charge_amt`, `paid_amount`, `insurance_balance`, `patient_balance`, `patient_responsibility`, `patient_payment`, `adjustment_amount`
* **Workflow Status:** `charge_status` (tracking active billing, payments, and denials)

## 🔍 Data Quality & Safeguards
* Verified 100% data row completeness with zero drop-offs using backend SQL validation.
* Reconciled total records to exactly 4,869 rows with zero missing or null patient account numbers or primary keys."


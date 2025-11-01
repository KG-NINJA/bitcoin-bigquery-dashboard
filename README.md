# bitcoin-bigquery-dashboard
# BigQuery × Looker Studio Bitcoin Dashboard

## 概要
BigQuery の公開データセット（Bitcoin トランザクション）を使用し、
日次トランザクション数を集計・可視化したデータパイプライン。

## 使用技術
- Google BigQuery
- Looker Studio
- SQL（標準SQL）

## SQLクエリ
```sql
SELECT
  EXTRACT(DATE FROM block_timestamp) AS day,
  COUNT(*) AS tx_count
FROM `bigquery-public-data.crypto_bitcoin.transactions`
GROUP BY day
ORDER BY day DESC
LIMIT 7;

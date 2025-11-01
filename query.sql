SELECT
  EXTRACT(DATE FROM block_timestamp) AS day,
  COUNT(*) AS tx_count
FROM `bigquery-public-data.crypto_bitcoin.transactions`
GROUP BY day
ORDER BY day DESC
LIMIT 7;

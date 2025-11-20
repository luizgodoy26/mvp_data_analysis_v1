CREATE TABLE schemas.silver.steam_clean (
  Name STRING COMMENT 'The title of the application, which provides insight into the content and purpose of the app.',
  Developer STRING COMMENT 'The name of the individual or company that created the application, useful for identifying the source of the app.',
  Publisher STRING COMMENT 'The entity responsible for distributing the application, which may differ from the developer.',
  InitialPrice BIGINT COMMENT 'The original price of the application at launch, useful for understanding pricing strategies and changes over time.',
  ActualPrice BIGINT COMMENT 'The current selling price of the application, which can influence purchasing decisions.',
  Discount BIGINT COMMENT 'The amount or percentage discount applied to the application, which can affect its attractiveness to potential buyers.')
USING delta
TBLPROPERTIES (
  'delta.enableDeletionVectors' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd')

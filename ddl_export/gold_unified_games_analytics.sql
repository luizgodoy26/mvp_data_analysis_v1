CREATE TABLE schemas.gold.unified_games_analytics (
  Game_Name STRING,
  Publisher STRING,
  Developer STRING,
  Year_of_Release INT,
  Genre STRING COMMENT 'Categorizes the game into a specific genre, such as action, adventure, or role-playing, helping users understand its gameplay style.',
  Critic_Score BIGINT COMMENT 'The score given by critics, which can influence consumer perception and purchasing decisions.',
  User_Score DOUBLE,
  InitialPrice DOUBLE,
  ActualPrice DOUBLE,
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

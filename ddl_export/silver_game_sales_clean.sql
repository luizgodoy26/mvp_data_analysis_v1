CREATE TABLE schemas.silver.game_sales_clean (
  Name STRING COMMENT 'The title of the game, which is essential for identifying and referencing the specific product.',
  Year_of_Release INT,
  Genre STRING COMMENT 'Categorizes the game into a specific genre, such as action, adventure, or role-playing, helping users understand its gameplay style.',
  Publisher STRING COMMENT 'The company responsible for publishing the game, which can influence its marketing and distribution.',
  Critic_Score BIGINT COMMENT 'The score given by critics, which can influence consumer perception and purchasing decisions.',
  User_Score DOUBLE,
  Developer STRING COMMENT 'The company or individual responsible for developing the game, which can impact its quality and innovation.')
USING delta
TBLPROPERTIES (
  'delta.enableDeletionVectors' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd')

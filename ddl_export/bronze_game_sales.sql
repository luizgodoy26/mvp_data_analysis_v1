CREATE TABLE schemas.bronze.game_sales (
  Name STRING COMMENT 'The title of the game, which is essential for identifying and referencing the specific product.',
  Platform STRING COMMENT 'Indicates the gaming platform on which the game is available, such as PC, PlayStation, or Xbox.',
  Year_of_Release STRING COMMENT 'Represents the year the game was released, providing context for its historical significance and market trends.',
  Genre STRING COMMENT 'Categorizes the game into a specific genre, such as action, adventure, or role-playing, helping users understand its gameplay style.',
  Publisher STRING COMMENT 'The company responsible for publishing the game, which can influence its marketing and distribution.',
  NA_Sales DOUBLE COMMENT 'Sales figures for the game in North America, reflecting its popularity and market performance in that region.',
  EU_Sales DOUBLE COMMENT 'Sales figures for the game in Europe, providing insight into its reception and success across European markets.',
  JP_Sales DOUBLE COMMENT 'Sales figures for the game in Japan, highlighting its performance in one of the largest gaming markets in the world.',
  Other_Sales DOUBLE COMMENT 'Sales figures from regions outside of North America, Europe, and Japan, capturing the game\'s global reach.',
  Global_Sales DOUBLE COMMENT 'Total sales figures for the game worldwide, offering a comprehensive view of its overall market success.',
  Critic_Score BIGINT COMMENT 'The score given by critics, which can influence consumer perception and purchasing decisions.',
  Critic_Count BIGINT COMMENT 'The number of critics who reviewed the game, providing context for the credibility of the critic score.',
  User_Score STRING COMMENT 'The score given by users, reflecting the general public\'s opinion and satisfaction with the game.',
  User_Count BIGINT COMMENT 'The number of users who rated the game, indicating the level of engagement and feedback from the gaming community.',
  Developer STRING COMMENT 'The company or individual responsible for developing the game, which can impact its quality and innovation.',
  Rating STRING COMMENT 'The age rating assigned to the game, which informs consumers about the appropriate audience for the content.')
USING delta
COMMENT 'The table contains data related to video game sales and ratings. It includes information such as the name of the game, the platform it was released on, the year of release, and its genre. Sales figures are broken down by region (North America, Europe, Japan, and others) as well as global totals. Additionally, it captures critic and user scores along with counts, providing insights into the reception of each game. This data can be used for market analysis, understanding trends in gaming preferences, and evaluating the performance of different titles and platforms.'
TBLPROPERTIES (
  'delta.checkpoint.writeStatsAsJson' = 'false',
  'delta.checkpoint.writeStatsAsStruct' = 'true',
  'delta.enableDeletionVectors' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd')

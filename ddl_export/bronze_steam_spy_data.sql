CREATE TABLE schemas.bronze.steam_spy_data (
  appid BIGINT COMMENT 'A unique identifier for each application, allowing for easy reference and tracking within the dataset.',
  name STRING COMMENT 'The title of the application, which provides insight into the content and purpose of the app.',
  developer STRING COMMENT 'The name of the individual or company that created the application, useful for identifying the source of the app.',
  publisher STRING COMMENT 'The entity responsible for distributing the application, which may differ from the developer.',
  score_rank BIGINT COMMENT 'A numerical ranking that indicates the overall score of the application compared to others, reflecting its popularity or quality.',
  positive BIGINT COMMENT 'The total number of positive reviews or ratings received by the application, indicating user satisfaction.',
  negative BIGINT COMMENT 'The total number of negative reviews or ratings received by the application, highlighting areas of concern for users.',
  userscore BIGINT COMMENT 'The average score given by users, providing a direct measure of user satisfaction and app performance.',
  owners STRING COMMENT 'The number of users who own or have purchased the application, which can indicate its market reach.',
  average_forever BIGINT COMMENT 'The average playtime or usage duration of the application over its entire lifespan, reflecting long-term engagement.',
  average_2weeks BIGINT COMMENT 'The average playtime or usage duration of the application over the last two weeks, indicating recent user engagement trends.',
  median_forever BIGINT COMMENT 'The median playtime or usage duration of the application over its entire lifespan, providing a central measure of engagement.',
  median_2weeks BIGINT COMMENT 'The median playtime or usage duration of the application over the last two weeks, offering insight into recent user behavior.',
  price BIGINT COMMENT 'The current selling price of the application, which can influence purchasing decisions.',
  initialprice BIGINT COMMENT 'The original price of the application at launch, useful for understanding pricing strategies and changes over time.',
  discount BIGINT COMMENT 'The amount or percentage discount applied to the application, which can affect its attractiveness to potential buyers.',
  ccu BIGINT COMMENT 'The peak concurrent users of the application, indicating its popularity and server load during high-traffic periods.')
USING delta
COMMENT 'The table contains data related to applications, including details such as the app ID, name, developer, and publisher. It also includes user ratings and scores, both positive and negative, as well as pricing information and ownership details. This data can be used for analyzing app performance, understanding user feedback, and comparing different applications based on their ratings and pricing strategies.'
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

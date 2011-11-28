TRUNCATE TABLE TS_SETUBI_NEEDS_SUM2;
INSERT ALL
  INTO TS_SETUBI_NEEDS_SUM2 (JUSHOCD1, TATEMONO_SYUBETU, SINGLE_FAMILY_FLG,SETUBI,RATE,PRIORITY,NEEDS)
    VALUES (JUSHOCD1, TATEMONO_SYUBETU, SINGLE_FAMILY_FLG,SETUBI,RATE,PRIORITY,NEEDS)
SELECT
  SUM.JUSHOCD1 JUSHOCD1,
  SUM.TATEMONO_SYUBETU TATEMONO_SYUBETU,
  SUM.SINGLE_FAMILY_FLG SINGLE_FAMILY_FLG,
  SUM.SETUBI SETUBI,
  SUM.RATE RATE,
  TS_SETUBI_NEEDS.PRIORITY PRIORITY,
  TS_SETUBI_NEEDS.NEEDS NEEDS
FROM (
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'AIR_CON' SETUBI,
    ROUND(SUM(AIR_CON)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'SEP_BATH' SETUBI,
    ROUND(SUM(SEP_BATH)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'GAS_STOVE' SETUBI,
    ROUND(SUM(GAS_STOVE)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'OPTICAL_FIBER' SETUBI,
    ROUND(SUM(OPTICAL_FIBER)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'CLOSET' SETUBI,
    ROUND(SUM(CLOSET)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'IND_SINK' SETUBI,
    ROUND(SUM(IND_SINK)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'AUTO_LOCK' SETUBI,
    ROUND(SUM(AUTO_LOCK)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'TV_INTER_PHONE' SETUBI,
    ROUND(SUM(TV_INTER_PHONE)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'REHEAT' SETUBI,
    ROUND(SUM(REHEAT)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'BATH_DRYER' SETUBI,
    ROUND(SUM(BATH_DRYER)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'WASHING_TOILET' SETUBI,
    ROUND(SUM(WASHING_TOILET)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'WASHING_MACHINE_BATH' SETUBI,
    ROUND(SUM(WASHING_MACHINE_BATH)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'BALCONY' SETUBI,
    ROUND(SUM(BALCONY)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'EV' SETUBI,
    ROUND(SUM(EV)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'DELIVERY_BOX' SETUBI,
    ROUND(SUM(DELIVERY_BOX)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'UNDER_FLOOR' SETUBI,
    ROUND(SUM(UNDER_FLOOR)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'DUST_COL' SETUBI,
    ROUND(SUM(DUST_COL)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'BICYCLE_PARKING' SETUBI,
    ROUND(SUM(BICYCLE_PARKING)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'SHAMPOO_DRESSER' SETUBI,
    ROUND(SUM(SHAMPOO_DRESSER)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'FLOORING' SETUBI,
    ROUND(SUM(FLOORING)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'WALK_IN_CLOSET' SETUBI,
    ROUND(SUM(WALK_IN_CLOSET)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'FLOOR_HEAT' SETUBI,
    ROUND(SUM(FLOOR_HEAT)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'IH_COOKINGHEATER' SETUBI,
    ROUND(SUM(IH_COOKINGHEATER)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'ALL_ELECTRIC' SETUBI,
    ROUND(SUM(ALL_ELECTRIC)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'VERANDA' SETUBI,
    ROUND(SUM(VERANDA)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'SYSTEM_KITCHEN' SETUBI,
    ROUND(SUM(SYSTEM_KITCHEN)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'CATV' SETUBI,
    ROUND(SUM(CATV)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'LOFT' SETUBI,
    ROUND(SUM(LOFT)/SUM(CNT)*100) RATE
  FROM TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('マンション','アパート')
  GROUP BY 
    JUSHOCD1,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
) SUM,TS_SETUBI_NEEDS
WHERE SUM.SINGLE_FAMILY_FLG = TS_SETUBI_NEEDS.SINGLE_FAMILY_FLG
AND   SUM.TATEMONO_SYUBETU = TS_SETUBI_NEEDS.TATEMONO_SYUBETU
AND   SUM.SETUBI = TS_SETUBI_NEEDS.SETUBI 
AND   SUM.JUSHOCD1 = TS_SETUBI_NEEDS.JUSHOCD1
ORDER BY 
  SUM.JUSHOCD1 ,
  SUM.TATEMONO_SYUBETU ,
  SUM.SINGLE_FAMILY_FLG ,
  TS_SETUBI_NEEDS.PRIORITY
/

-- DATA CLEANING

USE world_layoffs;

SELECT *
FROM layoffs;

-- REMOVE DUPLICATES
-- STANDARDIZE THE DATA
-- NULL VALUES OR BLANK VALUES
-- REMOVE ANY COLUMNS

-- TO CREATE A DUPLICATE OF THE RAW DATA

CREATE TABLE layoffs_staging
LIKE layoffs; -- TO CREATE A DUPLICATE OF THE RAW DATA

SELECT *
FROM layoffs_staging;

INSERT layoffs_staging
SELECT * FROM layoffs_staging;

SELECT * FROM layoffs_staging;

SELECT *,
row_number() OVER(PARTITION BY company, industry, total_laid_off, percentage_laid_off, 'date')
AS row_num
FROM layoffs_staging;

WITH duplicate_cte AS 
(SELECT *,
row_number() OVER(PARTITION BY company, location, industry, total_laid_off, percentage_laid_off, 'date', stage, country, funds_raised_millions)
AS row_num
FROM layoffs_staging)
SELECT *
FROM duplicate_cte
WHERE row_num > 1;

SELECT *
FROM layoffs_staging
WHERE company = 'casper';

CREATE TABLE `layoffs_staging2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT *
FROM layoffs_staging2;

INSERT INTO layoffs_staging2
SELECT *,
row_number() OVER(PARTITION BY company, location, industry, total_laid_off, percentage_laid_off, 'date', stage, country, funds_raised_millions)
AS row_num
FROM layoffs_staging;

SELECT *
FROM layoffs_staging2;


DELETE 
FROM layoffs_staging2
WHERE row_num > 1;

SET SQL_SAFE_UPDates = 0;

-- Standardizing Data. This involves finding issues in your data and then fixing it. 

SELECT company, trim(cOMPANY)
FROM layoffs_staging2;

UPDATE layoffs_staging2
SET company =  trim(cOMPANY);

SELECT distinct industry
FROM layoffs_staging2
order by 1; 

UPDATE layoffs_staging2
SET industry = 'Crypto'
WHERE industry LIKE 'Crypto%';

SELECT * 
FROM layoffs_staging
WHERE industry LIKE 'Crypto%';

SELECT *
FROM layoffs_staging2;

SELECT distinct location
from layoffs_staging2
order by 1;

select distinct country
from layoffs_staging2
order by 1;

UPDATE layoffs_staging2
set country = TRIM(COUNTRY);

SELECT COUNTRY, TRIM(COUNTRY)
FROM layoffs_staging2;

SELECT `date`
FROM layoffs_staging2; -- CONVERTING TO A STANDARD DATE FORMAT

UPDATE layoffs_staging2
set `date` = str_to_date(`date`, '%m/%d/%Y');

alter table layoffs_staging2
modify column `date` date;

SELECT *
FROM layoffs_staging2
WHERE total_laid_off IS NULL AND percentage_laid_off IS NULL
Order by 1;

SELECT *
FROM layoffs_staging2
WHERE cOMPANY = 'Airbnb';

SELECT *
FROM layoffs_staging2 t1
JOIN layoffs_staging2 t2
	ON t1.company = t2.company
WHERE (t1.industry IS NULL OR t1.industry = '')
AND t2.industry IS NOT NULL;










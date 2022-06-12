--Imported data from Kaggle over fitness analysis

Select * from dbo.['fitness analysisCSVforTableau$']

--Determine the number of males that participated in this survey vs females

Select Count([Your gender]) as gender, [Your gender ]
from dbo.['fitness analysisCSVforTableau$']
group by [Your gender ]

--Determine the number of males vs females who have not purchased fitness equipment
Select Count([Have you ever purchased a fitness equipment?])
from ['fitness analysisCSVforTableau$']
where [Have you ever purchased a fitness equipment?] = 'No' and [Your gender ] = 'Female'

--193 have not purchased

Select Count([Have you ever purchased a fitness equipment?])
from ['fitness analysisCSVforTableau$']
where [Have you ever purchased a fitness equipment?] = 'No' and [Your gender ] = 'Male'

--147 males have not purchased

--Find the names of people between ages 19 to 25 who exercise at least 3 to 4 times a week

Select [Your gender ], [Your age ], [How often do you exercise?], [Your name ]
from ['fitness analysisCSVforTableau$']
where [How often do you exercise?] = '3 to 4 times a week' and [Your age ] = '19 to 25'

--find the people don't think exercise is super important on a scale of 1-5. 5 being most important so 

Select [How important is exercise to you ? ], [Your gender ]
from ['fitness analysisCSVforTableau$']
where [How important is exercise to you ?] <5

--find out what time of day most people exercise

Select count([What time if the day do you prefer to exercise? ]) as 'count', [What time if the day do you prefer to exercise?]
from ['fitness analysisCSVforTableau$']
group by [What time if the day do you prefer to exercise?]

--most people prefer to workout in the morning early

--show the people who actually go to a gym for their exercise

select [Your name ],[What form(s) of exercise do you currently participate in ? ]
from ['fitness analysisCSVforTableau$']
where [What form(s) of exercise do you currently participate in ?      ] like '%Gym'



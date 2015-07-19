--SQL Bridge Week 3 Assignment 
--By: Nabila Hossain

--1. Here is the videos table:

DROP TABLE IF EXISTS nabilavideos;

CREATE TABLE nabilavideos
(
videoID INT PRIMARY KEY NOT NULL,
 Title VARCHAR  NOT NULL,
Length interval minute to second NOT NULL,
Views INT NULL,
Link VARCHAR NOT NULL
);

INSERT INTO nabilavideos 
(videoID, Title, Length, Link, Views) 
VALUES ('1', 'Intermediate Java Tutorial - 32 - Getting the Data from the HTML File', '9:37', 'https://www.youtube.com/watch?v=FMV1eMapiSY', '41041'),
( '2', 'Get web page data into Excel using VBA', '14:46', 'https://www.youtube.com/watch?v=cSoRVZKRkvY', '79868'),
('3', 'C# - C sharp html data collecting', '15:15', 'https://www.youtube.com/watch?v=rru3G7PLVjw', '20355'),
('4', 'How to Read HTML from a URL in Java', '5:23', 'https://www.youtube.com/watch?v=JcZwlpV1rMc', '3717');

SELECT * FROM nabilavideos;


--2. Here is the reviewers table:

DROP TABLE IF EXISTS nabilareviewers;

CREATE TABLE nabilareviewers
(
ReviewerID INT PRIMARY KEY NOT NULL,
Username VARCHAR  NOT NULL,
Rating INT   NULL,
Review VARCHAR NULL,
videoID INT NOT NULL
);

INSERT INTO nabilareviewers (ReviewerID, Username, Review, VideoID) 
VALUES ('1', 'Jonen', 'how does the program read the  HTML?', '1'),
 ('10', 'Fancy',  'There is a easier way you can do this.', '4');
 
INSERT INTO nabilareviewers (ReviewerID, Username, Rating, Review, VideoID)
VALUES('2', 'Frogf', '5', 'This is very good!', '1'),
('3', 'stak8', '1', 'This video is misleading!', '2'),
('4', 'Govern',	'5', 'Thank you for the code!', '2'),
('5', 'Key7',	'4', 'Very nice tutorial.', '3'), 
('6', 'Dark',	'5', 'THANKS FOR THE TUTORIAL!', '3'),
('9', 'Happy',	'3', 'give more details.', '4'),
('7', 'Sofy',	'0',	'STOP WITH THE FEMININE NOISES!', '3');
INSERT INTO nabilareviewers (ReviewerID, Username, Rating, VideoID)
VALUES ('8', 'Day', '5', '4');

SELECT * FROM nabilareviewers;


--3 Here is query to show the reviews for each video:

SELECT
v.title AS "Video Title",
r.Username As "Reviewer Username",
r.rating AS "Reviewer Rating (0 = Worst, 5 = Best)",
r.review AS "Reviewer's Comment",
v.Link AS "Web Link"
FROM nabilavideos v 
Left Join nabilareviewers r
on v.VideoID = r.VideoID
Order by v.videoID;



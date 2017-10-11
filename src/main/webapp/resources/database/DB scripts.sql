-- Users table
CREATE TABLE Corporation
(
Corporation_ID INT NOT NULL AUTO_INCREMENT,
CorporationName VARCHAR(100) NOT NULL,
Scope VARCHAR(100),
ActionAxis VARCHAR(100),
Industry VARCHAR(128), -- SHA-512 password
Address VARCHAR(128), -- Used to generate a stronger SHA-512
Comments VARCHAR(200),
AvailableDate DATE,
HabitatParticipation VARCHAR(100),
PRIMARY KEY (Corporation_ID)
);

-- Categories table
CREATE TABLE Project
(
Project_ID INT NOT NULL AUTO_INCREMENT,
ProjectName VARCHAR(100) NOT NULL,
ProjectCode VARCHAR(25) NOT NULL,
ProjectScope VARCHAR(25) NOT NULL,
PRIMARY KEY (Project_ID)
);

-- UserProfile table
CREATE TABLE Contact
(
Contact_ID INT NOT NULL AUTO_INCREMENT,
Project_ID INT,
Corporation_ID INT,
ContactName VARCHAR(100) NOT NULL,
officePhoneNumber VARCHAR(25),
CorporateEmail VARCHAR(100),
Position VARCHAR(100),
Country VARCHAR(100),
City VARCHAR(100),
State VARCHAR(100),
ZipCode VARCHAR(100),
PRIMARY KEY (Contact_ID),
FOREIGN KEY (Project_ID) REFERENCES Project(Project_ID),
FOREIGN KEY (Corporation_ID) REFERENCES Corporation(Corporation_ID)
);

-- Videos table
CREATE TABLE Resources
(
Resources_ID INT NOT NULL AUTO_INCREMENT,
InformationCapture VARCHAR(500) NOT NULL,
HumanResource VARCHAR(500) NOT NULL,
RelationshipNetwork VARCHAR(500) NOT NULL,
Habilities VARCHAR(500) NOT NULL,
InformationDifusion VARCHAR(500) NOT NULL,
Housing VARCHAR(500) NOT NULL,
Environmental VARCHAR(500) NOT NULL,
Social VARCHAR(500) NOT NULL,
Products VARCHAR(500) NOT NULL,
Others VARCHAR(500) NOT NULL,
PRIMARY KEY (Resources_ID),
FOREIGN KEY (Resources_ID) REFERENCES Corporation(Corporation_ID)
);

-- Videos table
CREATE TABLE Requirement
(
Requirement_ID INT NOT NULL AUTO_INCREMENT,
Project_ID INT,
RequirementQuantity INT NOT NULL,
RequirementType VARCHAR(100) NOT NULL,
UnitaryCost INT NOT NULL,
TotalCost INT NOT NULL,
PRIMARY KEY (Requirement_ID),
FOREIGN KEY (Project_ID) REFERENCES Project(Project_ID)
);






-- Words table
CREATE TABLE Word
(
Word_ID INT NOT NULL AUTO_INCREMENT,
UserProfile_ID INT,
Category_ID INT,
WordName VARCHAR(100) NOT NULL,
Definition VARCHAR(2048) NOT NULL,
Explanation VARCHAR(2048),
Example VARCHAR(2048),
NumberOfVisits INT DEFAULT 0,
PRIMARY KEY (Word_ID),
FOREIGN KEY (UserProfile_ID) REFERENCES UserProfile(UserProfile_ID),
FOREIGN KEY (Category_ID) REFERENCES Category(Category_ID)
);

-- Videos table
CREATE TABLE Video
(
Video_ID INT NOT NULL AUTO_INCREMENT,
TermYoutubeVideoID VARCHAR(100) NOT NULL,
DefinitionYoutubeVideoID VARCHAR(100) NOT NULL,
ExplanationYoutubeVideoID VARCHAR(100) NOT NULL,
ExampleYoutubeVideoID VARCHAR(100) NOT NULL,
PRIMARY KEY (Video_ID),
FOREIGN KEY (Video_ID) REFERENCES Word(Word_ID)
);

-- UserWordsList table
CREATE TABLE UserWordList
(
UserProfile_ID NOT NULL,
Word_ID NOT NULL,
PRIMARY KEY (UserProfile_ID, Word_ID),
FOREIGN KEY (UserProfile_ID) REFERENCES UserProfile(UserProfile_ID),
FOREIGN KEY (Word_ID) REFERENCES Word(Word_ID)
);

-- Ratings table
CREATE TABLE Rating
(
Rating_ID INT NOT NULL AUTO_INCREMENT,
UserProfile_ID INT,
Word_ID INT,
Rating INT NOT NULL,
PRIMARY KEY (Rating_ID),
FOREIGN KEY (UserProfile_ID) REFERENCES UserProfile(UserProfile_ID),
FOREIGN KEY (Word_ID) REFERENCES Word(Word_ID)
);

-- WishList table
CREATE TABLE WishList
(
WishList_ID INT NOT NULL AUTO_INCREMENT,
UserProfile_ID INT,
Word_ID INT,
WordName VARCHAR(100) NOT NULL,
Description VARCHAR(2048) NOT NULL,
PRIMARY KEY (WishList_ID),
FOREIGN KEY (UserProfile_ID) REFERENCES UserProfile(UserProfile_ID),
FOREIGN KEY (Word_ID) REFERENCES Word(ID)
);




-- ********************************************* --





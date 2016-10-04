DELETE FROM [rooms]
DELETE FROM [customers]

INSERT INTO [rooms] ([rid], [level], [beds], [orientation], [price]) VALUES
('101', '1', 1, 'E', 56.30),
('102', '1', 2, 'N', 66.30),
('103', '1', 3, 'W', 76.80),
('104', '1', 2, 'S', 60.80),
('201', '2', 1, 'S', 56.30),
('202', '2', 2, 'E', 66.30),
('203', '2', 3, 'N', 76.80),
('204', '2', 2, 'W', 60.80),
('301', '3', 1, 'W', 56.30),
('302', '3', 2, 'N', 66.30),
('303', '3', 3, 'E', 76.80),
('304', '3', 2, 'S', 60.80),
('G01', 'G', 1, 'N', 56.30),
('G02', 'G', 2, 'E', 66.30),
('G03', 'G', 3, 'S', 76.80),
('G04', 'G', 2, 'W', 60.80);

INSERT INTO [customers] ([username],[gname],[sname],[mobile],[address],[state],[postcode]) VALUES
('username1', 'John', 'Doe', '0426825453', '1/125 Walker St', 'New South Wales','2763'),
('username2', 'Jane', 'Doe', '0429586948', '123 Fake St', 'New South Wales','2000'),
('username3', 'Anna', 'Cole', '0423232323', '23 Alley Way', 'Victoria','3023'),
('username4', 'Paul', 'Brane', '0456789123', '425 Waynes Manor', 'New South Wales','2763'),
('username5', 'Dimitri', 'Dimitri', '0425252525', '123 Test Address', 'Queenslad','4302')
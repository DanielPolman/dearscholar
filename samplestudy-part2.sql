#// Copyright (c) 2020 P.M. Kruyen, Institute for Management Research, Radboud University, the Netherlands. 

#// Sample code to set up a study (part 2 of 2).
#// Run this code after you completed the steps in 'samplestudy-part1.sql'

#// Consult the README file and the MySQL setup file for further explanations. 

# // Run the code below in MySQL

# Populate the surveyStructure table
INSERT INTO `surveyStructure` (`consent`, `manual`) VALUES
('<div class="block-header"><b>Header</b></div> <div class="block"><p>CONTENT</p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</div>','<div class="block-header"><b>Header</b></div> <div class="block"><p>CONTENT</p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere.</div>');

# Populate the moduleStructure table
INSERT INTO `moduleStructure` (`id`, `module0`, `name`, `page`, `mandatory`, `image`, `imageleft`, `imagetop`) VALUES
(1, 'A', 'Eigen ideeën', 'S', '1', 'icons8-innovation-64.png', '25%', '45%'),
(2, 'B', 'Ideeën van anderen', 'S', '1', 'icons8-solve-64.png', '75%', '45%'),
(3, 'C', 'Stemming', 'S', '0', 'icons8-survey-64.png', '50%', '30%'),
(4, 'D', 'Opmerkingen', 'S', '0', 'icons8-branding-64.png', '50%', '80%'),
(5, 'E', 'Eigen ideeën', 'A', '0', 'icons8-innovation-64.png', '25%', '30%'),
(6, 'F', 'Ideeën van anderen', 'A', '0', 'icons8-solve-64.png', '50%', '30%'),
(7, 'G', 'Opmerkingen', 'A', '0', 'icons8-branding-64.png', '75%', '30%');

# Populate the pageStructure table
INSERT INTO `pageStructure` (`id`, `module1`, `classp`, `idp`, `header`, `backbuttontid`, `backbuttontext`, `backbuttononclick`, `backbuttonhref`, `nextbuttonid`, `nextbuttontext`, `nextbuttononclick`, `nextbuttonhref`) VALUES
(1, 'A', '\'tab tab-active\'', 'tab-1as', 'Vraag 1 van 9', 'q1s=nee', 'Nee', 'click', '#tab-7as', 'q1s=ja', 'Ja', 'click', '#tab-2as'),
(3, 'A', 'tab', 'tab-7as', 'Vraag 2 van 3', 'Terug', 'Terug', '\'\'', '#tab-1as', 'Volgende', 'Volgende', '\'\'', '#tab-7bs'),
(4, 'A', 'tab', 'tab-7bs', 'Vraag 3 van 3', 'Terug', 'Terug', '\'\'', '#tab-7as', 'Opslaan', 'Opslaan', 'upload', '#'),
(5, 'A', 'tab', 'tab-2as', 'Vraag 2 van 9', 'Terug', 'Terug', '\'\'', '#tab-1as', 'Volgende', 'Volgende', '\'\'', '#tab-2bs'),
(6, 'A', 'tab', 'tab-2bs', 'Vraag 3 van 9', 'Terug', 'Terug', '\'\'', '#tab-2as', 'Volgende', 'Volgende', '\'\'', '#tab-2cs'),
(7, 'A', 'tab', 'tab-2cs', 'Vraag 4 van 9', 'Terug', 'Terug', '\'\'', '#tab-2bs', 'Volgende', 'Volgende', '\'\'', '#tab-3as'),
(9, 'A', 'tab', 'tab-3as', 'Vraag 5 van 9', 'q3s=nee', 'Nee', 'click', '#tab-4bs', 'q3s=ja', 'Ja', 'click', '#tab-4as'),
(10, 'A', 'tab', 'tab-4as', 'Vraag 6 van 9', 'Terug', 'Terug', '\'\'', '#tab-3as', 'Volgende', 'Volgende', '\'\'', '#tab-8as'),
(11, 'A', 'tab', 'tab-4bs', 'Vraag 6 van 8', 'Terug', 'Terug', '\'\'', '#tab-3as', 'Volgende', 'Volgende', '\'\'', '#tab-5bs'),
(13, 'A', 'tab', 'tab-5as', 'Vraag 8 van 9', 'Terug', 'Terug', '\'\'', '#tab-8as', 'Volgende', 'Volgende', '\'\'', '#tab-6as'),
(14, 'A', 'tab', 'tab-5bs', 'Vraag 7 van 8', 'Terug', 'Terug', '\'\'', '#tab-4bs', 'Volgende', 'Volgende', '\'\'', '#tab-6bs'),
(15, 'A', 'tab', 'tab-6as', 'Vraag 9 van 9', 'Terug', 'Terug', '\'\'', '#tab-5as', 'Opslaan', 'Opslaan', 'upload', '#'),
(16, 'A', 'tab', 'tab-6bs', 'Vraag 8 van 8', 'Terug', 'Terug', '\'\'', '#tab-5bs', 'Opslaan', 'Opslaan', 'upload', '#'),
(17, 'A', 'tab', 'tab-8as', 'Vraag 7 van 9', 'Terug', 'Terug', '\'\'', '#tab-4as', 'Volgende', 'Volgende', '\'\'', '#tab-5as'),
(18, 'B', '\'tab tab-active\'', 'tab-1ao', 'Vraag 1 van 6', 'q1o=nee', 'Nee', 'click', '#tab-7ao', 'q1o=ja', 'Ja', 'click', '#tab-2ao'),
(19, 'B', 'tab', 'tab-2ao', 'Vraag 2 van 6', 'Terug', 'Terug', '\"', '#tab-1ao', 'Volgende', 'Volgende', '\'\'', '#tab-3ao'),
(20, 'B', 'tab', 'tab-3ao', 'Vraag 3 van 6', 'Terug', 'Terug', '\"', '#tab-2ao', 'Volgende', 'Volgende', '\'\'', '#tab-4ao'),
(21, 'B', 'tab', 'tab-4ao', 'Vraag 4 van 6', 'Terug', 'Terug', '\"', '#tab-3ao', 'Volgende', 'Volgende', '\'\'', '#tab-5ao'),
(22, 'B', 'tab', 'tab-5ao', 'Vraag 5 van 6', 'Terug', 'Terug', '\"', '#tab-4ao', 'Volgende', 'Volgende', '\'\'', '#tab-6ao'),
(23, 'B', 'tab', 'tab-6ao', 'Vraag 6 van 6', 'Terug', 'Terug', '\"', '#tab-5ao', 'Opslaan', 'Opslaan', 'upload', '#'),
(24, 'B', 'tab', 'tab-7ao', 'Vraag 2 van 2', 'Terug', 'Terug', '\"', '#tab-1ao', 'Opslaan', 'Opslaan', 'upload', '#'),
(25, 'C', '\'tab tab-active\'', 'tab-1st', '<b>Terugkijkende op de afgelopen week...</b>', 'Terug', 'Terug', '\'\'', '/survey/', 'Opslaan', 'Opslaan', 'upload', '#'),
(26, 'D', '\'tab tab-active\'', 'tab-1rm', '<b>Wilt u ons iets meegeven dat van belang is in het kader van ons onderzoek, dan kunt u dit hier kwijt.</b>', 'Terug', 'Terug', '\"', '/survey/', 'Opslaan', 'Opslaan', 'upload', '#'),
(27, 'E', '\'tab tab-active\'', 'tab-1as', 'Vraag 1 van 9', 'q1s=nee', 'Nee', 'click', '#tab-7as', 'q1s=ja', 'Ja', 'click', '#tab-2as'),
(28, 'E', 'tab', 'tab-7as', 'Vraag 2 van 3', 'Terug', 'Terug', '\'\'', '#tab-1as', 'Volgende', 'Volgende', '\'\'', '#tab-7bs'),
(29, 'E', 'tab', 'tab-7bs', 'Vraag 3 van 3', 'Terug', 'Terug', '\'\'', '#tab-7as', 'Opslaan', 'Opslaan', 'upload', '#'),
(30, 'E', 'tab', 'tab-2as', 'Vraag 2 van 9', 'Terug', 'Terug', '\'\'', '#tab-1as', 'Volgende', 'Volgende', '\'\'', '#tab-2bs'),
(31, 'E', 'tab', 'tab-2bs', 'Vraag 3 van 9', 'Terug', 'Terug', '\'\'', '#tab-2as', 'Volgende', 'Volgende', '\'\'', '#tab-2cs'),
(32, 'E', 'tab', 'tab-2cs', 'Vraag 4 van 9', 'Terug', 'Terug', '\'\'', '#tab-2bs', 'Volgende', 'Volgende', '\'\'', '#tab-3as'),
(33, 'E', 'tab', 'tab-3as', 'Vraag 5 van 9', 'q3s=nee', 'Nee', 'click', '#tab-4bs', 'q3s=ja', 'Ja', 'click', '#tab-4as'),
(34, 'E', 'tab', 'tab-4as', 'Vraag 6 van 9', 'Terug', 'Terug', '\'\'', '#tab-3as', 'Volgende', 'Volgende', '\'\'', '#tab-8as'),
(35, 'E', 'tab', 'tab-4bs', 'Vraag 6 van 8', 'Terug', 'Terug', '\'\'', '#tab-3as', 'Volgende', 'Volgende', '\'\'', '#tab-5bs'),
(36, 'E', 'tab', 'tab-5as', 'Vraag 8 van 9', 'Terug', 'Terug', '\'\'', '#tab-8as', 'Volgende', 'Volgende', '\'\'', '#tab-6as'),
(37, 'E', 'tab', 'tab-5bs', 'Vraag 7 van 8', 'Terug', 'Terug', '\'\'', '#tab-4bs', 'Volgende', 'Volgende', '\'\'', '#tab-6bs'),
(38, 'E', 'tab', 'tab-6as', 'Vraag 9 van 9', 'Terug', 'Terug', '\'\'', '#tab-5as', 'Opslaan', 'Opslaan', 'upload', '#'),
(39, 'E', 'tab', 'tab-6bs', 'Vraag 8 van 8', 'Terug', 'Terug', '\'\'', '#tab-5bs', 'Opslaan', 'Opslaan', 'upload', '#'),
(40, 'E', 'tab', 'tab-8as', 'Vraag 7 van 9', 'Terug', 'Terug', '\'\'', '#tab-4as', 'Volgende', 'Volgende', '\'\'', '#tab-5as'),
(41, 'F', '\'tab tab-active\'', 'tab-1ao', 'Vraag 1 van 6', 'q1o=nee', 'Nee', 'click', '#tab-7ao', 'q1o=ja', 'Ja', 'click', '#tab-2ao'),
(42, 'F', 'tab', 'tab-2ao', 'Vraag 2 van 6', 'Terug', 'Terug', '\"', '#tab-1ao', 'Volgende', 'Volgende', '\'\'', '#tab-3ao'),
(43, 'F', 'tab', 'tab-3ao', 'Vraag 3 van 6', 'Terug', 'Terug', '\"', '#tab-2ao', 'Volgende', 'Volgende', '\'\'', '#tab-4ao'),
(44, 'F', 'tab', 'tab-4ao', 'Vraag 4 van 6', 'Terug', 'Terug', '\"', '#tab-3ao', 'Volgende', 'Volgende', '\'\'', '#tab-5ao'),
(45, 'F', 'tab', 'tab-5ao', 'Vraag 5 van 6', 'Terug', 'Terug', '\"', '#tab-4ao', 'Volgende', 'Volgende', '\'\'', '#tab-6ao'),
(46, 'F', 'tab', 'tab-6ao', 'Vraag 6 van 6', 'Terug', 'Terug', '\"', '#tab-5ao', 'Opslaan', 'Opslaan', 'upload', '#'),
(47, 'F', 'tab', 'tab-7ao', 'Vraag 2 van 2', 'Terug', 'Terug', '\"', '#tab-1ao', 'Opslaan', 'Opslaan', 'upload', '#'),
(48, 'G', '\'tab tab-active\'', 'tab-1rm', '<b>Wilt u ons iets meegeven dat van belang is in het kader van ons onderzoek, dan kunt u dit hier kwijt.</b>', 'Terug', 'Terug', '\"', '/surveyadhoc/', 'Opslaan', 'Opslaan', 'upload', '#');

# Populate the questionTable table
INSERT INTO `questionTable` (`module2`, `tab`, `idq`, `type`, `question`, `categories`, `footer`) VALUES
('A', 'tab-1as', 'q1s', 'YN', 'This is a yes no question with routing', '', 'Footer text'),
('A', 'tab-7as', 'q7sa', 'OQ', 'Sample open question?', '', ''),
('A', 'tab-7bs', 'q7sb', 'OQ', 'Sample open question?', '', ''),
('A', 'tab-2as', 'q2sa', 'OQ', 'Sample open question?', '', ''),
('A', 'tab-2bs', 'q2sb', 'OQ', 'Sample open question?', '', ''),
('A', 'tab-2cs', 'q2sc', 'OQ', 'Sample open question?', '', ''),
('A', 'tab-3as', 'q3s', 'YN', 'This is a yes no question with routing?', '', ''),
('A', 'tab-4as', 'q4sa', 'OQ', 'Sample open question?', '', 'Footer text'),
('A', 'tab-4bs', 'q4sb', 'OQ', 'Sample open question?', '', ''),
('A', 'tab-5as', 'q5sa', 'MC', 'This is a sample rating scale item (multipe choice item)?', '{\"CD\":\"Completely disagree\", \"D\":\"Disagree\", \"NE\":\"Neutral\",\"AG\":\"Agree\",\"CA\":\"Completely agree\"}', ''),
('A', 'tab-5as', 'q5sa2', 'OQ', 'Sample open question?', '', ''),
('A', 'tab-6as', 'q6sa', 'MC', 'Hoe waarschijnlijk acht u het dat het idee ooit wordt gerealiseerd?', '{\"CD\":\"Completely disagree\", \"D\":\"Disagree\", \"NE\":\"Neutral\",\"AG\":\"Agree\",\"CA\":\"Completely agree\"}', ''),
('A', 'tab-6as', 'q6sa2', 'OQ', 'Sample open question?', '', ''),
('A', 'tab-8as', 'q8sa', 'OQ', 'Sample open question?', '', ''),
('A', 'tab-5bs', 'q5sb', 'MC', 'This is a sample rating scale item (multipe choice item)?', '{\"CD\":\"Completely disagree\", \"D\":\"Disagree\", \"NE\":\"Neutral\",\"AG\":\"Agree\",\"CA\":\"Completely agree\"}', ''),
('A', 'tab-5bs', 'q5sb2', 'OQ', 'Sample open question?', '', ''),
('A', 'tab-6bs', 'q6sb', 'MC', 'This is a sample rating scale item (multipe choice item)?', '{\"CD\":\"Completely disagree\", \"D\":\"Disagree\", \"NE\":\"Neutral\",\"AG\":\"Agree\",\"CA\":\"Completely agree\"}', ''),
('A', 'tab-6bs', 'q6sb2', 'OQ', 'Sample open question?', '', ''),
('B', 'tab-1ao', 'q1o', 'YN', 'his is a yes no question with routing', '', 'Footer text'),
('B', 'tab-2ao', 'q2o', 'OQ', 'Sample open question?', '', ''),
('B', 'tab-3ao', 'q3o', 'OQ', 'Sample open question?', '', ''),
('B', 'tab-4ao', 'q4o', 'OQ', 'Sample open question?', '', ''),
('B', 'tab-5ao', 'q5o', 'MC', 'This is a sample rating scale item (multipe choice item)?', '{\"CD\":\"Completely disagree\", \"D\":\"Disagree\", \"NE\":\"Neutral\",\"AG\":\"Agree\",\"CA\":\"Completely agree\"}', ''),
('B', 'tab-5ao', 'q5o2', 'OQ', 'Sample open question?', '', ''),
('B', 'tab-6ao', 'q6o', 'MC', 'This is a sample rating scale item (multipe choice item)?', '{\"CD\":\"Completely disagree\", \"D\":\"Disagree\", \"NE\":\"Neutral\",\"AG\":\"Agree\",\"CA\":\"Completely agree\"}', ''),
('B', 'tab-6ao', 'q6o2', 'OQ', 'Sample open question?', '', ''),
('B', 'tab-7ao', 'q7o', 'OQ', 'Sample open question?', '', ''),
('C', 'tab-1st', 'q1ast', 'SL', 'Sample slider question.', '', ''),
('C', 'tab-1st', 'q1bst', 'SL', 'Sample slider question.', '', ''),
('C', 'tab-1st', 'q1cst', 'SL', 'Sample slider question.', '', ''),
('D', 'tab-1rm', 'q1aR', 'OQ', '', '', 'Footer text (the question here is the header (see pageStructure table).'),
('E', 'tab-1as', 'q1s', 'YN', 'This is a yes no question with routing', '', 'Footer text'),
('E', 'tab-7as', 'q7sa', 'OQ', 'Sample open question?', '', ''),
('E', 'tab-7bs', 'q7sb', 'OQ', 'Sample open question?', '', ''),
('E', 'tab-2as', 'q2sa', 'OQ', 'Sample open question?', '', ''),
('E', 'tab-2bs', 'q2sb', 'OQ', 'Sample open question?', '', ''),
('E', 'tab-2cs', 'q2sc', 'OQ', 'Sample open question?', '', ''),
('E', 'tab-3as', 'q3s', 'YN', 'This is a yes no question with routing?', '', ''),
('E', 'tab-4as', 'q4sa', 'OQ', 'Sample open question?', '', 'Footer text'),
('E', 'tab-4bs', 'q4sb', 'OQ', 'Sample open question?', '', ''),
('E', 'tab-5as', 'q5sa', 'MC', 'This is a sample rating scale item (multipe choice item)?', '{\"CD\":\"Completely disagree\", \"D\":\"Disagree\", \"NE\":\"Neutral\",\"AG\":\"Agree\",\"CA\":\"Completely agree\"}', ''),
('E', 'tab-5as', 'q5sa2', 'OQ', 'Sample open question?', '', ''),
('E', 'tab-6as', 'q6sa', 'MC', 'Hoe waarschijnlijk acht u het dat het idee ooit wordt gerealiseerd?', '{\"CD\":\"Completely disagree\", \"D\":\"Disagree\", \"NE\":\"Neutral\",\"AG\":\"Agree\",\"CA\":\"Completely agree\"}', ''),
('E', 'tab-6as', 'q6sa2', 'OQ', 'Sample open question?', '', ''),
('E', 'tab-8as', 'q8sa', 'OQ', 'Sample open question?', '', ''),
('E', 'tab-5bs', 'q5sb', 'MC', 'This is a sample rating scale item (multipe choice item)?', '{\"CD\":\"Completely disagree\", \"D\":\"Disagree\", \"NE\":\"Neutral\",\"AG\":\"Agree\",\"CA\":\"Completely agree\"}', ''),
('E', 'tab-5bs', 'q5sb2', 'OQ', 'Sample open question?', '', ''),
('E', 'tab-6bs', 'q6sb', 'MC', 'This is a sample rating scale item (multipe choice item)?', '{\"CD\":\"Completely disagree\", \"D\":\"Disagree\", \"NE\":\"Neutral\",\"AG\":\"Agree\",\"CA\":\"Completely agree\"}', ''),
('E', 'tab-6bs', 'q6sb2', 'OQ', 'Sample open question?', '', ''),
('F', 'tab-1ao', 'q1o', 'YN', 'his is a yes no question with routing', '', 'Footer text'),
('F', 'tab-2ao', 'q2o', 'OQ', 'Sample open question?', '', ''),
('F', 'tab-3ao', 'q3o', 'OQ', 'Sample open question?', '', ''),
('F', 'tab-4ao', 'q4o', 'OQ', 'Sample open question?', '', ''),
('F', 'tab-5ao', 'q5o', 'MC', 'This is a sample rating scale item (multipe choice item)?', '{\"CD\":\"Completely disagree\", \"D\":\"Disagree\", \"NE\":\"Neutral\",\"AG\":\"Agree\",\"CA\":\"Completely agree\"}', ''),
('F', 'tab-5ao', 'q5o2', 'OQ', 'Sample open question?', '', ''),
('F', 'tab-6ao', 'q6o', 'MC', 'This is a sample rating scale item (multipe choice item)?', '{\"CD\":\"Completely disagree\", \"D\":\"Disagree\", \"NE\":\"Neutral\",\"AG\":\"Agree\",\"CA\":\"Completely agree\"}', ''),
('F', 'tab-6ao', 'q6o2', 'OQ', 'Sample open question?', '', ''),
('F', 'tab-7ao', 'q7o', 'OQ', 'Sample open question?', '', ''),
('G', 'tab-1rm', 'q1aR', 'OQ', '', '', 'Footer text (the question here is the header (see pageStructure table).');



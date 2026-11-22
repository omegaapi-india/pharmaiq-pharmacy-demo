-- PharmaIQ initial D1 schema and simulated seed data.
-- Shared database: omegaapi-demos. This app's namespace: PharmaIQ.
 CREATE TABLE IF NOT EXISTS config (app TEXT NOT NULL, key TEXT NOT NULL, value TEXT NOT NULL, PRIMARY KEY (app, key));
CREATE TABLE IF NOT EXISTS records (id INTEGER PRIMARY KEY AUTOINCREMENT, app TEXT NOT NULL, position INTEGER NOT NULL, cells TEXT NOT NULL);
CREATE TABLE IF NOT EXISTS activity (id INTEGER PRIMARY KEY AUTOINCREMENT, app TEXT NOT NULL, text TEXT NOT NULL, created_at TEXT NOT NULL DEFAULT (datetime('now')));
CREATE INDEX IF NOT EXISTS idx_records_app ON records(app, position);
CREATE INDEX IF NOT EXISTS idx_activity_app ON activity(app, id);

DELETE FROM activity WHERE app = 'PharmaIQ';
DELETE FROM records WHERE app = 'PharmaIQ';
DELETE FROM config WHERE app = 'PharmaIQ';

INSERT INTO config (app, key, value) VALUES ('PharmaIQ', 'heroStat', '"8 sample lines · 3 low-stock alerts"');
INSERT INTO config (app, key, value) VALUES ('PharmaIQ', 'heroNote', '"Demo snapshot: refill queue is moving steadily."');
INSERT INTO config (app, key, value) VALUES ('PharmaIQ', 'bars', '[["In stock","w90"],["Low stock","w60"],["On order","w75"]]');
INSERT INTO config (app, key, value) VALUES ('PharmaIQ', 'strip', '[["8 sample lines","Fictional inventory only"],["No prescriptions","No health data collected"],["Database-backed","Actions stored in the demo database"],["Free to host","Cloudflare free tier"]]');
INSERT INTO config (app, key, value) VALUES ('PharmaIQ', 'safetyNote', '"No medicine names here refer to real stock, and no prescription or patient record is stored."');
INSERT INTO config (app, key, value) VALUES ('PharmaIQ', 'tableHead', '["Item","Category","Stock band","Reorder at","Status"]');
INSERT INTO config (app, key, value) VALUES ('PharmaIQ', 'rows', '[["Sample tablet A","General","High","20 units","Healthy"],["Sample syrup B","Pediatric","Low","15 units","Reorder"],["Sample capsule C","General","Medium","30 units","Healthy"],["Sample drops D","Eye care","Low","10 units","Reorder"],["Sample balm E","Topical","High","12 units","Healthy"],["Sample powder F","Nutrition","Medium","18 units","Review"]]');
INSERT INTO config (app, key, value) VALUES ('PharmaIQ', 'workflow', '[["Scan a line","Pick a simulated inventory row."],["Check the band","See a simple high, medium, or low indicator."],["Log a refill","The refill note is saved in your browser only."]]');
INSERT INTO config (app, key, value) VALUES ('PharmaIQ', 'actions', '[["Record refill"," recorded a simulated refill."],["Flag low stock"," flagged a low-stock line in the demo."],["Mark received"," marked a sample order as received."],["Audit stock"," ran a demo stock audit."]]');

INSERT INTO records (app, position, cells) VALUES ('PharmaIQ', 1, '["Sample tablet A","General","High","20 units","Healthy"]');
INSERT INTO records (app, position, cells) VALUES ('PharmaIQ', 2, '["Sample syrup B","Pediatric","Low","15 units","Reorder"]');
INSERT INTO records (app, position, cells) VALUES ('PharmaIQ', 3, '["Sample capsule C","General","Medium","30 units","Healthy"]');
INSERT INTO records (app, position, cells) VALUES ('PharmaIQ', 4, '["Sample drops D","Eye care","Low","10 units","Reorder"]');
INSERT INTO records (app, position, cells) VALUES ('PharmaIQ', 5, '["Sample balm E","Topical","High","12 units","Healthy"]');
INSERT INTO records (app, position, cells) VALUES ('PharmaIQ', 6, '["Sample powder F","Nutrition","Medium","18 units","Review"]');

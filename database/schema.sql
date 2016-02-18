
DROP TABLE if exists diary;
CREATE TABLE "diary" (
"id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
"date" date NOT NULL, 
"type_code" varchar(32) NOT NULL,
"title" varchar(64) NOT NULL,
"content" text NOT NULL,
"user_id" integer NULL,
"updated_at" datetime NOT NULL,
"created_at" datetime NOT NULL
);
CREATE INDEX "diary_date_type_code_idx"
ON "diary" ("date" ASC, "type_code" ASC);
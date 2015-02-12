CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE `users` (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name`	string,
	`email`	string UNIQUE,
	`created_at`	datetime,
	`updated_at`	datetime,
	`password_digest`	string,
	`remember_digest`	string,
	`admin`	boolean,
	`activation_digest`	string,
	`activated`	boolean,
	`activated_at`	datetime
);
CREATE TABLE "microposts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "content" text, "user_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_microposts_on_user_id" ON "microposts" ("user_id");
CREATE INDEX "index_microposts_on_user_id_and_created_at" ON "microposts" ("user_id", "created_at");
INSERT INTO schema_migrations (version) VALUES ('20141221234331');

INSERT INTO schema_migrations (version) VALUES ('20141222232300');

INSERT INTO schema_migrations (version) VALUES ('20141222232945');

INSERT INTO schema_migrations (version) VALUES ('20150124214210');

INSERT INTO schema_migrations (version) VALUES ('20150125221812');

INSERT INTO schema_migrations (version) VALUES ('20150128045047');

INSERT INTO schema_migrations (version) VALUES ('20150205191123');

INSERT INTO schema_migrations (version) VALUES ('20150210143051');

INSERT INTO schema_migrations (version) VALUES ('20150210224539');

